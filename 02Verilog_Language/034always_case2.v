// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos
);
    always @ (*) begin
        case (in[0])
            1'b1: pos = 2'd0;
            1'b0: case (in[1])
                1'b1: pos = 2'd1;
                1'b0: case (in[2])
                    1'b1: pos = 2'd2;
                    1'b0: case (in[3])
                        1'b1: pos = 2'd3;
                        1'b0: pos = 2'b00;
                    endcase
                endcase
            endcase
        endcase
    end
endmodule
