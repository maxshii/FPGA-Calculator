module lab5shifttop(input data, input clk, input en, input reset, output[11:0] command);

    wire zero, one, start;
    
    comb_logic c(data, clk, en, reset, zero, one, start);
    lab5shift s(start, one, zero, clk, reset, command);
    
endmodule

