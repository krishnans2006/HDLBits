module top_module (
    input x,
    input y,
    output z
);
    wire a, b;

    assign a = (x ^ y) & x;
    assign b = (x == y);

    assign z = (a | b) ^ (a & b);
endmodule
