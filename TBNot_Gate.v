module tb;

reg A;
wire Y;

not_gate uut (
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    A = 0;
    #10 A = 1;
    #10 $finish;
end

endmodule