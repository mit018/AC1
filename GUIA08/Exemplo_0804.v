// -------------------------
// Exemplo_0804 - FULL ADDER
// Laura Iara Silva Santos Xavier - 734661
// -------------------------
// -------------------------
// comparator not equal
// -------------------------
// -------------------------
module comparator_notEqual (output s, input a, input b);
// descrever por portas
xor XOR1 (s, a, b);
endmodule // comparator
// -------------------------

module test_comparator_notEqual;
// ------------------------- definir dados
 reg [4:0] b = 4;
 reg [4:0] a = 2;
 wire [4:0] s0;
 wire s1;

 comparator_notEqual C1 (s0[0], a[0], b[0]);
 comparator_notEqual C2 (s0[1], a[1], b[1]);
 comparator_notEqual C3 (s0[2], a[2], b[2]);
 comparator_notEqual C4 (s0[3], a[3], b[3]);
 comparator_notEqual C5 (s0[4], a[4], b[4]);

 or OR1(s1, s0[0], s0[1], s0[2], s0[3], s0[4]);

// ------------------------- parte principal
initial begin: main
 $display("Exemplo0804 - Laura Iara Silva Santos Xavier - 734661");
 $display("Test ALU’s full subtractor");
 $display("   a      b   desigualdade ");
 

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

