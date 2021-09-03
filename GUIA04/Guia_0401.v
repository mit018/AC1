/*
 Guia_0401
 Laura Iara Silva Santos Xavier - 734661
*/
module fxyz(output s,input  x, y,z);
assign s = ~x | (~y& ~z);
endmodule // fxyz