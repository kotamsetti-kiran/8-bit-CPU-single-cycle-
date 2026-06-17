module cpu_8bit(
    input clk, reset,
    input [3:0] opcode,
    input [2:0] rs1, rs2, rd,
    output [7:0] pc_out,
    output [7:0] r1_debug
);

    reg [7:0] pc;
    reg [7:0] rf[0:7];
    reg [7:0] alu_out;

    initial begin
        rf[0]=0; rf[1]=0; rf[2]=5; rf[3]=3;
        rf[4]=0; rf[5]=0; rf[6]=0; rf[7]=0;
    end

    // ALU - ADD + SUB Week 2
    always @(*) begin
        case(opcode)
            4'b0000: alu_out = rf[rs1] + rf[rs2]; // ADD
            4'b0001: alu_out = rf[rs1] - rf[rs2]; // SUB
            default: alu_out = 8'b0;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 0;
        end else begin
            rf[rd] <= alu_out;
            pc <= pc + 1;
        end
    end

    assign pc_out = pc;
    assign r1_debug = rf[1];
gv
endmodule