const std = @import("std");
const zuuid = @import("zuuid");
const uuid = @import("uuid");

pub fn main(init: std.process.Init) !void {
    const id = uuid.v4.new(init.io);
    const str = uuid.urn.serialize(id);
    try zuuid.println(init.io, &str);
}

