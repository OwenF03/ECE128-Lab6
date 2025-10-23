`timescale 1ns / 1ps



module debounce_tb();

    reg btn;
    reg clk;
    wire LED; 
    
    //Design under test
    Debounce DUT(.btn(btn), .clk(clk), .led(LED)); 
    
    //Run clock
    always begin
        #1 clk = ~clk;
    end
    
    //Initialize variables
    initial begin 
        btn = 0;
        clk = 1;
    end
    
    //Run test cases
    
    //Case 1 : pressed for 4 cycles, released for 1, pressed for 3 (result should be LED is off), a little bit of noise
    //Case 2 : pressed for 2 cycles, noisy signal for the next several cycles, and then 9 cycles high (result should be LED is on for one cycle after noise is done)
    //Case 3 : signal is a clean press for 17 clock cycles, and then released (result should be LED on for four clock cycles, and then off, TC should go high twice) 
 
    initial begin
        
        #2 btn = 1; //Btn pressed after two cycles 
        #8 btn = 0; // noise in input signal for one cycle
        #2 btn = 1; // input signal goes high again for three cycles
        //End of case 1
        #6 btn = 0; //bring input singal low for 2 cycles b/t cases
        //Case 2
        #4 btn = 1; // input signal is high for two cycles
        //noise 
        #4.5 btn = 0; 
        #0.65 btn = 1;
        #0.1 btn = 0;
        #0.3 btn = 1;
        #0.3 btn = 0;
        #0.2 btn = 1;
        #0.2 btn = 0;
        #0.75 btn = 1;
        #0.95 btn = 0;
        #1.05 btn = 1;//End of noise, clean signal after
        //End of case 2
        #18 btn = 0; //Bring input low
        //Case 3 (clean press for 17 cycles) 
        #2 btn = 1;
        #34 btn = 0;
        #2 $finish; 
    end
    
endmodule
