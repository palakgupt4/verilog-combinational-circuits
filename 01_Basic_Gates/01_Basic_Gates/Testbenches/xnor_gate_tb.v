module xnor_gate_tb;

reg a;
reg b;
wire y;

xnor_gate DUT(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $monitor("A=%b B=%b Y=%b",a,b,y);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
end

endmodule