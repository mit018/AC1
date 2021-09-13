/*
Laura Iara Silva Santos Xavier - 734661
Guia 6
*/

module nand_logic (output f, input a, input b, input c, input d);

    assign f = (~((~b) | d | (~a))) & (~(b & (~d) & a)) | (~((b & d & c) | ~a));

endmodule

module test_f5;
    //Definir dados
    reg x;
    reg y;
    reg z;
    reg w;
    wire a, b, c, d;

    nand_logic moduloA (a, x, y, z, w);

    //Parte principal
    initial begin : main
        $display ("Exemplo_0606 - Daniel Vitor de Oliveira Santos - 716417");
        $display ("Test module");
        $display ("   x    y    z    w    a");

        //Projetar testes do modulo
        $monitor("%4b %4b %4b %4b %4b", x, y, z, w, a);

        x = 1'b0;y = 1'b0; z = 1'b0; w = 1'b0;
        #1 x = 1'b0; y = 1'b0; z = 1'b0; w = 1'b1;
        #1 x = 1'b0; y = 1'b0; z = 1'b1; w = 1'b0;
        #1 x = 1'b0; y = 1'b0; z = 1'b1; w = 1'b1;
        #1 x = 1'b0; y = 1'b1; z = 1'b0; w = 1'b0;
        #1 x = 1'b0; y = 1'b1; z = 1'b0; w = 1'b1;
        #1 x = 1'b0; y = 1'b1; z = 1'b1; w = 1'b0;
        #1 x = 1'b0; y = 1'b1; z = 1'b1; w = 1'b1;
        #1 x = 1'b1; y = 1'b0; z = 1'b0; w = 1'b0;
        #1 x = 1'b1; y = 1'b0; z = 1'b0; w = 1'b1;
        #1 x = 1'b1; y = 1'b0; z = 1'b1; w = 1'b0;
        #1 x = 1'b1; y = 1'b0; z = 1'b1; w = 1'b1;
        #1 x = 1'b1; y = 1'b1; z = 1'b0; w = 1'b0;
        #1 x = 1'b1; y = 1'b1; z = 1'b0; w = 1'b1;
        #1 x = 1'b1; y = 1'b1; z = 1'b1; w = 1'b0;
        #1 x = 1'b1; y = 1'b1; z = 1'b1; w = 1'b1;

    end
endmodule

/* Resultado:

   x    y    z    w    a

   0    0    0    0    0
   0    0    0    1    0
   0    0    1    0    0
   0    0    1    1    0
   0    1    0    0    0
   0    1    0    1    0
   0    1    1    0    0
   0    1    1    1    0
   1    0    0    0    1
   1    0    0    1    1
   1    0    1    0    1
   1    0    1    1    1
   1    1    0    0    1
   1    1    0    1    1
   1    1    1    0    1
   1    1    1    1    0

*/