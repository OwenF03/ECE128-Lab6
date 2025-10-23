`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 02:45:05 PM
// Design Name: 
// Module Name: DFF
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


module DFF(
    input D, input R, input clk, output reg Q, output reg Qn
    );
    
    always @(posedge clk or posedge R)
        begin
            if(R) begin
                Q <= 0; Qn <= 1;
            end
            else begin
                Q <= D; Qn <= !D;
            end
        end
endmodule


module DFF_S(
    input D, input R, input clk, output reg Q, output reg Qn
    );
    
    always @(posedge clk)
        begin
            if(R) begin
                Q <= 0; Qn <= 1;
            end
            else begin
                Q <= D; Qn <= !D;
            end
        end
endmodule
