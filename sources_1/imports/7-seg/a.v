module a (input in1, input in2, input in3, input in4, output out1);


wire  w1,  w2,  w3, w4, w5,  w6; //store all 6 terms to then OR them
wire w11; //not for output

and and1 ( w1,  ~in2,  ~in4);
and and2 ( w2,  in2,  in3);
and and3 ( w3, ~in1,  in2, in4);
and and4 ( w4, in1,  ~in2, ~in3);
and and5 ( w5,  in1,  ~in4);
and and6 ( w6,  ~in1,  in3);

nor or1 (out1, w1,  w2,  w3, w4, w5,  w6);

//not not1 (out1, w11); 


endmodule

