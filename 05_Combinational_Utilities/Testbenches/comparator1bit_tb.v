module comparator1bit_tb;

reg a,b;

wire greater;
wire equal;
wire less;

comparator1bit DUT(
    .a(a),
    .b(b),
    .greater(greater),
    .equal(equal),
    .less(less)
);

initial begin

    $monitor("A=%b B=%b G=%b E=%b L=%b",
             a,b,greater,equal,less);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;

end

endmodule