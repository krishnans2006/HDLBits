module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b)  | (b & cin) | (a & cin);
endmodule

module top_module (
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum
);
    wire [99:0] cins;
    
    assign cins[0] = cin;
    assign cins[99:1] = cout[98:0];

    full_adder adders [99:0] (
        .a(a),
        .b(b),
        .cin(cins),
        .cout(cout),
        .sum(sum)
    );
endmodule
