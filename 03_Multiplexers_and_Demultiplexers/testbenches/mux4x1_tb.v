module mux4x1_tb;

reg i0;
reg i1;
reg i2;
reg i3;
reg s0;
reg s1;

wire y;

mux4x1 DUT(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin

    $monitor("Time=%0t i0=%b i1=%b i2=%b i3=%b s1=%b s0=%b y=%b",
             $time,i0,i1,i2,i3,s1,s0,y);

    // 00 -> i0
    i0=1; i1=0; i2=0; i3=0;
    s1=0; s0=0;
    #10;

    // 01 -> i1
    i0=0; i1=1; i2=0; i3=0;
    s1=0; s0=1;
    #10;

    // 10 -> i2
    i0=0; i1=0; i2=1; i3=0;
    s1=1; s0=0;
    #10;

    // 11 -> i3
    i0=0; i1=0; i2=0; i3=1;
    s1=1; s0=1;
    #10;

    $finish;

end

endmodule