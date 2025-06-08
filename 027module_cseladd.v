module add16 ( input [15:0] a, input [15:0] b, input cin, output [15:0] sum, output cout );
    // Module body
endmodule

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire carry_sel;
    wire [15:0] sum_2a, sum_2b;

    add16 adder1 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(carry_sel)
    );
    add16 adder2a (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum_2a),
        .cout()
    );
    add16 adder2b (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum_2b),
        .cout()
    );

    always @ (carry_sel, sum_2a, sum_2b) begin
        case (carry_sel)
            1'b0: sum[31:16] <= sum_2a;
            1'b1: sum[31:16] <= sum_2b;
        endcase
    end
endmodule
