module    t_Lab2_CLG;

    wire [4:1] C1, C2, C3;
    reg [3:0] P, G;
    reg C0;

    Lab2_CLG_gate M1(C1, P, G, C0);
    Lab2_CLG_dataflow M2(C2, P, G, C0);
    Lab2_CLG_behavior M3(C3, P, G, C0);

    initial begin
    $dumpfile("Lab2_CLG.vcd");
    $dumpvars;
            P = 4'b1101; G = 4'b0101; C0 = 0;
        #50 P = 4'b1100; G = 4'b1000; C0 = 1;
        #50 P = 4'b0101; G = 4'b1101; C0 = 0;
        #50 P = 4'b1000; G = 4'b1100; C0 = 1;
        #50 P = 4'b0101; G = 4'b0101; C0 = 0;
        #50 P = 4'b1011; G = 4'b1011; C0 = 1;
    end 

    initial #300 $finish;
endmodule
