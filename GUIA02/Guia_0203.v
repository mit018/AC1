/*
 Guia_0203
 Laura Iara Silva Santos Xavier - 734661
*/
module Guia_0203;
// define data
 real x = 0; // decimal
 reg [7:0] b = 8'b110001_00 ; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0203 - Tests" );
 x = b;
 $display ( "x = %f" , x );
 $display ( "b = 0.%8b", b );
 $display ( "b = 0.%x%x (16)", b[7:4],b[3:0] );
 $display ( "b = 0.%o%o (8) ", b[7:5],b[4:2] ); // missing last group !!!
 end // main
endmodule // Guia_0203