module D_ff_AR(output reg Q, input D, clock, reset);

  always@(posedge clock or negedge reset) 
    begin

        if(!reset) begin
            Q <= 0;
        end
        else begin
            Q <= D;
        end
    end

endmodule
