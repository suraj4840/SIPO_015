`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2023 10:13:37 PM
// Design Name: 
// Module Name: sipo_shift_reg
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


module sipo_shift_reg(clk,rst,in,q);
input clk,rst,in;
output [3:0] q;

D_ff d1(clk,rst,in,q[0]);
D_ff d2(clk,rst,q[0],q[1]);
D_ff d3(clk,rst,q[1],q[2]);
D_ff d4(clk,rst,q[2],q[3]);

endmodule


