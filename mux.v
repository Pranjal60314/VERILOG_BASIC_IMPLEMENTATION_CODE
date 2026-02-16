module mux2(
    input a,b,s,
    output out
);
    assign out = s ? a : b;

endmodule

module mux4(
    input a,b,c,d,s0,s1,
    output out
);
    wire out1,out2;

    mux2 HA1 ( .a(a), .b(b), .s(s0), .out(out1));
    mux2 HA2 ( .a(c), .b(d), .s(s0), .out(out2));
    mux2 HA3 ( .a(out1), .b(out2), .s(s1), .out(out));


endmodule