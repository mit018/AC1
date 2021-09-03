/*
 Guia_0402
 Laura Iara Silva Santos Xavier - 734661
*/
module fxyz(output s1,output s2, input  x, y,z);
assign s1= (~x | ~y) &(~x | ~z);
assign s2= ~x | (~y&~z);
endmodule // fxyz