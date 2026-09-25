const std = @import("std");

pub fn println(io: std.Io, str: []const u8) !void {
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.Io.File.stdout().writer(io, &stdout_buffer);
    const stdout = &stdout_writer.interface;
    try stdout.print("{s}\n", .{str});
    try stdout.flush();
}

