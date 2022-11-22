`timescale 1ns/1ps

module prelab5sim();

    reg data, clk, en, reset;
    wire[11:0] command;
    
    lab5shifttop s1(data, clk, en, reset, command);
    
    always #5 clk = ~clk;
    
    initial begin
    
    data = 1; clk = 0; en = 0; reset = 1;
    #10 reset = 0; en = 1; 
    #20 data = 0;
    #100 data = 1;
    #10 data = 0;
    #50 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #50 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #50 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    #30 data = 1;
    #10 data = 0;
    
    end
endmodule
    
    
    