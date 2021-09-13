// -------------------------
// Exemplo_0504
// Laura Iara Silva Santos Xavier - 734661
// -------------------------

module f5a ( output s, input a, input b );
// definir dado local
wire n, m, p;
// descrever por portas
nor NOR1(n,a);
nor NOR2(m,b);
nor NOR3(p,n,m);
nor NOR4(s,p);
endmodule // f5a

module f5b ( output s, input a, input b );
// descrever por expressao
assign s = (~a | ~b);
endmodule // f5b

module test_f5;
// ------------------------- definir dados
reg x;
reg y;
wire a, b;
f5a moduloA ( a, x, y );
f5b moduloB ( b, x, y );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0504 - Laura Iara Silva Santos Xavier - 734661");
$display("Test module");
$display(" x y a b");

// projetar testes do modulo
$monitor("%4b %4b %4b %4b", x, y, a, b);
x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // test_f5