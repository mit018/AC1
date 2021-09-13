/*
Laura Iara Silva Santos Xavier - 734661
Guia 6
*/

module nand_logic (output f, input a, input b, input c);

    assign f = (~((~b) | (~a))) & (~(a & b)) | (~((b & c) | (~a)));

endmodule

module test_f5;
    //Definir dados
    reg x;
    reg y;
    reg z;
    wire a, b, c;

    nand_logic moduloA (a, x, y, z);

    //Parte principal
    initial begin : main
        $display ("Exemplo_0605 - Daniel Vitor de Oliveira Santos - 716417");
        $display ("Test module");
        $display ("   x    y    z    a");

        //Projetar testes do modulo
        $monitor("%4b %4b %4b %4b", x, y, z, a);

        x = 1'b0;y = 1'b0; z = 1'b0;
        #1 x = 1'b0; y = 1'b0; z = 1'b1;
        #1 x = 1'b0; y = 1'b1; z = 1'b0;
        #1 x = 1'b0; y = 1'b1; z = 1'b1;
        #1 x = 1'b1; y = 1'b0; z = 1'b0;
        #1 x = 1'b1; y = 1'b0; z = 1'b1;
        #1 x = 1'b1; y = 1'b1; z = 1'b0;
        #1 x = 1'b1; y = 1'b1; z = 1'b1;

    end
endmodule

/* Resultado:

   x    y    z    a

   0    0    0    0
   0    0    1    0
   0    1    0    0
   0    1    1    0
   1    0    0    1
   1    0    1    1
   1    1    0    1
   1    1    1    0

*/