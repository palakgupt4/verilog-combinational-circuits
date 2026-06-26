module demux1x2_tb;

reg d;
reg s;

wire y0;
wire y1;

demux1x2 DUT(
    .d(d),
    .s(s),
    .y0(y0),
    .y1(y1)
);

initial begin

    $monitor("Time=%0t D=%b S=%b Y0=%b Y1=%b",
             $time,d,s,y0,y1);

    d = 0; s = 0; #10;
    d = 1; s = 0; #10;
    d = 0; s = 1; #10;
    d = 1; s = 1; #10;

    $finish;

end

endmodule