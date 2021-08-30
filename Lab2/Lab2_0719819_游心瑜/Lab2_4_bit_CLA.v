module Lab2_4_bit_CLA(output [3:0] Sum, output Cout, input [3:0] A, B, input Cin);

    wire [4:1] C;
    wire [3:0] P, G;

    and G1(G[0], A[0], B[0]);
    xor G2(P[0], A[0], B[0]);

    and G3(G[1], A[1], B[1]);
    xor G4(P[1], A[1], B[1]);

    and G5(G[2], A[2], B[2]);
    xor G6(P[2], A[2], B[2]);

    and G7(G[3], A[3], B[3]);
    xor G8(P[3], A[3], B[3]);

    Lab2_CLG_dataflow M2(C, P, G, Cin);

    xor G9(Sum[0], P[0], Cin);
    xor G10(Sum[1], P[1], C[1]);
    xor G11(Sum[2], P[2], C[2]);
    xor G12(Sum[3], P[3], C[3]);

    assign Cout = C[4];
endmodule
