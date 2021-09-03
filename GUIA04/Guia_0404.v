/*
 Guia_0404
 Laura Iara Silva Santos Xavier - 734661
*/
module PoS (output S, input  X, Y);        // MAXTERMOS
//         M 5     6 7
assign S = (~X| Y|~Z)  & (~X|~Y| Z) & (~X|~Y|~Z);
endmodule // PoS