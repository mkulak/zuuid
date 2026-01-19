const std = @import("std");
const zuuid = @import("zuuid");
const uuid = @import("uuid");

pub fn main() !void {
    const id = uuid.v4.new();
    const str = uuid.urn.serialize(id);
    try zuuid.println(&str);
}

