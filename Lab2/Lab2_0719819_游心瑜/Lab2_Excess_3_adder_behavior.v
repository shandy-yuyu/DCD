module Lab2_Excess_3_adder_behavior(Sum, Cout, A, B, Cin);
    output reg [3:0] Sum;
    output reg Cout;
    input [3:0] A, B;
    input Cin;
    reg [4:0] k;

    always @(*)
    begin
        k = A + B + Cin;
        if(k[4] == 0)   begin
            k = k - 3;    end
        if(k[4] != 0) begin
            k = k + 3;    end

        Sum[0] = k[0];
        Sum[1] = k[1];
        Sum[2] = k[2];
        Sum[3] = k[3];
        Cout = k[4];

    end
endmodule
