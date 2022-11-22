module bit4adder(input[3:0] a, input[3:0] b, input c_in, output[3:0] sum, output c_out);
    wire c1, c2, c3;
    full_adder add1(a[0], b[0], c_in, sum[0], c1);
    full_adder add2(a[1], b[1], c1, sum[1], c2);
    full_adder add3(a[2], b[2], c2, sum[2], c3);
    full_adder add4(a[3], b[3], c3, sum[3], c_out);

endmodule