`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 02:27:06 PM
// Design Name: 
// Module Name: SRLatch
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


module SRLatch(
    input S, input R, output Q, output Qn
    );
    
    nor N1(Q, R, Qn);
    nor N2(Qn, S, Q);
    
endmodule
