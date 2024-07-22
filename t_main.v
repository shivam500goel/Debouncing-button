`include "main.v"
module t_main;
wire Y;
reg button,clk;

main_module M1(Y,button,clk);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,t_main);
    clk=1'b0;
    button=1'b0;
    #12 button=1'b1;
    #58 button=1'b0;
    #100 $finish;
end
always #5 clk=(!clk);
endmodule