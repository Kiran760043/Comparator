//////////////////////////////////////////////////////////////////////////////////
// Design: Comparator
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module comparator(A,B,L,E,G);

    parameter N = 4;
    input  wire [N-1:0] A;
    input  wire [N-1:0] B;
    output reg L;
    output reg E;
    output reg G;

   always @ *
       begin
            if(A < B) begin
                L = 1;
                E = 0;
                G = 0;
            end else if (A == B) begin
                L = 0;
                E = 1;
                G = 0;
            end else begin
                L = 0;
                E = 0;
                G = 1;
            end
       end
endmodule
