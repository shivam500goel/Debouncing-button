module D_flip_flop(
    output reg Q=1'b0,
    input D,clk
);
always @(posedge clk)
Q<=D;
endmodule

module main_module(
    output Y,
    input button,clk
);
wire q1,q2;
D_flip_flop D1(q1,button,clk);
D_flip_flop D2(q2,q1,clk);
assign Y=q1&&(!q2);
endmodule