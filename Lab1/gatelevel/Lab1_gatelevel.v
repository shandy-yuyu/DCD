module	Lab1_gatelevel(F, A, B, C, D);

    output F;
    input A, B, C, D;
    wire w1, w2, w3, w4, w5, w6, w7, w8;

    not G1(w1, D), G2(w2, B), G3(w3, A);
    and G4(w4, A, w1), G5(w5, w2, C);
    or G6(w6, w4, w5);
    and G7(w7, C, D);
    or G8(w8, w3, w7);
    and G9(F, w8, w6);

endmodule

