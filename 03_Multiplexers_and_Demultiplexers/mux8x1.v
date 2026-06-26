module mux8x1(
input i0,
input i1,
input i2,
input i3,
input i4,
input i5,
input i6,
input i7,
input s0,
input s1,
input s2,
output y);
assign y = (~s2 & ~s1 & ~s0 & i0) |
           (~s2 & ~s1 &  s0 & i1) |
           (~s2 &  s1 & ~s0 & i2) |
           (~s2 &  s1 &  s0 & i3) |
           ( s2 & ~s1 & ~s0 & i4) |
           ( s2 & ~s1 &  s0 & i5) |
           ( s2 &  s1 & ~s0 & i6) |
           ( s2 &  s1 &  s0 & i7);

endmodule

