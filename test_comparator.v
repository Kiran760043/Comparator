//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Comparator
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_comparator();
    parameter N = 4;
// inputs to the DUT
    reg [N-1:0] A = 4'b0000;
    reg [N-1:0] B = 4'b0000;
// outputs from the DUT
    wire L,E,G;


comparator DUT (.A(A), .B(B), .L(L), .E(E), .G(G));

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "A = %b, B = %b, L = %b, E = %b, G = %b", A, B, L, E, G);
    end

initial
    begin
        for(integer i=0; i <= 16; i=i+1) begin
            #2;
            A = A + 1;
            B = B - 1;
        end
        $finish;
    end
endmodule
