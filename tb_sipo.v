`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2023 09:28:36 AM
// Design Name: 
// Module Name: sipo_shift_reg_tb
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

module sipo_shift_reg_tb();
reg clk,rst,in;
wire [3:0] q;

sipo_shift_reg dut(clk,rst,in,q);

initial 
begin
    clk=1'b0;
    rst=1'b1;
    #10
    rst=1'b0;
end  
 always #5 clk = ~clk;
 
 
initial 
begin 
   in =1'b0;
   #15
   in=1'b1;
   #10
   in=1'b0;
   #10
   in=1'b0;
   #10
   in=1'b0;
   #200
   $finish;
end

endmodule
