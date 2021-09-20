// -------------------------
// Exemplo_0704 - GATES
// Laura Iara Silva Santos Xavier - 734661
// -------------------------
module LU_1 ( output s, input a, b, select );

// descrever por portas
wire s0, s1;

or OR1(s0, a, b);
nor NOR1(s1, a, b);
mux MUX1(s, s0, s1, select);

endmodule // LU_1

module LU_2 ( output s, input a, b, select );

// descrever por portas
wire s0, s1;

xor XOR1(s0, a, b);
xnor XNOR1(s1, a, b);
mux MUX1(s, s0, s1, select);

endmodule // LU_2
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
 reg select_1, select_2;
 wire s0, s1, s;
 
 LU_1 lu1 (s0, a, b, select_1);
 LU_2 lu2 (s1, a, b, select_1);
 mux MUX1(s, s0, s1, select_2);
 
 initial
    begin
    a = 0; b = 0; select_1 = 0; select_2 = 0;
    end

// ------------------------- parte principal
 initial
 begin : main
 $display("Exemplo_0704 -  Laura Iara Silva Santos Xavier - 734661");
 $display("Test LU's module");
 $display(" a b  x   s ");
 
 $monitor("%2b%2b  %1b%1b%3b", a, b, select_1, select_2, s);
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 #1 a = 0; b = 0; select_1 = 1;
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 #1 a = 0; b = 0; select_2 = 1;
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 #1 a = 0; b = 0; select_1 = 0;
 #1 b = 1;
 #1 a = 1; b = 0;
 #1 b = 1;
 
 
 end
endmodule // test_LU

