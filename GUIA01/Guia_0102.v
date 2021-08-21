/*
 Guia_0102.v
 Laura Iara Silva Santos Xavier - 734661
*/
module Guia_0102;
// define data
 integer x = 0; // decimal
 reg [7:0] b = 8'b0010111; // binary (bits)
// actions
 initial
 begin : main
 $display ( "Guia_0102 - Tests" );
 x = b;
 $display ( "%8b = %d", b, x);
 b = 8'b0011011;
 x = b;
 $display ( "%8b = %d", b, x);
 b = 8'b0101101;
 x = b;
 $display ( "%8b = %d", b, x);
 b = 8'b0101011;
 x = b;
 $display ( "%8b = %d", b, x);
 b = 8'b0100111;
 x = b;
 $display ( "%8b = %d", b, x);

 end // main
endmodule // Guia_0102