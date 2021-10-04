// -------------------------
// Exemplo_0801 - FULL ADDER
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
// full adder
// -------------------------
module fullAdder1bit ( output carryOut, output soma, input a, input b, input carryIn );
// descrever por portas e/ou modulos
wire s1;
wire c1;
wire c2;

halfAdder HA1(c1, s1, a, b);
halfAdder HA2(c2, soma, s1, carryIn);

or OR1(carryOut, c1, c2);


// xor XOR1 (j, a, b);
// xor XOR2 (soma, carryIn, j);

// and AND1(x, a, b);
// and AND2(y, a, carryIn);
// and AND3(z, b, carryIn);

// or OR1(carryOut, x, y, z);

endmodule // fullAdder

module test_fullAdder;
// ------------------------- definir dados
 reg [3:0] b = 7;
 reg [3:0] a = 0;
 wire [3:0] carryOut; // “vai-um”
 wire [4:0] soma;

 fullAdder1bit FA0 ( carryOut[0], soma[0], a[0], b[0], 1'b0);
 fullAdder1bit FA1 ( carryOut[1], soma[1], a[1], b[1], carryOut[0]);
 fullAdder1bit FA2 ( carryOut[2], soma[2], a[2], b[2], carryOut[1]);
 fullAdder1bit FA3 ( carryOut[3], soma[3], a[3], b[3], carryOut[2]);

 or OR1(soma[4], carryOut[3]);

// ------------------------- parte principal
initial begin: main
 $display("Exemplo0801 - Laura Iara Silva Santos Xavier - 734661");
 $display("Test ALU’s full adder");
 $display(" a      b     soma ");
 

$monitor("%4b + %4b = %4b", a, b, soma);

#1 a = 1; b = 1;
#1 a = 2; b = 2;
#1 a = 3; b = 3;
#1 a = 4; b = 4;
#1 a = 5; b = 1;
#1 a = 6; b = 2; 
#1 a = 7; b = 3;
#1 a = 8; b = 4;
#1 a = 9; b = 1; 
#1 a = 10; b = 2;
#1 a = 11; b = 3;
#1 a = 12; b = 4;
#1 a = 13; b = 1;
#1 a = 14; b = 2;
#1 a = 15; b = 3;

// projetar testes do somador completo
end
endmodule // test_fullAdder

