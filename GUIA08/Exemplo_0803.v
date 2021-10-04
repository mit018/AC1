// -------------------------
// Exemplo_0803 - FULL ADDER
// Laura Iara Silva Santos Xavier - 734661
// -------------------------
// -------------------------
// comparator
// -------------------------
// -------------------------
module comparator (output s, input a, input b);
// descrever por portas
xnor XNOR1 (s, a, b);
endmodule // comparator
// -------------------------

module test_comparator;
// ------------------------- definir dados
 reg [4:0] b = 4;
 reg [4:0] a = 2;
 wire [4:0] s0;
 wire s1;

 comparator C1 (s0[0], a[0], b[0]);
 comparator C2 (s0[1], a[1], b[1]);
 comparator C3 (s0[2], a[2], b[2]);
 comparator C4 (s0[3], a[3], b[3]);
 comparator C5 (s0[4], a[4], b[4]);

 and AND1(s1, s0[0], s0[1], s0[2], s0[3], s0[4]);

// ------------------------- parte principal
initial begin: main
 $display("Exemplo0803 - Laura Iara Silva Santos Xavier - 734661");
 $display("Test ALU’s full subtractor");
 $display("   a      b   igualdade ");
 

$monitor("%6b %6b  %1b", a, b, s1);

#1 a = 22; b = 22;
#1 a = 21; b = 2;
#1 a = 20; b = 3;
#1 a = 19; b = 19;
#1 a = 18; b = 5;
#1 a = 17; b = 6;
#1 a = 16; b = 16;
#1 a = 15; b = 15;
#1 a = 14; b = 1;
#1 a = 13; b = 2;
#1 a = 12; b = 12;
#1 a = 11; b = 4;
#1 a = 10; b = 5; 
#1 a = 9; b = 9;
#1 a = 8; b = 8;
#1 a = 7; b = 8; 
#1 a = 6; b = 1;
#1 a = 5; b = 2;
#1 a = 4; b = 4;
#1 a = 3; b = 4;
#1 a = 2; b = 5;
#1 a = 1; b = 6;

end
endmodule // test_comparator

