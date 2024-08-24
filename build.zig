const std = @import("std");
const Target = std.Target;
const arm = Target.arm;
const x86 = Target.x86;
const aarch64 = Target.aarch64;
const mips = Target.mips;
const powerpc = Target.powerpc;
const riscv = Target.riscv;

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "math-test",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
        .strip = b.option(bool, "strip", "strip the binary"),
    });

    b.installArtifact(exe);

    const release = b.step("release", "make an upstream binary release");
    // Builds for targets great and small
    const release_targets = [_]std.Target.Query{
        // AMD Ryzen 5800X3D Desktop
        .{
            .cpu_arch = .x86_64,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &x86.cpu.znver3 },
        },
        // M1 Fedora VM
        .{
            .cpu_arch = .aarch64,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &aarch64.cpu.apple_a14 },
        },
        // cfarm120 - IBM POWER10 9043-MRX (E1050)
        .{
            .cpu_arch = .powerpc64le,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &powerpc.cpu.pwr9 },
        },

        // Raspberry Pi Zero W -
        .{
            .cpu_arch = .arm,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &arm.cpu.arm1176jzf_s },
        },
        // D-Link DIR-100 A3 - MediaTek MT7621
        .{
            .cpu_arch = .mipsel,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &mips.cpu.mips32r2 },
        },
        // EdgeRouter 4 - UBNT_E300 (CN7030p1.2-1000-AAP)
        .{
            .cpu_arch = .mips64,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &mips.cpu.mips64r2 },
        },
        // cfarm9(2|3|4) - Riscv64GC
        .{
            .cpu_arch = .riscv64,
            .os_tag = .linux,
            .abi = .musl,
            .cpu_model = .{ .explicit = &riscv.cpu.sifive_u74 },
        },
        // cfarm(400|401) - Loongson 3C5000L. Doesn't compile.
        // .{
        //     .cpu_arch = .loongarch64,
        //     .os_tag = .linux,
        //     .abi = .musl,
        // },
    };

    const Impl = enum { std, stein };

    for ([_]Impl{ .std, .stein }) |impl| {
        const opts = b.addOptions();
        opts.addOption(Impl, "impl", impl);

        for (release_targets) |target_query| {
            const resolved_target = b.resolveTargetQuery(target_query);
            const t = resolved_target.result;
            const rel_exe = b.addExecutable(.{
                .name = "math-test",
                .root_source_file = b.path("src/main.zig"),
                .target = resolved_target,
                .optimize = .ReleaseFast,
                .strip = true,
            });
            rel_exe.root_module.addOptions("options", opts);

            const install = b.addInstallArtifact(rel_exe, .{});
            install.dest_dir = .prefix;
            install.dest_sub_path = b.fmt("{s}_{s}-{s}-{s}-{s}", .{
                @tagName(t.cpu.arch),
                t.cpu.model.name,
                @tagName(t.os.tag),
                rel_exe.name,
                @tagName(impl),
            });

            release.dependOn(&install.step);
        }
    }
}
