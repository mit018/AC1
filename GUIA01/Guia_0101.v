/*
 Guia_0101.v
Laura Iara Silva Santos Xavier - 734661
*/
module Guia_0101;
// define data
 integer i = 0, x = 29, y = 57, z = 723, w = 321, k = 365; // decimal
 reg [10:0] b = 0; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0101 - Tests" );
 b = x;
 $display ( "%d = %8b", x, b);
 b = y;
 $display ( "%d = %8b", y, b);
 b = z;
 $display ( "%d = %10b", z, b);
 b = w;
 $display ( "%d = %10b", w, b);
 b = k;
 $display ( "%d = %10b", k, b);
 end // main
endmodule // Guia_0101