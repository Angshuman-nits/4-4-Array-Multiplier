
// 4x4 Array Multiplier in Verilog

module half_adder(input a, input b, output sum, output carry);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

module full_adder(input a, input b, input cin, output sum, output carry);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

module array_multiplier_4x4(input [3:0] A, input [3:0] B, output [7:0] Z);
    wire [3:0] pp0, pp1, pp2, pp3; 
    wire [6:0] s, c;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    assign Z[0] = pp0[0];

    half_adder ha1(pp0[1], pp1[0], s[0], c[0]);
    assign Z[1] = s[0];

    full_adder fa1(pp0[2], pp1[1], c[0], s[1], c[1]);
    half_adder ha2(s[1], pp2[0], s[2], c[2]);
    assign Z[2] = s[2];

    full_adder fa2(pp0[3], pp1[2], c[1], s[3], c[3]);
    full_adder fa3(s[3], pp2[1], c[2], s[4], c[4]);
    half_adder ha3(s[4], pp3[0], s[5], c[5]);
    assign Z[3] = s[5];

    full_adder fa4(pp1[3], pp2[2], c[3], s[6], c[6]);
    full_adder fa5(s[6], c[4], pp3[1], s[7], c[7]);
    half_adder ha4(s[7], c[5], s[8], c[8]);
    assign Z[4] = s[8];

    full_adder fa6(pp2[3], c[6], pp3[2], s[9], c[9]);
    full_adder fa7(s[9], c[7], c[8], s[10], c[10]);
    assign Z[5] = s[10];

    full_adder fa8(pp3[3], c[9], c[10], s[11], c[11]);
    assign Z[6] = s[11];
    assign Z[7] = c[11];
endmodule
