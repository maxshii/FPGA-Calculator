module lab5top(
input data,
input clk,
input en,
input in1Sel,
input in2Sel,
input resultSel,
output[6:0] led
);

// internal clear regsiter
reg clear;
    
// display value register
reg [3:0] display;
    
// two addtion operands register
reg [3:0] operand1;
reg [3:0] operand2;
    
// connection for the result 
wire [3:0] result;

// remote signal input from lab5 prelab 
wire [11:0] command;
// ?????
lab5shifttop shift1(data, clk, en, reset, command);

// strip the number from class website
wire [3:0] number;
SelectiveEncoder strip(command, clear, number);

// 4 bit adder constructed in lab 5
// ?????
bit4adder add1(operand1, operand2, 1'b0, result);

// display module from lab 3
// ?????
conv disp(display[3], display[2], display[1], display[0], led[0], led[1], led[2], led[3], led[4], led[5], led[6]);
    
// store numbers into display
// also clear module after displayed the result
always @(posedge clk)
begin
    if(in1Sel) begin
        display = operand1;
        clear = 0;
    end
    else if(in2Sel) begin
        display = operand2;
        clear = 0;
    end 
    else if(resultSel) begin
        display = result;
        clear = 1;
    end
end

// store numbers into the corresponding reg
always @(negedge clk)
begin
    if(in1Sel) begin
        operand1 = number;
    end
    else if (in2Sel) begin
        operand2 = number;
    end
end

endmodule
