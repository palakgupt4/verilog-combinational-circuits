`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2026 13:52:31
// Design Name: 
// Module Name: full_adder_structural
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_structural(
input a,
input b,
input cin,
output sum,
output carry
    );
    wire s1;
    wire c1;
    wire c2;
  half_adder HA1 (
    .a(a),
   .b(b),
   .sum(s1),
   .carry(c1));
  
  half_adder HA2 (
  .a(s1),
   .b(cin),
   .sum(sum),
   .carry(c2));
   
   assign carry = c1 | c2;
    
endmodule
