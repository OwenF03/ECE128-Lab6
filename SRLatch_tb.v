`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2025 01:26:09 PM
// Design Name: 
// Module Name: SRLatch_tb
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


module SRLatch_tb;

    reg r, s;
    wire Q, Qn;
    
    SRLatch DUT(.S(s), .R(r), .Q(Q), .Qn(Qn));
    
    initial begin
        r = 0; s = 0;
        #2 s = 1;
        #2 s = 0;
        #2 r = 1;
        #2 r = 0; s = 1;
        #2 s = 0; r = 1;
        #2 r = 0;
        #2 r = 1; s = 1;
        #4 $finish;
   end

endmodule
