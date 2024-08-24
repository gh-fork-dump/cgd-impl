const std = @import("std");
const options = @import("options");
const gcd = if (options.impl == .std)
    std.math.gcd
else if (options.impl == .stein)
    gcdStein;

pub fn main() void {
    std.debug.print("gcd impl = {}\n", .{options.impl});
    // init with a runtime known seed
    var rand = std.Random.Xoroshiro128.init(std.os.argv.len);
    const random = rand.random();
    var res: usize = 0;
    for (0..10_000_000) |_| {
        const a = random.int(usize);
        const b = random.int(usize);
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
