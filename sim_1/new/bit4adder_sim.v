`timescale 1ns/1ps

module bit4addsim();
    
    reg[3:0] num1;
    reg[3:0] num2;
    wire[3:0] sum;
    
    bit4adder add(num1, num2, 1'b0, sum);
    
    initial
    begin
    num1 = 4'b0000; num2 = 4'b0000;
    #10 num1 = 4'b1111; num2 = 4'b1111;
    #10 num1 = 4'b1001; num2 = 4'b0110;
    #10 num1 = 4'b0001; num2 = 4'b1111;
    #10 num1 = 4'b0001; num2 = 4'b0001;
    #10 num1 = 4'b0101; num2 = 4'b1100;
    
    end
endmodule