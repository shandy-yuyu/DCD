module    t_Lab2_Excess_3_adder_behavior;

    reg [3:0] A, B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    Lab2_Excess_3_adder_behavior M1(Sum, Cout, A, B, Cin);

    initial begin
    $dumpfile("Lab2_Excess_3_adder_behavior.vcd");
    $dumpvars;
            A = 4'b0011; B = 4'b0011; Cin = 0;
        #50 A = 4'b0011; B = 4'b0011; Cin = 1;
        #50 A = 4'b1000; B = 4'b0111; Cin = 0;
        #50 A = 4'b1000; B = 4'b0111; Cin = 1;
        #50 A = 4'b1100; B = 4'b1100; Cin = 0;
        #50 A = 4'b1100; B = 4'b1100; Cin = 1;

    end 

    initial #300 $finish;
endmodule
