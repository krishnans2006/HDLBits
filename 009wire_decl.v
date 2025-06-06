`default_nettype none
module top_module ( input a,b,c,d, output out,out_n );
    wire ab, cd;

    assign ab = a & b;
    assign cd = c & d;
    assign out = ab | cd;
    assign out_n = ~out;
endmodule
