// -------------------------
// Exemplo_0805 - FULL ADDER
// Laura Iara Silva Santos Xavier - 734661
// -------------------------
// -------------------------
// half adder
// -------------------------
// -------------------------
module halfAdder (output carryOut, output soma, input a, input b);
// descrever por portas
xor XOR1 ( soma, a, b );
and AND1 ( carryOut, a, b );
endmodule // halfAdder
// -------------------------
// Complemento de 2
// -------------------------
module complementoDe2 ( output carryOut, output soma, input a, input b, input carryIn );
// descrever por portas e/ou modulos
wire s1;
wire c1;
wire c2;
wire notA;

not NOT1(notA, a);
halfAdder HA1(c1, s1, notA, b);
halfAdder HA2(c2, soma, s1, carryIn);

or OR1(carryOut, c1, c2);

endmodule // fullAdder

module test_completementoDe2;
// ------------------------- definir dados
 reg [5:0] b = 1;
 reg [5:0] a = 5;
 wire [5:0] carryOut; // “vai-um”
 wire [5:0] comp2;

 complementoDe2 C0 ( carryOut[0], comp2[0], a[0], b[0], 1'b0);
 complementoDe2 C1 ( carryOut[1], comp2[1], a[1], b[1], carryOut[0]);
 complementoDe2 C2 ( carryOut[2], comp2[2], a[2], b[2], carryOut[1]);
 complementoDe2 C3 ( carryOut[3], comp2[3], a[3], b[3], carryOut[2]);
 complementoDe2 C4 ( carryOut[4], comp2[4], a[4], b[4], carryOut[3]);
 complementoDe2 C5 ( carryOut[5], comp2[5], a[5], b[5], carryOut[4]);


// ------------------------- parte principal
initial begin: main
 $display("Exemplo0805 - Laura Iara Silva Santos Xavier - 734661");
 $display("Test ALU’s full adder");
 $display("   a    complemento de 2");
 

$monitor("%6b     %6b", a, comp2);

#1 a = 1;
#1 a = 2; 
#1 a = 3; 
#1 a = 4;
#1 a = 5;
#1 a = 6;  
#1 a = 7; 
#1 a = 8;
#1 a = 9; 
#1 a = 10; 
#1 a = 11; 
#1 a = 12;
#1 a = 13;
#1 a = 14; 
#1 a = 15; 
#1 a = 16;
#1 a = 17; 
#1 a = 18; 
#1 a = 19;
#1 a = 20;
#1 a = 21;  
#1 a = 22; 
#1 a = 23;
#1 a = 24; 
#1 a = 25; 
#1 a = 26; 
#1 a = 27;
#1 a = 28;
#1 a = 29; 
#1 a = 30; 

// projetar testes do somador completo
end
endmodule // test_completementoDe2

