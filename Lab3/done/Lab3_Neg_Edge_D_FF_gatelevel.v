module Lab3_Neg_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);
 
  wire Q1, NQ1, Q2, NQ2, S2;
  or m0(S2, clock, NQ1);

  Lab3_SR_Latch_gatelevel m1(Q1, NQ1, clock, NQ2);
  Lab3_SR_Latch_gatelevel m2(Q2, NQ2, D, S2);
  Lab3_SR_Latch_gatelevel m3(Q, NQ, Q2, NQ1);

endmodule
