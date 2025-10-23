`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 03:01:10 PM
// Design Name: 
// Module Name: TFF
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


module TFFCounter(input clk, input R, output [2:0] count); 
    wire bit2Toggle;
    wire Qn;
    and a0(bit2Toggle, count[0], count[1]);
    
    TFF T0(clk, R, 1, count[0], Qn);
    TFF T1(clk, R, count[0], count[1], Qn);
    TFF T2(clk, R, bit2Toggle, count[2], Qn);
    
endmodule


module TFF(
    input clk, input R, input T, output reg Q, output reg Qn
    );
    
    always @(posedge clk) begin
        if(R) begin
            Q <= 0; Qn <= 1;
        end
        else begin
            if(T) begin
                Q <= !Q; Qn <= !Qn; 
            end
        end
    end
endmodule
