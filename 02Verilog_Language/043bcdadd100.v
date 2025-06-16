module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum
);
    // Module body
endmodule

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);
    wire [99:0] cins;
    wire [99:0] couts;
    
    assign cins[0] = cin;
    assign cins[99:1] = couts[98:0];
    assign cout = couts[99];

    bcd_fadd adders [99:0] (
        .a(a),
        .b(b),
        .cin(cins),
        .cout(couts),
        .sum(sum)
    );
endmodule
