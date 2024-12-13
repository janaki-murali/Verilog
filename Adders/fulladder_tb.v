module full_adder_tb;
  reg A, B, Cin;
  wire S, Cout;
  full_adder a1 (A, B, Cin, S, Cout);
  initial begin
    
    A = 1'b0; B = 1'b0; Cin = 1'b0;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b0; B = 1'b0; Cin = 1'b1;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b0; B = 1'b1; Cin = 1'b0;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b0; B = 1'b1; Cin = 1'b1;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b1; B = 1'b0; Cin = 1'b0;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b1; B = 1'b0; Cin = 1'b1;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b1; B = 1'b1; Cin = 1'b0;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    A = 1'b1; B = 1'b1; Cin = 1'b1;
    #1 $display("A=%b\tB=%b\tCin=%b\tS=%b\tCout=%b", A, B, Cin, S, Cout);
    
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
