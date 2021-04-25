`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 03:10:28 CST (Apr 25 2021 19:10:28 UTC)

module GauFilter_Mul_2Ux2U_4U_4(in2, in1, out1);
  input [1:0] in2, in1;
  output [3:0] out1;
  wire [1:0] in2, in1;
  wire [3:0] out1;
  wire mul_22_8_n_0, mul_22_8_n_2, mul_22_8_n_3, mul_22_8_n_4;
  ADDHX1 mul_22_8_g84(.A (mul_22_8_n_3), .B (mul_22_8_n_4), .CO
       (out1[3]), .S (out1[2]));
  AOI21X1 mul_22_8_g85(.A0 (mul_22_8_n_0), .A1 (mul_22_8_n_2), .B0
       (mul_22_8_n_4), .Y (out1[1]));
  NOR2X1 mul_22_8_g86(.A (mul_22_8_n_0), .B (mul_22_8_n_2), .Y
       (mul_22_8_n_4));
  AND2XL mul_22_8_g87(.A (in1[1]), .B (in2[1]), .Y (mul_22_8_n_3));
  NAND2X1 mul_22_8_g88(.A (in1[1]), .B (in2[0]), .Y (mul_22_8_n_2));
  AND2XL mul_22_8_g89(.A (in1[0]), .B (in2[0]), .Y (out1[0]));
  NAND2X1 mul_22_8_g90(.A (in1[0]), .B (in2[1]), .Y (mul_22_8_n_0));
endmodule
