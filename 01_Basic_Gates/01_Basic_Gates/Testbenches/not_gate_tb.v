module not_gate_tb;

reg a;
wire y;

not_gate DUT(
    .a(a),
    .y(y)
);

initial begin
    $monitor("A=%b Y=%b",a,y);

    a=0; #10;
    a=0; #10;
    a=1; #10;
    a=1; #10;

    $finish;
end

endmodule