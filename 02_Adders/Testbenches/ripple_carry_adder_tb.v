module ripple_carry_adder_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire carry;

ripple_carry_adder DUT(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

initial begin

    $monitor(
    "Time=%0t A=%b B=%b Cin=%b Sum=%b Carry=%b",
    $time,a,b,cin,sum,carry);

    // 1 + 2 = 3
    a = 4'b0001;
    b = 4'b0010;
    cin = 0;
    #10;

    // 3 + 4 = 7
    a = 4'b0011;
    b = 4'b0100;
    cin = 0;
    #10;

    // 5 + 6 = 11
    a = 4'b0101;
    b = 4'b0110;
    cin = 0;
    #10;

    // 15 + 1 = 16
    a = 4'b1111;
    b = 4'b0001;
    cin = 0;
    #10;

    $finish;

end

endmodule