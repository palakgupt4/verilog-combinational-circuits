module parity_generator_tb;

reg a,b,c,d;

wire parity;

parity_generator DUT(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .parity(parity)
);

initial begin

    $monitor("A=%b B=%b C=%b D=%b PARITY=%b",
             a,b,c,d,parity);

    a=0; b=0; c=0; d=0; #10;
    a=0; b=0; c=0; d=1; #10;
    a=0; b=0; c=1; d=1; #10;
    a=1; b=1; c=1; d=1; #10;

    $finish;

end

endmodule