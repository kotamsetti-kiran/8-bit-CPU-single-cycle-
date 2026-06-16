module tb;
  reg clk, reset;
  wire [7:0] pc_out, r1_debug;

  cpu_8bit dut (.clk(clk),.reset(reset),.pc_out(pc_out),.r1_debug(r1_debug));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    reset = 1; #15; reset = 0;
    #20;
    $display("====================================");
    $display("Time=%0t | PC=%d | r1 value = %d", $time, pc_out, r1_debug);
    $display("Expected: r1 = 5 + 3 = 8");
    if(r1_debug == 8) $display("WEEK 1 PASSED ✅");
    else $display("WEEK 1 FAILED ❌");
    $display("====================================");
    #50 $finish;
  end
endmodule
