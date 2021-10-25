// ---------------------------
// Exemplo_0904 - test clock generator (4)
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
 #6 clk = ~clk; // metade do periodo do Exemplo_0901
 end
endmodule
module pulse ( signal, clock );
input clock;
output signal;
reg signal;
always @ ( clock )
 begin
 signal = 1'b1;
 #3 signal = 1'b0;
 #3 signal = 1'b1;
 #3 signal = 1'b0;
 end
endmodule // pulse
module Exemplo_0904;
wire clock;
clock clk ( clock );
reg p;
wire p1;
pulse pulse1 ( p1, clock );
initial begin
 p = 1'b0;
end
initial begin
 $dumpfile ( "Exemplo0904.vcd" );
 $dumpvars ( 1, clock, p1, p );
 #060 p = 1'b1;
 #120 p = 1'b0;
 #180 p = 1'b1;
 #240 p = 1'b0;
 #300 p = 1'b1;
 #360 p = 1'b0;
 #376 $finish;
end
endmodule // Exemplo_0902