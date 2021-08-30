module Lab3_BCD_to_Excess3_state_diagram(output reg z, input x, clock, reset);

    reg [2:0] state, next_state;
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011,
              S4 = 3'b100, S5 = 3'b101, S6 = 3'b110;

    always @(posedge clock, negedge reset)
    if (reset == 0)
        state <= S0;
    else
        state <= next_state;

    always @(state, x)
        case(state)
            S0:
                if(x) next_state <= S2;
                else  next_state <= S1;
            S1:
                if(x) next_state <= S4;
                else  next_state <= S3;
            S2: next_state <= S4;
            S3: next_state <= S5;
            S4:
                if(x) next_state <= S6;
                else  next_state <= S5;
            S5: next_state <= S0;
            S6: next_state <= S0;
        endcase

    always @(state, x)
        case(state)
            S0: z <= ~x;
            S1: z <= ~x;
            S2: z <= x;
            S3: z <= x;
            S4: z <= ~x;
            S5: z <= x;
            S6: z <= 1;
        endcase

endmodule
