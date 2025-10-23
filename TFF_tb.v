`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 02:01:07 PM
// Design Name: 
// Module Name: TFF_tb
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


module TFF_tb;
    reg clk, R, T, clk_counter;
    wire Q, Qn;
    wire [2:0] count;
    reg R_counter; 
    
    TFF dut(.clk(clk), .R(R), .T(T), .Q(Q), .Qn(Qn));
    
    TFFCounter dutC(.clk(clk_counter),.R(R_counter),.count(count));
    
    always #1 clk = ~clk;
    always #1 clk_counter = ~clk_counter;
    
    
    initial begin
        //Test TFF
        clk = 0; R = 1; T = 0;
        #2 R = 0; T = 1;
        #2 T = 0;
        #2 T = 1;
        #2 T = 0; R = 1;
        #2 R = 0; T = 1;
        #2 T = 1; R = 1;
       
    end
    
    initial begin
        clk_counter = 0; R_counter = 1; //Counter is at 0, rest;
        #2 R_counter = 0; //Counter is at 0;
        #2 R_counter = 1; //counter is at 1, reset;
        #2 R_counter = 0; //Counter is at 0
        #4 R_counter = 1; //Counter is at 2, reset
        #2 R_counter = 0; //Counter is at 0;
        #6 R_counter = 1; //Counter is at 3, reset
        #2 R_counter = 0; //Counter is at 0;
        #8 R_counter = 1; //Counter is at 4, reset
        #2 R_counter = 0; //Counter is at 0;
        #10 R_counter = 1; //Counter is at 5, reset
        #2 R_counter = 0; //Counter is at 0;
        #12 R_counter = 1; //Counter is at 6, reset
        #2 R_counter = 0; //Counter is at 0;
        #14 R_counter = 1; //Counter is at 7, reset
        #2 R_counter = 0; //Counter is at 0;
        //Let clock run for some time to ensure counter loops
        #32 $finish;
    
    end
   
        
    

endmodule
