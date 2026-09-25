const std = @import("std");

pub fn println(io: std.Io, str: []const u8) !void {
    try std.Io.File.stdout().writeStreamingAll(io, str);
    try std.Io.File.stdout().writeStreamingAll(io, "\n");
}

