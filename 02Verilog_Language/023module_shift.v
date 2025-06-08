module my_dff ( input clk, input d, output q );
    // Module body
endmodule

module top_module ( input clk, input d, output q );
    wire one_to_two, two_to_three;

    my_dff one ( clk, d, one_to_two );
    my_dff two ( clk, one_to_two, two_to_three );
    my_dff three ( clk, two_to_three, q );
endmodule
