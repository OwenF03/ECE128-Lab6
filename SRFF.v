`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 02:34:49 PM
// Design Name: 
// Module Name: SRFF
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


module SRFF(
    input S, input R, input clk, output reg Q, output reg Qn
    );
    
    always @ (posedge clk)
        begin
           if(S) begin
               Q <= 1;
               Qn <= 0;
           end
           if(R) begin
               Q <= 0;
               Qn <= 1;
           end
        end
    
endmodule
