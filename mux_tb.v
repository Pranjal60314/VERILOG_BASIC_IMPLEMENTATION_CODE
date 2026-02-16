`timescale 1ns/1ps
`include "mux.v"

module mux_tb;

reg a,b,c,d,s0,s1,s2;
wire out;
integer i;

mux4 uut(.a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1), .s2(s2), .out(out) );

initial begin
    $dumpfile(`VCD_FILE);
    $dumpvars(0, mux_tb);

    for(i=0; i<128; i=i+1) begin
        {a,b,c,d,s2,s1,s0} = i;
        #10;
    end

    $finish;

end

endmodule