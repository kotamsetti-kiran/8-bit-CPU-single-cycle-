module cpu_8bit(
  input clk, reset,
  output [7:0] pc_out,
  output [7:0] r1_debug
);
  reg [7:0] pc;
  reg [7:0] rf[0:7];
  wire [7:0] alu_out;

  initial begin
    rf[0] = 0;
    rf[1] = 0;
    rf[2] = 5;
    rf[3] = 3;
    rf[4] = 0; rf[5] = 0; rf[6] = 0; rf[7] = 0;
  end

  assign alu_out = rf[2] + rf[3];

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      pc <= 0;
      rf[1] <= 0;
    end else begin
      pc <= pc + 1;
      rf[1] <= alu_out;
    end
  end

  assign pc_out = pc;
  assign r1_debug = rf[1];
endmodule
