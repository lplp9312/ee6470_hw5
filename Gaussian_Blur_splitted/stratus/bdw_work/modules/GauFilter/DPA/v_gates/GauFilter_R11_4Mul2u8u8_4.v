`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 03:04:26 CST (Apr 25 2021 19:04:26 UTC)

module GauFilter_R11_4Mul2u8u8_4(in2, in1, out1);
  input [7:0] in2, in1;
  output [7:0] out1;
  wire [7:0] in2, in1;
  wire [7:0] out1;
  wire mul_22_8_n_0, mul_22_8_n_2, mul_22_8_n_3, mul_22_8_n_4,
       mul_22_8_n_5, mul_22_8_n_6, mul_22_8_n_7, mul_22_8_n_8;
  wire mul_22_8_n_9, mul_22_8_n_10, mul_22_8_n_11, mul_22_8_n_12,
       mul_22_8_n_13, mul_22_8_n_14, mul_22_8_n_15, mul_22_8_n_16;
  wire mul_22_8_n_17, mul_22_8_n_18, mul_22_8_n_19, mul_22_8_n_20,
       mul_22_8_n_21, mul_22_8_n_22, mul_22_8_n_23, mul_22_8_n_24;
  wire mul_22_8_n_25, mul_22_8_n_26, mul_22_8_n_27, mul_22_8_n_28,
       mul_22_8_n_29, mul_22_8_n_30, mul_22_8_n_31, mul_22_8_n_32;
  wire mul_22_8_n_33, mul_22_8_n_34, mul_22_8_n_35, mul_22_8_n_36,
       mul_22_8_n_37, mul_22_8_n_38, mul_22_8_n_39, mul_22_8_n_40;
  wire mul_22_8_n_41, mul_22_8_n_42, mul_22_8_n_43, mul_22_8_n_44,
       mul_22_8_n_45, mul_22_8_n_46, mul_22_8_n_47, mul_22_8_n_48;
  wire mul_22_8_n_49, mul_22_8_n_50, mul_22_8_n_51, mul_22_8_n_52,
       mul_22_8_n_53, mul_22_8_n_54, mul_22_8_n_55, mul_22_8_n_56;
  wire mul_22_8_n_57, mul_22_8_n_58, mul_22_8_n_59, mul_22_8_n_60,
       mul_22_8_n_61, mul_22_8_n_62, mul_22_8_n_63, mul_22_8_n_64;
  wire mul_22_8_n_65, mul_22_8_n_66, mul_22_8_n_67, mul_22_8_n_68,
       mul_22_8_n_69, mul_22_8_n_70, mul_22_8_n_71, mul_22_8_n_72;
  wire mul_22_8_n_73, mul_22_8_n_74, mul_22_8_n_75, mul_22_8_n_76,
       mul_22_8_n_77, mul_22_8_n_78, mul_22_8_n_79, mul_22_8_n_80;
  wire mul_22_8_n_81, mul_22_8_n_82, mul_22_8_n_83, mul_22_8_n_84,
       mul_22_8_n_85, mul_22_8_n_86, mul_22_8_n_87, mul_22_8_n_88;
  wire mul_22_8_n_89, mul_22_8_n_90, mul_22_8_n_91, mul_22_8_n_92,
       mul_22_8_n_93, mul_22_8_n_94, mul_22_8_n_95, mul_22_8_n_96;
  wire mul_22_8_n_97, mul_22_8_n_98, mul_22_8_n_99, mul_22_8_n_100,
       mul_22_8_n_101, mul_22_8_n_102, mul_22_8_n_103, mul_22_8_n_104;
  wire mul_22_8_n_105, mul_22_8_n_106, mul_22_8_n_107, mul_22_8_n_108,
       mul_22_8_n_109, mul_22_8_n_110, mul_22_8_n_111, mul_22_8_n_112;
  wire mul_22_8_n_113, mul_22_8_n_114, mul_22_8_n_115, mul_22_8_n_116,
       mul_22_8_n_117, mul_22_8_n_118, mul_22_8_n_119, mul_22_8_n_120;
  wire mul_22_8_n_121, mul_22_8_n_122, mul_22_8_n_123, mul_22_8_n_124,
       mul_22_8_n_125, mul_22_8_n_126, mul_22_8_n_127, mul_22_8_n_128;
  wire mul_22_8_n_129, mul_22_8_n_130, mul_22_8_n_131, mul_22_8_n_132,
       mul_22_8_n_133, mul_22_8_n_134, mul_22_8_n_135, mul_22_8_n_136;
  wire mul_22_8_n_137, mul_22_8_n_138, mul_22_8_n_139, mul_22_8_n_140,
       mul_22_8_n_141, mul_22_8_n_142, mul_22_8_n_143, mul_22_8_n_144;
  wire mul_22_8_n_145, mul_22_8_n_146, mul_22_8_n_147, mul_22_8_n_148,
       mul_22_8_n_149, mul_22_8_n_150, mul_22_8_n_151, mul_22_8_n_152;
  wire mul_22_8_n_153, mul_22_8_n_154, mul_22_8_n_156, mul_22_8_n_157,
       mul_22_8_n_158, mul_22_8_n_159, mul_22_8_n_160, mul_22_8_n_161;
  wire mul_22_8_n_162, mul_22_8_n_163, mul_22_8_n_164, mul_22_8_n_165,
       mul_22_8_n_167, mul_22_8_n_168, mul_22_8_n_169, mul_22_8_n_170;
  wire mul_22_8_n_172, mul_22_8_n_173, mul_22_8_n_174, mul_22_8_n_175,
       mul_22_8_n_176, mul_22_8_n_178, mul_22_8_n_179, mul_22_8_n_180;
  wire mul_22_8_n_182, mul_22_8_n_184;
  XNOR2X1 mul_22_8_g1929(.A (mul_22_8_n_175), .B (mul_22_8_n_184), .Y
       (out1[7]));
  ADDFX1 mul_22_8_g1930(.A (mul_22_8_n_182), .B (mul_22_8_n_170), .CI
       (mul_22_8_n_164), .CO (mul_22_8_n_184), .S (out1[6]));
  ADDFX1 mul_22_8_g1931(.A (mul_22_8_n_180), .B (mul_22_8_n_165), .CI
       (mul_22_8_n_162), .CO (mul_22_8_n_182), .S (out1[5]));
  ADDFX1 mul_22_8_g1932(.A (mul_22_8_n_179), .B (mul_22_8_n_163), .CI
       (mul_22_8_n_160), .CO (mul_22_8_n_180), .S (out1[4]));
  OAI211X1 mul_22_8_g1933(.A0 (mul_22_8_n_153), .A1 (mul_22_8_n_167),
       .B0 (mul_22_8_n_178), .C0 (mul_22_8_n_176), .Y (mul_22_8_n_179));
  AOI21X1 mul_22_8_g1934(.A0 (mul_22_8_n_146), .A1 (mul_22_8_n_174),
       .B0 (mul_22_8_n_168), .Y (mul_22_8_n_178));
  XNOR2X1 mul_22_8_g1935(.A (mul_22_8_n_173), .B (mul_22_8_n_172), .Y
       (out1[3]));
  NAND2XL mul_22_8_g1936(.A (mul_22_8_n_158), .B (mul_22_8_n_174), .Y
       (mul_22_8_n_176));
  XNOR2X1 mul_22_8_g1937(.A (mul_22_8_n_169), .B (mul_22_8_n_151), .Y
       (mul_22_8_n_175));
  NOR2X1 mul_22_8_g1938(.A (mul_22_8_n_154), .B (mul_22_8_n_167), .Y
       (mul_22_8_n_174));
  OR2XL mul_22_8_g1939(.A (mul_22_8_n_168), .B (mul_22_8_n_167), .Y
       (mul_22_8_n_173));
  OAI21X1 mul_22_8_g1940(.A0 (mul_22_8_n_154), .A1 (mul_22_8_n_159),
       .B0 (mul_22_8_n_153), .Y (mul_22_8_n_172));
  XNOR2X1 mul_22_8_g1941(.A (mul_22_8_n_157), .B (mul_22_8_n_159), .Y
       (out1[2]));
  ADDFX1 mul_22_8_g1942(.A (mul_22_8_n_149), .B (mul_22_8_n_142), .CI
       (mul_22_8_n_118), .CO (mul_22_8_n_169), .S (mul_22_8_n_170));
  AND2XL mul_22_8_g1943(.A (mul_22_8_n_147), .B (mul_22_8_n_161), .Y
       (mul_22_8_n_168));
  NOR2X1 mul_22_8_g1944(.A (mul_22_8_n_147), .B (mul_22_8_n_161), .Y
       (mul_22_8_n_167));
  XNOR2X1 mul_22_8_g1945(.A (mul_22_8_n_144), .B (mul_22_8_n_156), .Y
       (out1[1]));
  ADDFX1 mul_22_8_g1946(.A (mul_22_8_n_150), .B (mul_22_8_n_120), .CI
       (mul_22_8_n_130), .CO (mul_22_8_n_164), .S (mul_22_8_n_165));
  ADDFX1 mul_22_8_g1947(.A (mul_22_8_n_131), .B (mul_22_8_n_124), .CI
       (mul_22_8_n_135), .CO (mul_22_8_n_162), .S (mul_22_8_n_163));
  ADDFX1 mul_22_8_g1948(.A (mul_22_8_n_125), .B (mul_22_8_n_136), .CI
       (mul_22_8_n_111), .CO (mul_22_8_n_160), .S (mul_22_8_n_161));
  NOR2X1 mul_22_8_g1949(.A (mul_22_8_n_158), .B (mul_22_8_n_146), .Y
       (mul_22_8_n_159));
  NOR2X1 mul_22_8_g1950(.A (mul_22_8_n_139), .B (mul_22_8_n_152), .Y
       (mul_22_8_n_158));
  NOR2BX1 mul_22_8_g1951(.AN (mul_22_8_n_153), .B (mul_22_8_n_154), .Y
       (mul_22_8_n_157));
  NAND2X1 mul_22_8_g1952(.A (mul_22_8_n_123), .B (mul_22_8_n_152), .Y
       (mul_22_8_n_156));
  XNOR2X1 mul_22_8_g1953(.A (mul_22_8_n_129), .B (mul_22_8_n_145), .Y
       (out1[0]));
  NOR2X1 mul_22_8_g1954(.A (mul_22_8_n_132), .B (mul_22_8_n_148), .Y
       (mul_22_8_n_154));
  NAND2X1 mul_22_8_g1955(.A (mul_22_8_n_132), .B (mul_22_8_n_148), .Y
       (mul_22_8_n_153));
  NAND2BX1 mul_22_8_g1956(.AN (mul_22_8_n_122), .B (mul_22_8_n_145), .Y
       (mul_22_8_n_152));
  XNOR2X1 mul_22_8_g1957(.A (mul_22_8_n_141), .B (mul_22_8_n_143), .Y
       (mul_22_8_n_151));
  ADDFX1 mul_22_8_g1958(.A (mul_22_8_n_134), .B (mul_22_8_n_88), .CI
       (mul_22_8_n_16), .CO (mul_22_8_n_149), .S (mul_22_8_n_150));
  ADDFX1 mul_22_8_g1959(.A (mul_22_8_n_137), .B (mul_22_8_n_73), .CI
       (mul_22_8_n_112), .CO (mul_22_8_n_147), .S (mul_22_8_n_148));
  OAI21X1 mul_22_8_g1960(.A0 (mul_22_8_n_123), .A1 (mul_22_8_n_139),
       .B0 (mul_22_8_n_140), .Y (mul_22_8_n_146));
  OAI211X1 mul_22_8_g1961(.A0 (mul_22_8_n_102), .A1 (mul_22_8_n_107),
       .B0 (mul_22_8_n_128), .C0 (mul_22_8_n_138), .Y (mul_22_8_n_145));
  NAND2BX1 mul_22_8_g1962(.AN (mul_22_8_n_139), .B (mul_22_8_n_140), .Y
       (mul_22_8_n_144));
  XNOR2X1 mul_22_8_g1963(.A (mul_22_8_n_109), .B (mul_22_8_n_126), .Y
       (mul_22_8_n_143));
  ADDFX1 mul_22_8_g1964(.A (mul_22_8_n_119), .B (mul_22_8_n_90), .CI
       (mul_22_8_n_15), .CO (mul_22_8_n_141), .S (mul_22_8_n_142));
  NAND2XL mul_22_8_g1965(.A (mul_22_8_n_115), .B (mul_22_8_n_133), .Y
       (mul_22_8_n_140));
  NOR2X1 mul_22_8_g1966(.A (mul_22_8_n_115), .B (mul_22_8_n_133), .Y
       (mul_22_8_n_139));
  OAI211X1 mul_22_8_g1967(.A0 (mul_22_8_n_9), .A1 (mul_22_8_n_10), .B0
       (mul_22_8_n_127), .C0 (in2[1]), .Y (mul_22_8_n_138));
  ADDFX1 mul_22_8_g1968(.A (mul_22_8_n_78), .B (mul_22_8_n_97), .CI
       (mul_22_8_n_69), .CO (mul_22_8_n_136), .S (mul_22_8_n_137));
  ADDFX1 mul_22_8_g1969(.A (mul_22_8_n_84), .B (mul_22_8_n_96), .CI
       (mul_22_8_n_14), .CO (mul_22_8_n_134), .S (mul_22_8_n_135));
  ADDFX1 mul_22_8_g1970(.A (mul_22_8_n_113), .B (mul_22_8_n_76), .CI
       (mul_22_8_n_74), .CO (mul_22_8_n_132), .S (mul_22_8_n_133));
  ADDFX1 mul_22_8_g1971(.A (mul_22_8_n_110), .B (mul_22_8_n_80), .CI
       (mul_22_8_n_89), .CO (mul_22_8_n_130), .S (mul_22_8_n_131));
  NAND2BXL mul_22_8_g1972(.AN (mul_22_8_n_122), .B (mul_22_8_n_123), .Y
       (mul_22_8_n_129));
  NAND3BXL mul_22_8_g1973(.AN (mul_22_8_n_103), .B (mul_22_8_n_64), .C
       (mul_22_8_n_114), .Y (mul_22_8_n_128));
  NOR2X1 mul_22_8_g1974(.A (mul_22_8_n_101), .B (mul_22_8_n_121), .Y
       (mul_22_8_n_127));
  XNOR2X1 mul_22_8_g1975(.A (mul_22_8_n_108), .B (mul_22_8_n_117), .Y
       (mul_22_8_n_126));
  ADDFX1 mul_22_8_g1976(.A (mul_22_8_n_92), .B (mul_22_8_n_75), .CI
       (mul_22_8_n_72), .CO (mul_22_8_n_124), .S (mul_22_8_n_125));
  NAND2X1 mul_22_8_g1977(.A (mul_22_8_n_105), .B (mul_22_8_n_116), .Y
       (mul_22_8_n_123));
  NOR2X1 mul_22_8_g1978(.A (mul_22_8_n_105), .B (mul_22_8_n_116), .Y
       (mul_22_8_n_122));
  NAND2X1 mul_22_8_g1979(.A (mul_22_8_n_106), .B (mul_22_8_n_114), .Y
       (mul_22_8_n_121));
  ADDFX1 mul_22_8_g1980(.A (mul_22_8_n_83), .B (mul_22_8_n_82), .CI
       (in2[1]), .CO (mul_22_8_n_119), .S (mul_22_8_n_120));
  ADDFX1 mul_22_8_g1981(.A (mul_22_8_n_85), .B (in2[1]), .CI
       (mul_22_8_n_81), .CO (mul_22_8_n_117), .S (mul_22_8_n_118));
  ADDFX1 mul_22_8_g1982(.A (mul_22_8_n_77), .B (mul_22_8_n_98), .CI
       (mul_22_8_n_63), .CO (mul_22_8_n_115), .S (mul_22_8_n_116));
  NAND2X1 mul_22_8_g1983(.A (mul_22_8_n_102), .B (mul_22_8_n_107), .Y
       (mul_22_8_n_114));
  ADDHX1 mul_22_8_g1984(.A (mul_22_8_n_93), .B (mul_22_8_n_99), .CO
       (mul_22_8_n_112), .S (mul_22_8_n_113));
  ADDHX1 mul_22_8_g1985(.A (mul_22_8_n_100), .B (mul_22_8_n_91), .CO
       (mul_22_8_n_110), .S (mul_22_8_n_111));
  XNOR2X1 mul_22_8_g1986(.A (mul_22_8_n_87), .B (mul_22_8_n_104), .Y
       (mul_22_8_n_109));
  XNOR2X1 mul_22_8_g1987(.A (mul_22_8_n_17), .B (mul_22_8_n_94), .Y
       (mul_22_8_n_108));
  XNOR2X1 mul_22_8_g1988(.A (mul_22_8_n_95), .B (mul_22_8_n_79), .Y
       (mul_22_8_n_107));
  NAND2BXL mul_22_8_g1989(.AN (mul_22_8_n_64), .B (mul_22_8_n_103), .Y
       (mul_22_8_n_106));
  NOR2X1 mul_22_8_g1990(.A (mul_22_8_n_95), .B (mul_22_8_n_79), .Y
       (mul_22_8_n_105));
  XNOR2X1 mul_22_8_g1991(.A (in2[1]), .B (mul_22_8_n_86), .Y
       (mul_22_8_n_104));
  AOI22X1 mul_22_8_g1992(.A0 (mul_22_8_n_20), .A1 (mul_22_8_n_70), .B0
       (in2[0]), .B1 (mul_22_8_n_51), .Y (mul_22_8_n_101));
  AOI22X1 mul_22_8_g1993(.A0 (mul_22_8_n_51), .A1 (mul_22_8_n_70), .B0
       (in2[0]), .B1 (mul_22_8_n_46), .Y (mul_22_8_n_103));
  AOI22X1 mul_22_8_g1994(.A0 (mul_22_8_n_46), .A1 (mul_22_8_n_70), .B0
       (in2[0]), .B1 (mul_22_8_n_54), .Y (mul_22_8_n_102));
  AOI221X1 mul_22_8_g1995(.A0 (in2[6]), .A1 (in2[5]), .B0 (in1[0]), .B1
       (mul_22_8_n_0), .C0 (mul_22_8_n_3), .Y (mul_22_8_n_100));
  OAI22X1 mul_22_8_g1996(.A0 (mul_22_8_n_49), .A1 (mul_22_8_n_71), .B0
       (mul_22_8_n_10), .B1 (mul_22_8_n_50), .Y (mul_22_8_n_99));
  OAI22X1 mul_22_8_g1997(.A0 (mul_22_8_n_55), .A1 (mul_22_8_n_71), .B0
       (mul_22_8_n_10), .B1 (mul_22_8_n_49), .Y (mul_22_8_n_98));
  OAI22X1 mul_22_8_g1998(.A0 (mul_22_8_n_50), .A1 (mul_22_8_n_71), .B0
       (mul_22_8_n_10), .B1 (mul_22_8_n_52), .Y (mul_22_8_n_97));
  OAI22X1 mul_22_8_g1999(.A0 (mul_22_8_n_53), .A1 (mul_22_8_n_71), .B0
       (mul_22_8_n_2), .B1 (mul_22_8_n_10), .Y (mul_22_8_n_96));
  AOI22X1 mul_22_8_g2000(.A0 (mul_22_8_n_31), .A1 (mul_22_8_n_68), .B0
       (mul_22_8_n_23), .B1 (mul_22_8_n_65), .Y (mul_22_8_n_94));
  OAI211X1 mul_22_8_g2001(.A0 (mul_22_8_n_9), .A1 (mul_22_8_n_2), .B0
       (in2[3]), .C0 (mul_22_8_n_66), .Y (mul_22_8_n_95));
  AOI221X1 mul_22_8_g2002(.A0 (in1[0]), .A1 (in2[3]), .B0 (in2[4]), .B1
       (mul_22_8_n_13), .C0 (mul_22_8_n_8), .Y (mul_22_8_n_93));
  OAI22X1 mul_22_8_g2003(.A0 (mul_22_8_n_22), .A1 (mul_22_8_n_67), .B0
       (mul_22_8_n_28), .B1 (mul_22_8_n_24), .Y (mul_22_8_n_92));
  OAI22X1 mul_22_8_g2004(.A0 (mul_22_8_n_52), .A1 (mul_22_8_n_71), .B0
       (mul_22_8_n_10), .B1 (mul_22_8_n_53), .Y (mul_22_8_n_91));
  OAI22X1 mul_22_8_g2005(.A0 (mul_22_8_n_30), .A1 (mul_22_8_n_67), .B0
       (mul_22_8_n_32), .B1 (mul_22_8_n_24), .Y (mul_22_8_n_90));
  OAI22X1 mul_22_8_g2006(.A0 (mul_22_8_n_28), .A1 (mul_22_8_n_67), .B0
       (mul_22_8_n_29), .B1 (mul_22_8_n_24), .Y (mul_22_8_n_89));
  OAI22X1 mul_22_8_g2007(.A0 (mul_22_8_n_29), .A1 (mul_22_8_n_67), .B0
       (mul_22_8_n_30), .B1 (mul_22_8_n_24), .Y (mul_22_8_n_88));
  OAI22XL mul_22_8_g2008(.A0 (mul_22_8_n_58), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_41), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_87));
  OAI2BB1X1 mul_22_8_g2009(.A0N (in2[3]), .A1N (mul_22_8_n_59), .B0
       (mul_22_8_n_62), .Y (mul_22_8_n_86));
  OAI21X1 mul_22_8_g2010(.A0 (mul_22_8_n_56), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_62), .Y (mul_22_8_n_85));
  OAI22X1 mul_22_8_g2011(.A0 (mul_22_8_n_47), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_57), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_84));
  OAI22X1 mul_22_8_g2012(.A0 (mul_22_8_n_33), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_34), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_83));
  OAI22X1 mul_22_8_g2013(.A0 (mul_22_8_n_57), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_56), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_82));
  OAI22X1 mul_22_8_g2014(.A0 (mul_22_8_n_34), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_58), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_81));
  OAI22X1 mul_22_8_g2015(.A0 (mul_22_8_n_35), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_33), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_80));
  OAI22X1 mul_22_8_g2016(.A0 (mul_22_8_n_36), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_27), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_78));
  OAI22X1 mul_22_8_g2017(.A0 (mul_22_8_n_38), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_25), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_77));
  AOI22X1 mul_22_8_g2018(.A0 (mul_22_8_n_19), .A1 (mul_22_8_n_59), .B0
       (mul_22_8_n_37), .B1 (mul_22_8_n_43), .Y (mul_22_8_n_79));
  OAI22X1 mul_22_8_g2019(.A0 (mul_22_8_n_18), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_36), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_76));
  OAI22X1 mul_22_8_g2020(.A0 (mul_22_8_n_48), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_47), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_75));
  OAI22X1 mul_22_8_g2021(.A0 (mul_22_8_n_25), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_26), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_74));
  OAI22X1 mul_22_8_g2022(.A0 (mul_22_8_n_26), .A1 (mul_22_8_n_60), .B0
       (mul_22_8_n_48), .B1 (mul_22_8_n_44), .Y (mul_22_8_n_73));
  OAI22X1 mul_22_8_g2023(.A0 (mul_22_8_n_27), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_35), .B1 (mul_22_8_n_45), .Y (mul_22_8_n_72));
  INVX1 mul_22_8_g2024(.A (mul_22_8_n_71), .Y (mul_22_8_n_70));
  NAND2X1 mul_22_8_g2025(.A (mul_22_8_n_10), .B (mul_22_8_n_21), .Y
       (mul_22_8_n_71));
  NOR2X1 mul_22_8_g2026(.A (mul_22_8_n_9), .B (mul_22_8_n_24), .Y
       (mul_22_8_n_69));
  INVX1 mul_22_8_g2027(.A (mul_22_8_n_67), .Y (mul_22_8_n_68));
  NAND2X1 mul_22_8_g2028(.A (mul_22_8_n_39), .B (mul_22_8_n_24), .Y
       (mul_22_8_n_67));
  OAI21X1 mul_22_8_g2029(.A0 (in1[0]), .A1 (in2[1]), .B0 (in2[2]), .Y
       (mul_22_8_n_66));
  INVX1 mul_22_8_g2030(.A (mul_22_8_n_24), .Y (mul_22_8_n_65));
  NOR2X1 mul_22_8_g2031(.A (mul_22_8_n_9), .B (mul_22_8_n_44), .Y
       (mul_22_8_n_64));
  NOR2X1 mul_22_8_g2032(.A (mul_22_8_n_9), .B (mul_22_8_n_45), .Y
       (mul_22_8_n_63));
  INVX1 mul_22_8_g2033(.A (mul_22_8_n_60), .Y (mul_22_8_n_59));
  NAND2X1 mul_22_8_g2034(.A (in2[3]), .B (mul_22_8_n_43), .Y
       (mul_22_8_n_62));
  NAND2X1 mul_22_8_g2035(.A (mul_22_8_n_42), .B (mul_22_8_n_45), .Y
       (mul_22_8_n_61));
  NAND2X1 mul_22_8_g2036(.A (mul_22_8_n_40), .B (mul_22_8_n_44), .Y
       (mul_22_8_n_60));
  INVX1 mul_22_8_g2037(.A (mul_22_8_n_54), .Y (mul_22_8_n_55));
  INVX1 mul_22_8_g2038(.A (mul_22_8_n_44), .Y (mul_22_8_n_43));
  MXI2XL mul_22_8_g2039(.A (mul_22_8_n_8), .B (in2[5]), .S0 (in2[4]),
       .Y (mul_22_8_n_42));
  MXI2XL mul_22_8_g2040(.A (in2[5]), .B (mul_22_8_n_8), .S0 (in1[7]),
       .Y (mul_22_8_n_41));
  MXI2XL mul_22_8_g2041(.A (mul_22_8_n_7), .B (in2[3]), .S0 (in2[2]),
       .Y (mul_22_8_n_40));
  MXI2XL mul_22_8_g2042(.A (mul_22_8_n_3), .B (in2[7]), .S0 (in2[6]),
       .Y (mul_22_8_n_39));
  MXI2XL mul_22_8_g2043(.A (in2[5]), .B (mul_22_8_n_8), .S0 (in1[6]),
       .Y (mul_22_8_n_58));
  XNOR2X1 mul_22_8_g2044(.A (in1[6]), .B (in2[3]), .Y (mul_22_8_n_57));
  XNOR2X1 mul_22_8_g2045(.A (in1[7]), .B (in2[3]), .Y (mul_22_8_n_56));
  OAI22X1 mul_22_8_g2046(.A0 (mul_22_8_n_5), .A1 (in2[1]), .B0
       (mul_22_8_n_2), .B1 (in1[3]), .Y (mul_22_8_n_54));
  MX2XL mul_22_8_g2047(.A (mul_22_8_n_2), .B (in2[1]), .S0 (in1[7]), .Y
       (mul_22_8_n_53));
  MXI2XL mul_22_8_g2048(.A (in2[1]), .B (mul_22_8_n_2), .S0 (in1[6]),
       .Y (mul_22_8_n_52));
  OAI22X1 mul_22_8_g2049(.A0 (mul_22_8_n_4), .A1 (in2[1]), .B0
       (mul_22_8_n_2), .B1 (in1[1]), .Y (mul_22_8_n_51));
  AOI22X1 mul_22_8_g2050(.A0 (in1[5]), .A1 (mul_22_8_n_2), .B0
       (in2[1]), .B1 (mul_22_8_n_6), .Y (mul_22_8_n_50));
  AOI22X1 mul_22_8_g2051(.A0 (in1[4]), .A1 (mul_22_8_n_2), .B0
       (in2[1]), .B1 (mul_22_8_n_12), .Y (mul_22_8_n_49));
  XNOR2X1 mul_22_8_g2052(.A (in1[4]), .B (in2[3]), .Y (mul_22_8_n_48));
  XNOR2X1 mul_22_8_g2053(.A (in1[5]), .B (in2[3]), .Y (mul_22_8_n_47));
  OAI22X1 mul_22_8_g2054(.A0 (mul_22_8_n_11), .A1 (in2[1]), .B0
       (mul_22_8_n_2), .B1 (in1[2]), .Y (mul_22_8_n_46));
  XNOR2X1 mul_22_8_g2055(.A (in2[4]), .B (in2[3]), .Y (mul_22_8_n_45));
  MX2X1 mul_22_8_g2056(.A (mul_22_8_n_2), .B (in2[1]), .S0 (in2[2]), .Y
       (mul_22_8_n_44));
  INVX1 mul_22_8_g2057(.A (mul_22_8_n_37), .Y (mul_22_8_n_38));
  INVX1 mul_22_8_g2058(.A (mul_22_8_n_31), .Y (mul_22_8_n_32));
  OAI22X1 mul_22_8_g2059(.A0 (mul_22_8_n_6), .A1 (in2[7]), .B0
       (mul_22_8_n_3), .B1 (in1[5]), .Y (mul_22_8_n_23));
  AOI22X1 mul_22_8_g2060(.A0 (in1[0]), .A1 (mul_22_8_n_3), .B0
       (in2[7]), .B1 (mul_22_8_n_9), .Y (mul_22_8_n_22));
  OAI22X1 mul_22_8_g2061(.A0 (mul_22_8_n_2), .A1 (in2[0]), .B0
       (mul_22_8_n_10), .B1 (in2[1]), .Y (mul_22_8_n_21));
  OAI22X1 mul_22_8_g2062(.A0 (mul_22_8_n_9), .A1 (in2[1]), .B0
       (mul_22_8_n_2), .B1 (in1[0]), .Y (mul_22_8_n_20));
  OAI22X1 mul_22_8_g2063(.A0 (mul_22_8_n_9), .A1 (in2[3]), .B0
       (mul_22_8_n_7), .B1 (in1[0]), .Y (mul_22_8_n_19));
  AOI22X1 mul_22_8_g2064(.A0 (in1[0]), .A1 (mul_22_8_n_8), .B0
       (in2[5]), .B1 (mul_22_8_n_9), .Y (mul_22_8_n_18));
  OAI22X1 mul_22_8_g2065(.A0 (mul_22_8_n_4), .A1 (in2[3]), .B0
       (mul_22_8_n_7), .B1 (in1[1]), .Y (mul_22_8_n_37));
  AOI22X1 mul_22_8_g2066(.A0 (in1[1]), .A1 (mul_22_8_n_8), .B0
       (in2[5]), .B1 (mul_22_8_n_4), .Y (mul_22_8_n_36));
  AOI22X1 mul_22_8_g2067(.A0 (in1[3]), .A1 (mul_22_8_n_8), .B0
       (in2[5]), .B1 (mul_22_8_n_5), .Y (mul_22_8_n_35));
  AOI22X1 mul_22_8_g2068(.A0 (in1[5]), .A1 (mul_22_8_n_8), .B0
       (in2[5]), .B1 (mul_22_8_n_6), .Y (mul_22_8_n_34));
  AOI22X1 mul_22_8_g2069(.A0 (in1[4]), .A1 (mul_22_8_n_8), .B0
       (in2[5]), .B1 (mul_22_8_n_12), .Y (mul_22_8_n_33));
  OAI22X1 mul_22_8_g2070(.A0 (mul_22_8_n_12), .A1 (in2[7]), .B0
       (mul_22_8_n_3), .B1 (in1[4]), .Y (mul_22_8_n_31));
  AOI22X1 mul_22_8_g2071(.A0 (in1[3]), .A1 (mul_22_8_n_3), .B0
       (in2[7]), .B1 (mul_22_8_n_5), .Y (mul_22_8_n_30));
  AOI22X1 mul_22_8_g2072(.A0 (in1[2]), .A1 (mul_22_8_n_3), .B0
       (in2[7]), .B1 (mul_22_8_n_11), .Y (mul_22_8_n_29));
  AOI22X1 mul_22_8_g2073(.A0 (in1[1]), .A1 (mul_22_8_n_3), .B0
       (in2[7]), .B1 (mul_22_8_n_4), .Y (mul_22_8_n_28));
  AOI22X1 mul_22_8_g2074(.A0 (in1[2]), .A1 (mul_22_8_n_8), .B0
       (in2[5]), .B1 (mul_22_8_n_11), .Y (mul_22_8_n_27));
  AOI22X1 mul_22_8_g2075(.A0 (in1[3]), .A1 (mul_22_8_n_7), .B0
       (in2[3]), .B1 (mul_22_8_n_5), .Y (mul_22_8_n_26));
  AOI22X1 mul_22_8_g2076(.A0 (in1[2]), .A1 (mul_22_8_n_7), .B0
       (in2[3]), .B1 (mul_22_8_n_11), .Y (mul_22_8_n_25));
  MX2X1 mul_22_8_g2077(.A (mul_22_8_n_8), .B (in2[5]), .S0 (in2[6]), .Y
       (mul_22_8_n_24));
  NAND2X1 mul_22_8_g2079(.A (in1[3]), .B (in2[7]), .Y (mul_22_8_n_17));
  NOR2X1 mul_22_8_g2080(.A (mul_22_8_n_4), .B (mul_22_8_n_3), .Y
       (mul_22_8_n_16));
  NOR2X1 mul_22_8_g2081(.A (mul_22_8_n_11), .B (mul_22_8_n_3), .Y
       (mul_22_8_n_15));
  NOR2X1 mul_22_8_g2082(.A (mul_22_8_n_9), .B (mul_22_8_n_3), .Y
       (mul_22_8_n_14));
  NAND2X1 mul_22_8_g2083(.A (mul_22_8_n_9), .B (mul_22_8_n_7), .Y
       (mul_22_8_n_13));
  INVX1 mul_22_8_g2084(.A (in1[4]), .Y (mul_22_8_n_12));
  INVX1 mul_22_8_g2085(.A (in1[2]), .Y (mul_22_8_n_11));
  INVX1 mul_22_8_g2086(.A (in2[0]), .Y (mul_22_8_n_10));
  INVX1 mul_22_8_g2087(.A (in1[0]), .Y (mul_22_8_n_9));
  INVX1 mul_22_8_g2088(.A (in2[5]), .Y (mul_22_8_n_8));
  INVX1 mul_22_8_g2089(.A (in2[3]), .Y (mul_22_8_n_7));
  INVX1 mul_22_8_g2091(.A (in1[5]), .Y (mul_22_8_n_6));
  INVX1 mul_22_8_g2092(.A (in1[3]), .Y (mul_22_8_n_5));
  INVX1 mul_22_8_g2093(.A (in1[1]), .Y (mul_22_8_n_4));
  INVX1 mul_22_8_g2094(.A (in2[7]), .Y (mul_22_8_n_3));
  INVX1 mul_22_8_g2095(.A (in2[1]), .Y (mul_22_8_n_2));
  NAND2BX1 mul_22_8_g2(.AN (in2[6]), .B (mul_22_8_n_8), .Y
       (mul_22_8_n_0));
endmodule

