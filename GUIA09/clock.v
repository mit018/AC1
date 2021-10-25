// ---------------------------
// Exemplo_0901 - test clock generator (1)
// Laura Iara Silva Santos Xavier - 734661
// ---------------------------
module clock ( output clk );
reg clk;
initial
 begin
 clk = 1'b0;
 end
always
 begin
 #12 clk = ~clk;
 end
endmodule // clock ( )
module Exemplo_0901;
wire clk;
clock CLK1 ( clk );
initial begin
 $dumpfile ( "Exemplo_0901.vcd" );
 $dumpvars;
 #120 $finish;
end
endmodule // Exemplo_0901 ( )