module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    // Module body
endmodule

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] one_to_two, two_to_three, three_out;

    my_dff8 one ( clk, d, one_to_two );
    my_dff8 two ( clk, one_to_two, two_to_three );
    my_dff8 three ( clk, two_to_three, three_out );

    always @ (sel, d, one_to_two, two_to_three, three_out) begin
        case (sel)
            2'b00: q <= d;
            2'b01: q <= one_to_two;
            2'b10: q <= two_to_three;
            2'b11: q <= three_out;
        endcase
    end
endmodule
