`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 02:28:31 PM
// Design Name: 
// Module Name: clk_tb
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


module clk_tb;
    reg clock_in;
    wire clock_out;
    Clock_Divider uut (.clock_in(clock_in), 
    .clock_out(clock_out));
    initial begin
 
        clock_in = 0;
 
        forever #10 clock_in = ~clock_in;
        
        #200 $finish;
    end
    
    
 

endmodule
