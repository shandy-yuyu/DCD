module	Lab1_gatelevel_UDP (F, A, B, C, D);

    output F;
    input A, B, C, D;
    wire w1, w2, w3, w7, w8, tmp;

    not G1(w1, D), G2(w2, B), G3(w3, A);
    Lab1_UDP G4(tmp, A, w1, w2, C);
    and G7(w7, C, D);
    or G8(w8, w3, w7);
    and G9(F, w8, tmp);

endmodule
