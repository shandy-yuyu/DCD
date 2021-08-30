module t_Lab3_Neg_Edge_D_FF_gatelevel;
  
  reg   D, clock;
  wire  Q, NQ;
  
  Lab3_Neg_Edge_D_FF_gatelevel M1(Q, NQ, D, clock);

  initial
    begin

    $dumpfile("Lab3_Neg_Edge_D_FF_gatelevel.vcd");
    $dumpvars;

        #0  D = 1'b0;
            clock = 1'b1;
        #10 clock = 1'b0;   //10 C
        #5  D = 1'b1;       //15
        #5  clock = 1'b1;   //20 C
        #10 clock = 1'b0;   //30 C
        #5  D = 1'b0;       //35
        #5  clock = 1'b1;   //40 C
        #10 clock = 1'b0;   //50 C
        #10 clock = 1'b1;   //60 C
        #5  D = 1'b1;       //65
        #5  clock = 1'b0;   //70 C 
        #10 clock = 1'b1;   //80 C 
        #8  D = 1'b0;       //88 
        #2  clock = 1'b0;   //90 C
        #10 clock = 1'b1;   //100 C
        #10 clock = 1'b0;   //110 C
        #10 clock = 1'b1;   //120 C
        #5  D = 1'b1;       //125
        #5  clock = 1'b0;   //130 C
            D = 1'b0;
        #10 clock = 1'b1;   //140 C
        #10 clock = 1'b0;   //150 C
        #10 clock = 1'b1;   //160 C
        #10 clock = 1'b0;   //170 C
        #10 clock = 1'b1;   //180 C
    end

  initial #180 $finish;

endmodule
