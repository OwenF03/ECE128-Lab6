# ECE128-Lab6
# Owen Funk and David Riley

## Description

Design and test a multi segment driver for the four seven segment displays on the Basys 3 FPGA. The design was implemented and tested using AMD Vivado 2023.1.

## Instructions to run

Download all of the provided files and create a new project using AMD Vivado 2023.1, and select the Xilinx Artic-7 FPGA (XC7A35T-ICPG236C) as the board. Add the module files (all .v files that don't end in tb) as design sources, the .xdc file as constratint sources, and the .v files that end with tb as simulation sources. The specific sources for each problem are listed below. 

# Which Files Correspond to Each Part
## Problem 1 

Design sources : SRFF.v (SR flip flop), SRLatch.v (SR latch)

Simulation sources : sr_tb.v (SR flip flop testbench), SRLatch_tb.v (SR latch testbench)

## Problem 2 

Design sources : DFF.v (contains both the asynchronous reset module (DFF), and synchronous reset module (DFF_S))

Simulation sources : dff_tb.v

## Problem 3

Design sources : TFF.v (contains TFF module, and counter module)

Simulation sources : TFF_tb.v (tests both TFF based modules)

## Problem 4

Design sources : Clock_Divider.v

Simulation sources : clk_tb.v

## Problem 5

Design Sources : debounce.v

Simulation sources : debounce_tb.v

Constraints : Basys-3-Master.xdc
