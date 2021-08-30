module t_Lab3_SR_Latch_gatelevel();

  reg   S, R;
  wire  Q, NQ;
  
  Lab3_SR_Latch_gatelevel m1(Q, NQ, S, R);

  initial
    begin

    $dumpfile("Lab3_SR_Latch_gatelevel.vcd");
    $dumpvars;

          S = 1'b1;  R = 1'b0;
      #10 S = 1'b0;  R = 1'b0;
      #10 S = 1'b0;  R = 1'b1;
      #10 S = 1'b0;  R = 1'b0;
      #10 S = 1'b0;  R = 1'b0;
      #10 S = 1'b1;  R = 1'b1;
      #10 S = 1'b0;  R = 1'b0;

    end

  initial #70 $finish;

endmodule
