module Lab3_BCD_to_Excess3_structure(output z, input x, clock, reset);

    wire A, B, C, NA, NB, NC;

    assign  NA = (B & (~A)) | (A & (~B) & (~C)) | ((~A) & C & x);
    assign  NB = ((~B) & (~C) & x) | ((~A) & (~B) & C & (~x));
    assign  NC = (B & C) | ((~A) & C & (~x)) | ((~B) & (~C) & (~x));
    assign  z  = (A & (~C) & (~x)) | ((~A) & (~B) & (~x)) | (A & C & x) | (B & x);

        D_ff_AR m1(A, NA, clock, reset);
        D_ff_AR m2(B, NB, clock, reset);
        D_ff_AR m3(C, NC, clock, reset);

    endmodule
