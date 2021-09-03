/*
 Guia_0403
 Laura Iara Silva Santos Xavier - 734661
*/
module SoP (output s,input  x, y); // mintermos
//       m   0        1              2      3     4
assign s = (~x&~y&~z) | (~x&~y&z) | (~x&y&~z) | (~x&y&z) |(x&~y&~z);
endmodule // SoP
