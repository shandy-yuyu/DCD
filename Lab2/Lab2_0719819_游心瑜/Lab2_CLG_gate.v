module Lab2_CLG_gate(C, P, G, C0);

    output [4:1] C;
    input [3:0] P, G;
    input C0;

    wire a, b, c, d, e, f, g, h, i, j;

    and G1(a, P[0], C0);
    or G2(C[1], G[0], a);

    and G3(b, C0, P[0], P[1]);
    and G4(c, G[0], P[1]);
    or G5(C[2], b, c, G[1]);
    
    and G6(d, C0, P[0], P[1], P[2]);
    and G7(e, G[0], P[1], P[2]);
    and G8(f, G[1], P[2]);
    or G9(C[3], d, e, f, G[2]);

    and G10(g, C0, P[0], P[1], P[2], P[3]);
    and G11(h, G[0], P[1], P[2], P[3]);
    and G12(i, G[1], P[2], P[3]);
    and G13(j, G[2], P[3]);
    or G14(C[4], g, h, i, j, G[3]);

endmodule
