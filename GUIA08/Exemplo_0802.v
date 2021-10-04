// -------------------------
// Exemplo_0802 - FULL ADDER
// Laura Iara Silva Santos Xavier - 734661
// -------------------------
// -------------------------
// half subtractor
// -------------------------
// -------------------------
module halfSub (output BorrowOut, output diff, input a, input b);
// descrever por portas
wire x;
xor XOR1 ( diff, a, b );
not NOT1(x, a);
and AND1 ( BorrowOut, x, b );
endmodule // halfSub
// -------------------------
// full Sub
// -------------------------
module fullSub1bit ( output BorrowOut, output diff, input a, input b, input BorrowIn );
// descrever por portas e/ou modulos
wire s1;
wire c1;
wire c2;

halfSub HA1(c1, s1, a, b);
halfSub HA2(c2, diff, s1, BorrowIn);

or OR1(BorrowOut, c1, c2);


// xor XOR1 (j, a, b);
// xor XOR2 (diff, BorrowIn, j);

// wire notA;
// not NOT1(notA, a);
// and AND1(x, notA, b);
// and AND2(y, notA, BorrowIn);
// and AND3(z, b, BorrowIn);

// or OR1(BorrowOut, x, y, z);

endmodule // fullSub

module test_fullSub;
// ------------------------- definir dados
 reg [5:0] b = 1;
 reg [5:0] a = 2;
 wire [5:0] BorrowOut;
 wire [6:0] diff;

 fullSub1bit FA0 ( BorrowOut[0], diff[0], a[0], b[0], 1'b0);
 fullSub1bit FA1 ( BorrowOut[1], diff[1], a[1], b[1], BorrowOut[0]);
 fullSub1bit FA2 ( BorrowOut[2], diff[2], a[2], b[2], BorrowOut[1]);
 fullSub1bit FA3 ( BorrowOut[3], diff[3], a[3], b[3], BorrowOut[2]);
 fullSub1bit FA4 ( BorrowOut[4], diff[4], a[4], b[4], BorrowOut[3]);
 fullSub1bit FA5 ( BorrowOut[5], diff[5], a[5], b[5], BorrowOut[4]);

 or OR1(diff[6], BorrowOut[5]);

// ------------------------- parte principal
initial begin: main
 $display("Exemplo0802 - Laura Iara Silva Santos Xavier - 734661");
 $display("Test ALU’s full subtractor");
 $display("   a        b     diferenca ");
 

$monitor("%6b - %6b = %6b", a, b, diff);

#1 a = 22; b = 1;
#1 a = 21; b = 2;
#1 a = 20; b = 3;
#1 a = 19; b = 4;
#1 a = 18; b = 5;
#1 a = 17; b = 6;
#1 a = 16; b = 7;
#1 a = 15; b = 8;
#1 a = 14; b = 1;
#1 a = 13; b = 2;
#1 a = 12; b = 3;
#1 a = 11; b = 4;
#1 a = 10; b = 5; 
#1 a = 9; b = 6;
#1 a = 8; b = 7;
#1 a = 7; b = 8; 
#1 a = 6; b = 1;
#1 a = 5; b = 2;
#1 a = 4; b = 3;
#1 a = 3; b = 4;
#1 a = 2; b = 5;
#1 a = 1; b = 6;

end
endmodule // test_fullSub

