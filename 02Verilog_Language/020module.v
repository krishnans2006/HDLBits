module mod_a ( input in1,in2, output out );
    // Module body
endmodule

module top_module ( input a, input b, output out );
    mod_a mod (
        .in1(a),
        .in2(b),
        .out(out)
    );
endmodule
