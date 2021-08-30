module t_Lab3_BCD_to_Excess3();
  
    reg   clock, reset, x;
    wire  z1, z2;

    Lab3_BCD_to_Excess3_state_diagram M1(z1, x, clock, reset);
    Lab3_BCD_to_Excess3_structure M2(z2, x, clock, reset);

    initial #500 $finish;
    initial begin
        $dumpfile("Lab3_BCD.vcd");
        $dumpvars;
            reset = 1'b0; //reset start from low
            clock = 1'b1; //clock start from high
            clock = 0;
            forever #5 clock = ~clock;
        end

    /* test bench */
    initial 
        begin
            #7 x = 0; // input = 0000
               reset = 1;
            #10 x = 0;
            #10 x = 0;
            #10 x = 0;

            #10 x = 1; // input = 0001
            #10 x = 0;
            #10 x = 0;
            #10 x = 0;

            #10 x = 0; // input = 0010
            #10 x = 1;
            #10 x = 0;
            #10 x = 0;

            #10 x = 1; // input = 0011
            #10 x = 1;
            #10 x = 0;
            #10 x = 0;

            #10 x = 0; // input = 0100
            #10 x = 0;
            #10 x = 1;
            #10 x = 0;

            #10 x = 1; // input = 0101
            #10 x = 0;
            #10 x = 1;
            #10 x = 0;

            #10 x = 0; // input = 0110
            #10 x = 1;
            #10 x = 1;
            #10 x = 0;

            #10 x = 1; // input = 0111
            #10 x = 1;
            #10 x = 1;
            #10 x = 0;

            #10 x = 0; // input = 1000
            #10 x = 0;
            #10 x = 0;
            #10 x = 1;

            #10 x = 1; // input = 1001
            #10 x = 0;
            #10 x = 0;
            #10 x = 1;

            #10 x = 0; // input = 1010
            #10 x = 1;
            #10 x = 0;
            #10 x = 1;

            end

    endmodule
