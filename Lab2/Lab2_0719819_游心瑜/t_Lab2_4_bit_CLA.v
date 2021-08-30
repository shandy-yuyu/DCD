module    t_Lab2_4_bit_CLA;

    reg [3:0] A, B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    Lab2_4_bit_CLA M1(Sum, Cout, A, B, Cin);

    initial begin
    $dumpfile("Lab2_4_bit_CLA.vcd");
    $dumpvars;
            A = 4'b1101; B = 4'b0101; Cin = 0;
        #50 A = 4'b1100; B = 4'b1000; Cin = 1;
        #50 A = 4'b0101; B = 4'b1101; Cin = 0;
        #50 A = 4'b1000; B = 4'b1100; Cin = 1;
        #50 A = 4'b0101; B = 4'b0101; Cin = 0;
        #50 A = 4'b1011; B = 4'b1011; Cin = 1;
        #50 A = 4'b1111; B = 4'b1111; Cin = 1;
        #50 A = 4'b1111; B = 4'b0000; Cin = 1;

    end 

    initial #400 $finish;
endmodule
