`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 01:47:22 PM
// Design Name: 
// Module Name: dff_tb
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


module dff_tb;

    reg clk, D, R;
    
    wire Q, Qn;
    wire Q_s, Qn_s;
    
    DFF DUT(.clk(clk), .D(D), .R(R), .Q(Q), .Qn(Qn));
    DFF_S DUT_S(.clk(clk), .D(D), .R(R), .Q(Q_s), .Qn(Qn_s));
    
    initial begin 
        clk = 0; D = 0; R = 0;
    end
    
    always #1 clk = !clk;
    
    initial begin
        D = 0; R = 0;
        #2 D = 1;
        #2 D = 0;
        #2 D = 1;
        #2 R = 1;
        #2 R = 0; D = 1;
        #2 R = 1;
        #2 R = 0;
        #2 D = 1;
        #1 R = 1;
        #1 R = 0;
        #4 $finish;
        
    end
    
endmodule
