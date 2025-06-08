module mod_a ( output out1, output out2, input in1, input in2, input in3, input in4 );
    // Module body
endmodule

module top_module (
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a mod (
        .in1(a),
        .in2(b),
        .in3(c),
        .in4(d),
        .out1(out1),
        .out2(out2)
    );
endmodule
