module alu_4bit(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] SEL,
    output reg [3:0] Y,
    output reg CARRY
);

always @(*) begin
    case(SEL)
        3'b000: {CARRY, Y} = A + B;      // Addition
        3'b001: {CARRY, Y} = A - B;      // Subtraction
        3'b010: Y = A & B;               // AND
        3'b011: Y = A | B;               // OR
        3'b100: Y = A ^ B;               // XOR
        3'b101: Y = ~(A | B);            // NOR
        3'b110: Y = A << 1;              // Shift Left
        3'b111: Y = A >> 1;              // Shift Right
        default: Y = 4'b0000;
    endcase
end

endmodule