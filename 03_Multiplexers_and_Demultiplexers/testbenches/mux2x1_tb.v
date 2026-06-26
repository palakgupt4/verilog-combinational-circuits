module mux2x1_tb;

reg i0;
reg i1;
reg s;

wire y;

mux2x1 DUT(
    .i0(i0),
    .i1(i1),
    .s(s),
    .y(y)
);

initial begin

    $monitor("Time=%0t i0=%b i1=%b s=%b y=%b",
              $time,i0,i1,s,y);

    i0=0; i1=1; s=0; #10;
    i0=0; i1=1; s=1; #10;

    i0=1; i1=0; s=0; #10;
    i0=1; i1=0; s=1; #10;

    $finish;

end

endmodule