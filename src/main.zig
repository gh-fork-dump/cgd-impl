const std = @import("std");
const options = @import("options");
const gcd = switch (options.impl) {
    .std => std.math.gcd,
    .stein => gcdStein,
    .lemire => gcdLemire,
    .Fri3dNstuff => gcdFri3dNstuff,
};

const Int = if (@bitSizeOf(usize) == 32) u32 else u64;
const IntMin = std.meta.Int(.unsigned, options.int_size - 1);

pub fn main() void {
    std.debug.print("gcd impl = {}\n", .{options.impl});
    // init with a runtime known seed
    var rand = std.Random.Xoroshiro128.init(std.os.argv.len);
    const random = rand.random();

    var res: Int = 0;
    for (0..10_000_000) |_| {
        const a: Int = random.int(IntMin);
        const b: Int = random.int(IntMin);
        res +%= @truncate(gcd(a, b));
    }
    std.debug.print("{}\n", .{res});
}

/// Returns the greatest common divisor (GCD) of two unsigned integers (`a` and `b`) which are not both zero.
/// For example, the GCD of `8` and `12` is `4`, that is, `gcd(8, 12) == 4`.
pub fn gcdStein(a: anytype, b: anytype) @TypeOf(a, b) {
    const N = switch (@TypeOf(a, b)) {
        // convert comptime_int to some sized int so we can @ctz on it.
        // type coercion takes care of the conversion back to comptime_int
        // at function's return
        comptime_int => std.math.IntFittingRange(@min(a, b), @max(a, b)),
        else => |T| T,
    };
    // integers are unsigned, at least one is nonzero
    comptime std.debug.assert(@typeInfo(N).Int.signedness == .unsigned);
    std.debug.assert(a != 0 or b != 0);

    // using Stein's algorithm (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
    if (a == 0) return b;
    if (b == 0) return a;

    var x: N = a;
    var y: N = b;

    const i = @ctz(x);
    const j = @ctz(y);
    // x, y are nonzero, @intCast(@ctz(self)) does not overflow
    x >>= @intCast(i);
    y >>= @intCast(j);

    // invariants: x, y are odd
    while (true) {
        // ensure x ≥ y
        if (y > x) std.mem.swap(N, &x, &y);

        // odd - odd is even
        x -= y;

        // gcd(0, y) == y, remultiply by the common power of 2
        if (x == 0) return y << @intCast(@min(i, j));

        // x is nonzero, @intCast(@ctz(self)) does not overflow
        // x is even, its value decreases
        x >>= @intCast(@ctz(x));
    }
}

/// Returns the greatest common divisor (GCD) of two unsigned integers (`a` and `b`) which are not both zero.
/// For example, the GCD of `8` and `12` is `4`, that is, `gcd(8, 12) == 4`.
pub fn gcdLemire(a: anytype, b: anytype) @TypeOf(a, b) {
    const N = switch (@TypeOf(a, b)) {
        // convert comptime_int to some sized int so we can @ctz on it.
        // type coercion takes care of the conversion back to comptime_int
        // at function's return
        comptime_int => std.math.IntFittingRange(@min(a, b), @max(a, b)),
        else => |T| T,
    };
    // integers are unsigned, at least one is nonzero
    comptime std.debug.assert(@typeInfo(N).Int.signedness == .unsigned);
    std.debug.assert(a != 0 or b != 0);

    var x: N = a;
    var y: N = b;
    if (x < y) std.mem.swap(N, &x, &y);
    if (y == 0) return x;
    x %= y;
    if (x == 0) return y;

    const i = @ctz(x);
    const j = @ctz(y);
    const shift = @min(i, j);
    x >>= @intCast(i);
    y >>= @intCast(j);

    while (true) {
        // underflow is legal
        const diff = x -% y;
        if (x > y) {
            x = y;
            y = diff;
        } else {
            y -= x;
        }

        // shift must be with value < bit size
        if (diff != 0) y >>= @intCast(@ctz(diff));

        if (y == 0) return x << @intCast(shift);
    }
}

pub fn gcdFri3dNstuff(a: anytype, b: anytype) @TypeOf(a, b) {
    const N = switch (@TypeOf(a, b)) {
        // convert comptime_int to some sized int so we can @ctz on it.
        // type coercion takes care of the conversion back to comptime_int
        // at function's return
        comptime_int => std.math.IntFittingRange(@min(a, b), @max(a, b)),
        else => |T| T,
    };
    // integers are unsigned, at least one is nonzero
    comptime std.debug.assert(@typeInfo(N).Int.signedness == .unsigned);
    std.debug.assert(a != 0 or b != 0);

    var x: N = a;
    var y: N = b;

    if (x == 0) return y;
    if (y == 0) return x;

    const xz = @ctz(x);
    const yz = @ctz(y);
    const shift = @min(xz, yz);
    x >>= @intCast(xz);
    y >>= @intCast(yz);
    var diff = y -% x;

    while (diff != 0) : (diff = y -% x) {
        const zeros = @ctz(diff);
        if (x > y) diff = -%diff;
        y = @min(x, y);
        x = diff >> @intCast(zeros);
    }
    return y << @intCast(shift);
}
