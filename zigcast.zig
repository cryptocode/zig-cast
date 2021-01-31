const expectEqual = @import("std").testing.expectEqual;

pub fn I8(comptime val: comptime_int) i8 {
    return @as(i8, val);
}

pub fn I16(comptime val: comptime_int) i16 {
    return @as(i16, val);
}

pub fn I32(comptime val: comptime_int) i32 {
    return @as(i32, val);
}

pub fn I64(comptime val: comptime_int) i64 {
    return @as(i64, val);
}

pub fn I128(comptime val: comptime_int) i128 {
    return @as(i128, val);
}

pub fn U8(comptime val: comptime_int) u8 {
    return @as(u8, val);
}

pub fn U16(comptime val: comptime_int) u16 {
    return @as(u16, val);
}

pub fn U32(comptime val: comptime_int) u32 {
    return @as(u32, val);
}

pub fn U64(comptime val: comptime_int) u64 {
    return @as(u64, val);
}

pub fn U128(comptime val: comptime_int) u128 {
    return @as(u128, val);
}

pub fn F16(comptime val: comptime_float) f16 {
    return @as(f16, val);
}

pub fn F32(comptime val: comptime_float) f32 {
    return @as(f32, val);
}

pub fn F64(comptime val: comptime_float) f64 {
    return @as(f64, val);
}

test "Conversion" {
    expectEqual(@as(i8, -128), I8(-128));
    expectEqual(@as(i8, 127), I8(127));
    expectEqual(@as(i16, -32768), I16(-32768));
    expectEqual(@as(i16, 32767), I16(32767));
    expectEqual(@as(i32, -2147483648), I32(-2147483648));
    expectEqual(@as(i32, 2147483647), I32(2147483647));
    expectEqual(@as(i64, -9223372036854775808), I64(-9223372036854775808));
    expectEqual(@as(i64, 9223372036854775807), I64(9223372036854775807));

    expectEqual(@as(u8, 255), U8(255));
    expectEqual(@as(u16, 65535), U16(65535));
    expectEqual(@as(u32, 4294967295), U32(4294967295));
    expectEqual(@as(u64, 18446744073709551615), U64(18446744073709551615));

    expectEqual(@as(f16, 1.), F16(1.));
    expectEqual(@as(f32, 1.), F32(1.));
    expectEqual(@as(f64, 1.), F64(1.));
}
