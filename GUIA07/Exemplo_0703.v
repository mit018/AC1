// -------------------------
// Exemplo_0703 - GATES
// Laura Iara Silva Santos Xavier - 734661
// -------------------------
module LU ( output s, s0, s1, s2, s3, sx, sy,
 input a, b, select, select_g );
// descrever por portas
and AND1(s0, a, b);
nand NAND1(s1, a, b);
mux MUX1(sx, s0, s1, select);

or OR1(s2, a, b);
nor NOR1(s3, a, b);
mux MUX2(sy, s2, s3, select);

mux MUX3(s, sx, sy, select_g);
endmodule // LU
// -------------------------
// multiplexer
// -------------------------
module mux ( output s,
 input a,
 input b,
 input select );
// definir dados locais
 wire not_select;
 wire sa;
 wire sb;
// descrever por portas
 not NOT1 ( not_select, select );
 and AND1 ( sa, a, not_select );
 and AND2 ( sb, b, select );
 or OR1 ( s , sa, sb );
endmodule // mux

module test_LU;
// ------------------------- definir dados
 reg a, b;
 reg select_g, select;
 wire s0, s1, s2, s3, s, sx, sy;
 
 LU modulo (s, s0, s1, s2, s3, sx, sy, a, b, select, select_g);
 initial
    begin
    a = 0; b = 0; select = 0; select_g = 0;
    end

// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0703 -  Laura Iara Silva Santos Xavier - 734661");
 $display("Test LU's module");
 $display(" a b x xg  sx sy s ");
 
 $monitor("%2b%2b%2b%2b %3b%3b%3b", a, b, select, select_g, sx, sy, s);
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 #1 a = 0; b = 0; select = 1;
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 #1 a = 0; b = 0; select_g = 1;
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 #1 a = 0; b = 0; select = 0;
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 
 
 end
endmodule // test_LU