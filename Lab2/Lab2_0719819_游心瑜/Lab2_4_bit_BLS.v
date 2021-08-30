module Lab2_4_bit_BLS(Diff, Bout, X, Y, Bin);

    output [3:0] Diff;
    output Bout;
    input [3:0] X, Y;
    input Bin;

    wire [3:0] P, G;
    wire [4:1] B;

    assign P = ~(X^Y);
    assign G = (~X) & Y;
    Lab2_CLG_dataflow M2(B, P, G, Bin);

    assign Diff[0] = ~P[0] ^ Bin;
    assign Diff[1] = ~P[1] ^ B[1];
    assign Diff[2] = ~P[2] ^ B[2];
    assign Diff[3] = ~P[3] ^ B[3];
    assign Bout = B[4];

endmodule
