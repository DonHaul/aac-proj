// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 27 16:38:55 2018
// Host        : LAPTOP-CDVS80OJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/User/Desktop/aac-proj/Proj1/Lab1/Lab1.sim/sim_1/synth/timing/xsim/testSingleCycle_time_synth.v
// Design      : SingleCycle
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IBUF_UNIQ_BASE_
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module InstructionFetch
   (D,
    I_OBUF,
    PC_OBUF,
    E,
    \Q_reg[31] ,
    Q,
    \Q_reg[24] ,
    \Q_reg[25] ,
    \Q_reg[22] ,
    \Q_reg[21] ,
    \Q_reg[19] ,
    \Q_reg[20] ,
    \Q_reg[17] ,
    \Q_reg[16] ,
    \Q_reg[14] ,
    \Q_reg[15] ,
    \Q_reg[12] ,
    \Q_reg[11] ,
    \Q_reg[9] ,
    \Q_reg[10] ,
    \Q_reg[7] ,
    \Q_reg[6] ,
    \Q_reg[4] ,
    \Q_reg[5] ,
    \Q_reg[2] ,
    \Q_reg[1] ,
    \Q_reg[31]_0 ,
    CLK);
  output [31:0]D;
  output [11:0]I_OBUF;
  output [7:0]PC_OBUF;
  output [0:0]E;
  output [0:0]\Q_reg[31] ;
  input [31:0]Q;
  input \Q_reg[24] ;
  input \Q_reg[25] ;
  input \Q_reg[22] ;
  input \Q_reg[21] ;
  input \Q_reg[19] ;
  input \Q_reg[20] ;
  input \Q_reg[17] ;
  input \Q_reg[16] ;
  input \Q_reg[14] ;
  input \Q_reg[15] ;
  input \Q_reg[12] ;
  input \Q_reg[11] ;
  input \Q_reg[9] ;
  input \Q_reg[10] ;
  input \Q_reg[7] ;
  input \Q_reg[6] ;
  input \Q_reg[4] ;
  input \Q_reg[5] ;
  input \Q_reg[2] ;
  input \Q_reg[1] ;
  input [31:0]\Q_reg[31]_0 ;
  input CLK;

  wire CLK;
  wire [31:0]D;
  wire \Data_OBUF[0]_inst_i_2_n_0 ;
  wire \Data_OBUF[11]_inst_i_10_n_0 ;
  wire \Data_OBUF[11]_inst_i_11_n_0 ;
  wire \Data_OBUF[11]_inst_i_14_n_0 ;
  wire \Data_OBUF[11]_inst_i_18_n_0 ;
  wire \Data_OBUF[11]_inst_i_19_n_0 ;
  wire \Data_OBUF[11]_inst_i_5_n_0 ;
  wire \Data_OBUF[11]_inst_i_6_n_0 ;
  wire \Data_OBUF[13]_inst_i_5_n_0 ;
  wire \Data_OBUF[13]_inst_i_6_n_0 ;
  wire \Data_OBUF[15]_inst_i_5_n_0 ;
  wire \Data_OBUF[16]_inst_i_10_n_0 ;
  wire \Data_OBUF[16]_inst_i_11_n_0 ;
  wire \Data_OBUF[16]_inst_i_5_n_0 ;
  wire \Data_OBUF[16]_inst_i_6_n_0 ;
  wire \Data_OBUF[18]_inst_i_5_n_0 ;
  wire \Data_OBUF[18]_inst_i_6_n_0 ;
  wire \Data_OBUF[1]_inst_i_4_n_0 ;
  wire \Data_OBUF[1]_inst_i_5_n_0 ;
  wire \Data_OBUF[20]_inst_i_5_n_0 ;
  wire \Data_OBUF[21]_inst_i_10_n_0 ;
  wire \Data_OBUF[21]_inst_i_11_n_0 ;
  wire \Data_OBUF[21]_inst_i_5_n_0 ;
  wire \Data_OBUF[21]_inst_i_6_n_0 ;
  wire \Data_OBUF[23]_inst_i_5_n_0 ;
  wire \Data_OBUF[23]_inst_i_6_n_0 ;
  wire \Data_OBUF[25]_inst_i_5_n_0 ;
  wire \Data_OBUF[26]_inst_i_10_n_0 ;
  wire \Data_OBUF[26]_inst_i_11_n_0 ;
  wire \Data_OBUF[26]_inst_i_5_n_0 ;
  wire \Data_OBUF[26]_inst_i_6_n_0 ;
  wire \Data_OBUF[28]_inst_i_5_n_0 ;
  wire \Data_OBUF[28]_inst_i_6_n_0 ;
  wire \Data_OBUF[2]_inst_i_4_n_0 ;
  wire \Data_OBUF[2]_inst_i_5_n_0 ;
  wire \Data_OBUF[30]_inst_i_5_n_0 ;
  wire \Data_OBUF[31]_inst_i_10_n_0 ;
  wire \Data_OBUF[31]_inst_i_11_n_0 ;
  wire \Data_OBUF[31]_inst_i_5_n_0 ;
  wire \Data_OBUF[31]_inst_i_6_n_0 ;
  wire \Data_OBUF[3]_inst_i_4_n_0 ;
  wire \Data_OBUF[3]_inst_i_8_n_0 ;
  wire \Data_OBUF[3]_inst_i_9_n_0 ;
  wire \Data_OBUF[4]_inst_i_2_n_0 ;
  wire \Data_OBUF[5]_inst_i_2_n_0 ;
  wire \Data_OBUF[6]_inst_i_5_n_0 ;
  wire \Data_OBUF[8]_inst_i_5_n_0 ;
  wire \Data_OBUF[8]_inst_i_6_n_0 ;
  wire \Data_OBUF[9]_inst_i_2_n_0 ;
  wire \Data_OBUF[9]_inst_i_3_n_0 ;
  wire \Data_OBUF[9]_inst_i_4_n_0 ;
  wire [0:0]E;
  wire \EX/ALU/AU1/C_1 ;
  wire \EX/ALU/AU1/C_10 ;
  wire \EX/ALU/AU1/C_11 ;
  wire \EX/ALU/AU1/C_12 ;
  wire \EX/ALU/AU1/C_13 ;
  wire \EX/ALU/AU1/C_14 ;
  wire \EX/ALU/AU1/C_15 ;
  wire \EX/ALU/AU1/C_16 ;
  wire \EX/ALU/AU1/C_17 ;
  wire \EX/ALU/AU1/C_18 ;
  wire \EX/ALU/AU1/C_19 ;
  wire \EX/ALU/AU1/C_2 ;
  wire \EX/ALU/AU1/C_20 ;
  wire \EX/ALU/AU1/C_21 ;
  wire \EX/ALU/AU1/C_22 ;
  wire \EX/ALU/AU1/C_23 ;
  wire \EX/ALU/AU1/C_24 ;
  wire \EX/ALU/AU1/C_25 ;
  wire \EX/ALU/AU1/C_26 ;
  wire \EX/ALU/AU1/C_27 ;
  wire \EX/ALU/AU1/C_28 ;
  wire \EX/ALU/AU1/C_29 ;
  wire \EX/ALU/AU1/C_3 ;
  wire \EX/ALU/AU1/C_30 ;
  wire \EX/ALU/AU1/C_4 ;
  wire \EX/ALU/AU1/C_5 ;
  wire \EX/ALU/AU1/C_6 ;
  wire \EX/ALU/AU1/C_7 ;
  wire \EX/ALU/AU1/C_8 ;
  wire \EX/ALU/AU1/C_9 ;
  wire \EX/ALU/AU1/aritGen[0].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[10].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[10].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[11].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[11].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[12].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[12].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[13].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[13].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[14].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[14].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[15].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[15].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[16].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[16].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[17].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[17].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[18].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[18].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[19].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[19].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[1].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[1].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[20].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[20].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[21].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[21].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[22].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[22].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[23].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[23].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[24].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[24].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[25].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[25].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[26].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[26].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[27].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[27].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[28].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[28].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[29].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[29].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[2].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[2].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[30].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[30].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[31].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[3].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[3].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[4].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[5].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[6].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[6].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[7].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[7].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[8].AUi/FA/N00__0 ;
  wire \EX/ALU/AU1/aritGen[8].AUi/Y ;
  wire \EX/ALU/AU1/aritGen[9].AUi/Y ;
  wire [11:0]I_OBUF;
  wire \I_OBUF[27]_inst_i_2_n_0 ;
  wire \PC[1]_i_1_n_0 ;
  wire \PC[7]_i_2_n_0 ;
  wire [7:0]PC_OBUF;
  wire [7:0]PCplusOne;
  wire [31:0]Q;
  wire \Q_reg[10] ;
  wire \Q_reg[11] ;
  wire \Q_reg[12] ;
  wire \Q_reg[14] ;
  wire \Q_reg[15] ;
  wire \Q_reg[16] ;
  wire \Q_reg[17] ;
  wire \Q_reg[19] ;
  wire \Q_reg[1] ;
  wire \Q_reg[20] ;
  wire \Q_reg[21] ;
  wire \Q_reg[22] ;
  wire \Q_reg[24] ;
  wire \Q_reg[25] ;
  wire \Q_reg[2] ;
  wire [0:0]\Q_reg[31] ;
  wire [31:0]\Q_reg[31]_0 ;
  wire \Q_reg[4] ;
  wire \Q_reg[5] ;
  wire \Q_reg[6] ;
  wire \Q_reg[7] ;
  wire \Q_reg[9] ;

  LUT6 #(
    .INIT(64'hAAA6AAA0AAAFA6AF)) 
    \Data_OBUF[0]_inst_i_1 
       (.I0(\Data_OBUF[0]_inst_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[0]_inst_i_2 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\Q_reg[31]_0 [0]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[10]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[10].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[9].AUi/Y ),
        .I2(Q[9]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_9 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFFE4F0000018F)) 
    \Data_OBUF[10]_inst_i_2 
       (.I0(Q[10]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[11]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[10].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAABA898)) 
    \Data_OBUF[10]_inst_i_3 
       (.I0(\Data_OBUF[9]_inst_i_2_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[9].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[10]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_7 ),
        .I1(I_OBUF[6]),
        .I2(Q[7]),
        .I3(\EX/ALU/AU1/aritGen[7].AUi/Y ),
        .I4(Q[8]),
        .I5(\EX/ALU/AU1/aritGen[8].AUi/Y ),
        .O(\EX/ALU/AU1/C_9 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[11]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[11].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[10].AUi/Y ),
        .I2(Q[10]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_10 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0200001000000000)) 
    \Data_OBUF[11]_inst_i_10 
       (.I0(\Data_OBUF[11]_inst_i_14_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(Q[3]),
        .O(\Data_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8A088A8A08088A08)) 
    \Data_OBUF[11]_inst_i_11 
       (.I0(\EX/ALU/AU1/aritGen[3].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[2].AUi/Y ),
        .I2(\Q_reg[2] ),
        .I3(\EX/ALU/AU1/aritGen[1].AUi/Y ),
        .I4(\Q_reg[1] ),
        .I5(\EX/ALU/AU1/C_1 ),
        .O(\Data_OBUF[11]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[11]_inst_i_14 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[3]),
        .I2(\Q_reg[31]_0 [3]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[11]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h55AA56A9AA5556A9)) 
    \Data_OBUF[11]_inst_i_15 
       (.I0(\Data_OBUF[11]_inst_i_18_n_0 ),
        .I1(\Data_OBUF[3]_inst_i_4_n_0 ),
        .I2(\Data_OBUF[11]_inst_i_19_n_0 ),
        .I3(I_OBUF[11]),
        .I4(I_OBUF[10]),
        .I5(I_OBUF[2]),
        .O(\EX/ALU/AU1/aritGen[3].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFD7F)) 
    \Data_OBUF[11]_inst_i_18 
       (.I0(Q[3]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[11]_inst_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \Data_OBUF[11]_inst_i_19 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(\Q_reg[31]_0 [3]),
        .O(\Data_OBUF[11]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE4C0000018C)) 
    \Data_OBUF[11]_inst_i_2 
       (.I0(Q[11]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[11]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[11].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA89B)) 
    \Data_OBUF[11]_inst_i_3 
       (.I0(\Data_OBUF[11]_inst_i_6_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[10].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[11]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_8 ),
        .I1(I_OBUF[6]),
        .I2(Q[8]),
        .I3(\EX/ALU/AU1/aritGen[8].AUi/Y ),
        .I4(Q[9]),
        .I5(\EX/ALU/AU1/aritGen[9].AUi/Y ),
        .O(\EX/ALU/AU1/C_10 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[11]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[11]),
        .I2(\Q_reg[31]_0 [11]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[11]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[11]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[10]),
        .I2(\Q_reg[31]_0 [10]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[11]_inst_i_7 
       (.I0(\EX/ALU/AU1/C_6 ),
        .I1(I_OBUF[6]),
        .I2(Q[6]),
        .I3(\EX/ALU/AU1/aritGen[6].AUi/Y ),
        .I4(Q[7]),
        .I5(\EX/ALU/AU1/aritGen[7].AUi/Y ),
        .O(\EX/ALU/AU1/C_8 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAABA898)) 
    \Data_OBUF[11]_inst_i_8 
       (.I0(\Data_OBUF[8]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[8].AUi/Y ));
  LUT6 #(
    .INIT(64'hEF0EFFFF0000EF0E)) 
    \Data_OBUF[11]_inst_i_9 
       (.I0(\Data_OBUF[11]_inst_i_10_n_0 ),
        .I1(\Data_OBUF[11]_inst_i_11_n_0 ),
        .I2(\Q_reg[4] ),
        .I3(\EX/ALU/AU1/aritGen[4].AUi/Y ),
        .I4(\Q_reg[5] ),
        .I5(\EX/ALU/AU1/aritGen[5].AUi/Y ),
        .O(\EX/ALU/AU1/C_6 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[12]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[12].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_12 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFFE4F0000018F)) 
    \Data_OBUF[12]_inst_i_2 
       (.I0(Q[12]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[13]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[12].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[13]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[13].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[12].AUi/Y ),
        .I2(Q[12]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_12 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFFE4F0000018F)) 
    \Data_OBUF[13]_inst_i_2 
       (.I0(Q[13]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[13]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[13].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA89B)) 
    \Data_OBUF[13]_inst_i_3 
       (.I0(\Data_OBUF[13]_inst_i_6_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[12].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[13]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_10 ),
        .I1(I_OBUF[6]),
        .I2(Q[10]),
        .I3(\EX/ALU/AU1/aritGen[10].AUi/Y ),
        .I4(Q[11]),
        .I5(\EX/ALU/AU1/aritGen[11].AUi/Y ),
        .O(\EX/ALU/AU1/C_12 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[13]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[13]),
        .I2(\Q_reg[31]_0 [13]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[13]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[13]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[12]),
        .I2(\Q_reg[31]_0 [12]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[13]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAABA898)) 
    \Data_OBUF[13]_inst_i_7 
       (.I0(\Data_OBUF[11]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[11].AUi/Y ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[14]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[14].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_14 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFF7FEF3000B0103)) 
    \Data_OBUF[14]_inst_i_2 
       (.I0(Q[14]),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .I5(\Data_OBUF[15]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[14].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[15]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[15].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[14].AUi/Y ),
        .I2(Q[14]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_14 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hCCCCCC60CCCCC9FF)) 
    \Data_OBUF[15]_inst_i_2 
       (.I0(Q[15]),
        .I1(\Data_OBUF[16]_inst_i_6_n_0 ),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(PC_OBUF[1]),
        .O(\EX/ALU/AU1/aritGen[15].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAA8AA9F)) 
    \Data_OBUF[15]_inst_i_3 
       (.I0(\Data_OBUF[15]_inst_i_5_n_0 ),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .O(\EX/ALU/AU1/aritGen[14].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[15]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_12 ),
        .I1(I_OBUF[6]),
        .I2(Q[12]),
        .I3(\EX/ALU/AU1/aritGen[12].AUi/Y ),
        .I4(Q[13]),
        .I5(\EX/ALU/AU1/aritGen[13].AUi/Y ),
        .O(\EX/ALU/AU1/C_14 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[15]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[14]),
        .I2(\Q_reg[31]_0 [14]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[15]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[16]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[16].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[15].AUi/Y ),
        .I2(Q[15]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_15 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0200001000000000)) 
    \Data_OBUF[16]_inst_i_10 
       (.I0(\Data_OBUF[8]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(Q[8]),
        .O(\Data_OBUF[16]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8A088A8A08088A08)) 
    \Data_OBUF[16]_inst_i_11 
       (.I0(\EX/ALU/AU1/aritGen[8].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[7].AUi/Y ),
        .I2(\Q_reg[7] ),
        .I3(\EX/ALU/AU1/aritGen[6].AUi/Y ),
        .I4(\Q_reg[6] ),
        .I5(\EX/ALU/AU1/C_6 ),
        .O(\Data_OBUF[16]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FEF3000B0103)) 
    \Data_OBUF[16]_inst_i_2 
       (.I0(Q[16]),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .I5(\Data_OBUF[16]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[16].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFED0111)) 
    \Data_OBUF[16]_inst_i_3 
       (.I0(PC_OBUF[1]),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[0]),
        .I4(\Data_OBUF[16]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[15].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[16]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_13 ),
        .I1(I_OBUF[6]),
        .I2(Q[13]),
        .I3(\EX/ALU/AU1/aritGen[13].AUi/Y ),
        .I4(Q[14]),
        .I5(\EX/ALU/AU1/aritGen[14].AUi/Y ),
        .O(\EX/ALU/AU1/C_15 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[16]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[16]),
        .I2(\Q_reg[31]_0 [16]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[16]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[16]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[15]),
        .I2(\Q_reg[31]_0 [15]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[16]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[16]_inst_i_7 
       (.I0(\EX/ALU/AU1/C_11 ),
        .I1(I_OBUF[6]),
        .I2(Q[11]),
        .I3(\EX/ALU/AU1/aritGen[11].AUi/Y ),
        .I4(Q[12]),
        .I5(\EX/ALU/AU1/aritGen[12].AUi/Y ),
        .O(\EX/ALU/AU1/C_13 ));
  LUT5 #(
    .INIT(32'hAAABA89B)) 
    \Data_OBUF[16]_inst_i_8 
       (.I0(\Data_OBUF[13]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[13].AUi/Y ));
  LUT6 #(
    .INIT(64'hEF0EFFFF0000EF0E)) 
    \Data_OBUF[16]_inst_i_9 
       (.I0(\Data_OBUF[16]_inst_i_10_n_0 ),
        .I1(\Data_OBUF[16]_inst_i_11_n_0 ),
        .I2(\Q_reg[9] ),
        .I3(\EX/ALU/AU1/aritGen[9].AUi/Y ),
        .I4(\Q_reg[10] ),
        .I5(\EX/ALU/AU1/aritGen[10].AUi/Y ),
        .O(\EX/ALU/AU1/C_11 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[17]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[17].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_17 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFFE4F0000018F)) 
    \Data_OBUF[17]_inst_i_2 
       (.I0(Q[17]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[18]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[17].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[18]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[18].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[17].AUi/Y ),
        .I2(Q[17]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_17 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[18]_inst_i_2 
       (.I0(Q[18]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[18]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[18].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA89B)) 
    \Data_OBUF[18]_inst_i_3 
       (.I0(\Data_OBUF[18]_inst_i_6_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[17].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[18]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_15 ),
        .I1(I_OBUF[6]),
        .I2(Q[15]),
        .I3(\EX/ALU/AU1/aritGen[15].AUi/Y ),
        .I4(Q[16]),
        .I5(\EX/ALU/AU1/aritGen[16].AUi/Y ),
        .O(\EX/ALU/AU1/C_17 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[18]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[18]),
        .I2(\Q_reg[31]_0 [18]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[18]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[18]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[17]),
        .I2(\Q_reg[31]_0 [17]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[18]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAA8AA9F)) 
    \Data_OBUF[18]_inst_i_7 
       (.I0(\Data_OBUF[16]_inst_i_5_n_0 ),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .O(\EX/ALU/AU1/aritGen[16].AUi/Y ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[19]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[19].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_19 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[19]_inst_i_2 
       (.I0(Q[19]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[20]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[19].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[1]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[1].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[0].AUi/Y ),
        .I2(Q[0]),
        .I3(I_OBUF[6]),
        .I4(I_OBUF[11]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFF7FEFF000B010F)) 
    \Data_OBUF[1]_inst_i_2 
       (.I0(Q[1]),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .I5(\Data_OBUF[1]_inst_i_4_n_0 ),
        .O(\EX/ALU/AU1/aritGen[1].AUi/FA/N00__0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA5EFFF)) 
    \Data_OBUF[1]_inst_i_3 
       (.I0(\Data_OBUF[1]_inst_i_5_n_0 ),
        .I1(\Q_reg[31]_0 [0]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[2]),
        .I5(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\EX/ALU/AU1/aritGen[0].AUi/Y ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[1]_inst_i_4 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\Q_reg[31]_0 [1]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[1]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \Data_OBUF[1]_inst_i_5 
       (.I0(Q[0]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[1]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[20]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[20].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[19].AUi/Y ),
        .I2(Q[19]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_19 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[20]_inst_i_2 
       (.I0(Q[20]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[21]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[20].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[20]_inst_i_3 
       (.I0(\Data_OBUF[20]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[19].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[20]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_17 ),
        .I1(I_OBUF[6]),
        .I2(Q[17]),
        .I3(\EX/ALU/AU1/aritGen[17].AUi/Y ),
        .I4(Q[18]),
        .I5(\EX/ALU/AU1/aritGen[18].AUi/Y ),
        .O(\EX/ALU/AU1/C_19 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[20]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[19]),
        .I2(\Q_reg[31]_0 [19]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[20]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[21]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[21].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[20].AUi/Y ),
        .I2(Q[20]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_20 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0200001000000000)) 
    \Data_OBUF[21]_inst_i_10 
       (.I0(\Data_OBUF[13]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(Q[13]),
        .O(\Data_OBUF[21]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8A088A8A08088A08)) 
    \Data_OBUF[21]_inst_i_11 
       (.I0(\EX/ALU/AU1/aritGen[13].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[12].AUi/Y ),
        .I2(\Q_reg[12] ),
        .I3(\EX/ALU/AU1/aritGen[11].AUi/Y ),
        .I4(\Q_reg[11] ),
        .I5(\EX/ALU/AU1/C_11 ),
        .O(\Data_OBUF[21]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[21]_inst_i_2 
       (.I0(Q[21]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[21]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[21].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[21]_inst_i_3 
       (.I0(\Data_OBUF[21]_inst_i_6_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[20].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[21]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_18 ),
        .I1(I_OBUF[6]),
        .I2(Q[18]),
        .I3(\EX/ALU/AU1/aritGen[18].AUi/Y ),
        .I4(Q[19]),
        .I5(\EX/ALU/AU1/aritGen[19].AUi/Y ),
        .O(\EX/ALU/AU1/C_20 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[21]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[21]),
        .I2(\Q_reg[31]_0 [21]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[21]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[21]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[20]),
        .I2(\Q_reg[31]_0 [20]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[21]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[21]_inst_i_7 
       (.I0(\EX/ALU/AU1/C_16 ),
        .I1(I_OBUF[6]),
        .I2(Q[16]),
        .I3(\EX/ALU/AU1/aritGen[16].AUi/Y ),
        .I4(Q[17]),
        .I5(\EX/ALU/AU1/aritGen[17].AUi/Y ),
        .O(\EX/ALU/AU1/C_18 ));
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[21]_inst_i_8 
       (.I0(\Data_OBUF[18]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[18].AUi/Y ));
  LUT6 #(
    .INIT(64'hEF0EFFFF0000EF0E)) 
    \Data_OBUF[21]_inst_i_9 
       (.I0(\Data_OBUF[21]_inst_i_10_n_0 ),
        .I1(\Data_OBUF[21]_inst_i_11_n_0 ),
        .I2(\Q_reg[14] ),
        .I3(\EX/ALU/AU1/aritGen[14].AUi/Y ),
        .I4(\Q_reg[15] ),
        .I5(\EX/ALU/AU1/aritGen[15].AUi/Y ),
        .O(\EX/ALU/AU1/C_16 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[22]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[22].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_22 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[22]_inst_i_2 
       (.I0(Q[22]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[23]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[22].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[23]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[23].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[22].AUi/Y ),
        .I2(Q[22]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_22 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[23]_inst_i_2 
       (.I0(Q[23]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[23]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[23].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[23]_inst_i_3 
       (.I0(\Data_OBUF[23]_inst_i_6_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[22].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[23]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_20 ),
        .I1(I_OBUF[6]),
        .I2(Q[20]),
        .I3(\EX/ALU/AU1/aritGen[20].AUi/Y ),
        .I4(Q[21]),
        .I5(\EX/ALU/AU1/aritGen[21].AUi/Y ),
        .O(\EX/ALU/AU1/C_22 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[23]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[23]),
        .I2(\Q_reg[31]_0 [23]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[23]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[23]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[22]),
        .I2(\Q_reg[31]_0 [22]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[23]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[23]_inst_i_7 
       (.I0(\Data_OBUF[21]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[21].AUi/Y ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[24]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[24].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_24 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[24]_inst_i_2 
       (.I0(Q[24]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[25]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[24].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[25]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[25].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[24].AUi/Y ),
        .I2(Q[24]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_24 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[25]_inst_i_2 
       (.I0(Q[25]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[26]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[25].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[25]_inst_i_3 
       (.I0(\Data_OBUF[25]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[24].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[25]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_22 ),
        .I1(I_OBUF[6]),
        .I2(Q[22]),
        .I3(\EX/ALU/AU1/aritGen[22].AUi/Y ),
        .I4(Q[23]),
        .I5(\EX/ALU/AU1/aritGen[23].AUi/Y ),
        .O(\EX/ALU/AU1/C_24 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[25]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[24]),
        .I2(\Q_reg[31]_0 [24]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[25]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[26]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[26].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[25].AUi/Y ),
        .I2(Q[25]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_25 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0200001000000000)) 
    \Data_OBUF[26]_inst_i_10 
       (.I0(\Data_OBUF[18]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(Q[18]),
        .O(\Data_OBUF[26]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8A088A8A08088A08)) 
    \Data_OBUF[26]_inst_i_11 
       (.I0(\EX/ALU/AU1/aritGen[18].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[17].AUi/Y ),
        .I2(\Q_reg[17] ),
        .I3(\EX/ALU/AU1/aritGen[16].AUi/Y ),
        .I4(\Q_reg[16] ),
        .I5(\EX/ALU/AU1/C_16 ),
        .O(\Data_OBUF[26]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[26]_inst_i_2 
       (.I0(Q[26]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[26]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[26].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[26]_inst_i_3 
       (.I0(\Data_OBUF[26]_inst_i_6_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[25].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[26]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_23 ),
        .I1(I_OBUF[6]),
        .I2(Q[23]),
        .I3(\EX/ALU/AU1/aritGen[23].AUi/Y ),
        .I4(Q[24]),
        .I5(\EX/ALU/AU1/aritGen[24].AUi/Y ),
        .O(\EX/ALU/AU1/C_25 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[26]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[26]),
        .I2(\Q_reg[31]_0 [26]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[26]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[26]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[25]),
        .I2(\Q_reg[31]_0 [25]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[26]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[26]_inst_i_7 
       (.I0(\EX/ALU/AU1/C_21 ),
        .I1(I_OBUF[6]),
        .I2(Q[21]),
        .I3(\EX/ALU/AU1/aritGen[21].AUi/Y ),
        .I4(Q[22]),
        .I5(\EX/ALU/AU1/aritGen[22].AUi/Y ),
        .O(\EX/ALU/AU1/C_23 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[26]_inst_i_8 
       (.I0(\Data_OBUF[23]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[23].AUi/Y ));
  LUT6 #(
    .INIT(64'hEF0EFFFF0000EF0E)) 
    \Data_OBUF[26]_inst_i_9 
       (.I0(\Data_OBUF[26]_inst_i_10_n_0 ),
        .I1(\Data_OBUF[26]_inst_i_11_n_0 ),
        .I2(\Q_reg[19] ),
        .I3(\EX/ALU/AU1/aritGen[19].AUi/Y ),
        .I4(\Q_reg[20] ),
        .I5(\EX/ALU/AU1/aritGen[20].AUi/Y ),
        .O(\EX/ALU/AU1/C_21 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[27]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[27].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_27 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[27]_inst_i_2 
       (.I0(Q[27]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[28]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[27].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[28]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[28].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[27].AUi/Y ),
        .I2(Q[27]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_27 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[28]_inst_i_2 
       (.I0(Q[28]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[28]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[28].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[28]_inst_i_3 
       (.I0(\Data_OBUF[28]_inst_i_6_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[27].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[28]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_25 ),
        .I1(I_OBUF[6]),
        .I2(Q[25]),
        .I3(\EX/ALU/AU1/aritGen[25].AUi/Y ),
        .I4(Q[26]),
        .I5(\EX/ALU/AU1/aritGen[26].AUi/Y ),
        .O(\EX/ALU/AU1/C_27 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[28]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[28]),
        .I2(\Q_reg[31]_0 [28]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[28]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[28]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[27]),
        .I2(\Q_reg[31]_0 [27]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[28]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[28]_inst_i_7 
       (.I0(\Data_OBUF[26]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[26].AUi/Y ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[29]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[29].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_29 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[29]_inst_i_2 
       (.I0(Q[29]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[30]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[29].AUi/FA/N00__0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[2]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[2].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_2 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCCCCCC6FCCCCC9F0)) 
    \Data_OBUF[2]_inst_i_2 
       (.I0(Q[2]),
        .I1(\Data_OBUF[2]_inst_i_4_n_0 ),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(PC_OBUF[1]),
        .O(\EX/ALU/AU1/aritGen[2].AUi/FA/N00__0 ));
  LUT6 #(
    .INIT(64'hDDCCD540C4400000)) 
    \Data_OBUF[2]_inst_i_3 
       (.I0(\Data_OBUF[2]_inst_i_5_n_0 ),
        .I1(I_OBUF[6]),
        .I2(Q[0]),
        .I3(\EX/ALU/AU1/aritGen[0].AUi/Y ),
        .I4(Q[1]),
        .I5(\EX/ALU/AU1/aritGen[1].AUi/Y ),
        .O(\EX/ALU/AU1/C_2 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[2]_inst_i_4 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\Q_reg[31]_0 [2]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[2]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFED)) 
    \Data_OBUF[2]_inst_i_5 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[2]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[30]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[30].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[29].AUi/Y ),
        .I2(Q[29]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_29 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[30]_inst_i_2 
       (.I0(Q[30]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[31]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[30].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[30]_inst_i_3 
       (.I0(\Data_OBUF[30]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[29].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[30]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_27 ),
        .I1(I_OBUF[6]),
        .I2(Q[27]),
        .I3(\EX/ALU/AU1/aritGen[27].AUi/Y ),
        .I4(Q[28]),
        .I5(\EX/ALU/AU1/aritGen[28].AUi/Y ),
        .O(\EX/ALU/AU1/C_29 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[30]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[29]),
        .I2(\Q_reg[31]_0 [29]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[30]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[31]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[31].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[30].AUi/Y ),
        .I2(Q[30]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_30 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0200001000000000)) 
    \Data_OBUF[31]_inst_i_10 
       (.I0(\Data_OBUF[23]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(Q[23]),
        .O(\Data_OBUF[31]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8A088A8A08088A08)) 
    \Data_OBUF[31]_inst_i_11 
       (.I0(\EX/ALU/AU1/aritGen[23].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[22].AUi/Y ),
        .I2(\Q_reg[22] ),
        .I3(\EX/ALU/AU1/aritGen[21].AUi/Y ),
        .I4(\Q_reg[21] ),
        .I5(\EX/ALU/AU1/C_21 ),
        .O(\Data_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFEF0008001F)) 
    \Data_OBUF[31]_inst_i_2 
       (.I0(Q[31]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .I4(PC_OBUF[1]),
        .I5(\Data_OBUF[31]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[31].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[31]_inst_i_3 
       (.I0(\Data_OBUF[31]_inst_i_6_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[30].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[31]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_28 ),
        .I1(I_OBUF[6]),
        .I2(Q[28]),
        .I3(\EX/ALU/AU1/aritGen[28].AUi/Y ),
        .I4(Q[29]),
        .I5(\EX/ALU/AU1/aritGen[29].AUi/Y ),
        .O(\EX/ALU/AU1/C_30 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[31]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[31]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[31]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[31]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[30]),
        .I2(\Q_reg[31]_0 [30]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[31]_inst_i_7 
       (.I0(\EX/ALU/AU1/C_26 ),
        .I1(I_OBUF[6]),
        .I2(Q[26]),
        .I3(\EX/ALU/AU1/aritGen[26].AUi/Y ),
        .I4(Q[27]),
        .I5(\EX/ALU/AU1/aritGen[27].AUi/Y ),
        .O(\EX/ALU/AU1/C_28 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAABA9A3)) 
    \Data_OBUF[31]_inst_i_8 
       (.I0(\Data_OBUF[28]_inst_i_5_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[28].AUi/Y ));
  LUT6 #(
    .INIT(64'hEF0EFFFF0000EF0E)) 
    \Data_OBUF[31]_inst_i_9 
       (.I0(\Data_OBUF[31]_inst_i_10_n_0 ),
        .I1(\Data_OBUF[31]_inst_i_11_n_0 ),
        .I2(\Q_reg[24] ),
        .I3(\EX/ALU/AU1/aritGen[24].AUi/Y ),
        .I4(\Q_reg[25] ),
        .I5(\EX/ALU/AU1/aritGen[25].AUi/Y ),
        .O(\EX/ALU/AU1/C_26 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \Data_OBUF[3]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[3].AUi/Y ),
        .I1(Q[3]),
        .I2(I_OBUF[6]),
        .I3(\EX/ALU/AU1/C_3 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFEFAFEFA10140014)) 
    \Data_OBUF[3]_inst_i_2 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(\Q_reg[31]_0 [3]),
        .I5(\Data_OBUF[3]_inst_i_4_n_0 ),
        .O(\EX/ALU/AU1/aritGen[3].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[3]_inst_i_3 
       (.I0(\EX/ALU/AU1/C_1 ),
        .I1(I_OBUF[6]),
        .I2(Q[1]),
        .I3(\EX/ALU/AU1/aritGen[1].AUi/Y ),
        .I4(Q[2]),
        .I5(\EX/ALU/AU1/aritGen[2].AUi/Y ),
        .O(\EX/ALU/AU1/C_3 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \Data_OBUF[3]_inst_i_4 
       (.I0(Q[3]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F4E8D8D8DCC)) 
    \Data_OBUF[3]_inst_i_5 
       (.I0(I_OBUF[10]),
        .I1(I_OBUF[11]),
        .I2(\Data_OBUF[3]_inst_i_8_n_0 ),
        .I3(\Data_OBUF[3]_inst_i_9_n_0 ),
        .I4(\Data_OBUF[1]_inst_i_5_n_0 ),
        .I5(I_OBUF[0]),
        .O(\EX/ALU/AU1/C_1 ));
  LUT6 #(
    .INIT(64'h000001FF0000013F)) 
    \Data_OBUF[3]_inst_i_6 
       (.I0(Q[1]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Q_reg[31]_0 [1]),
        .O(\EX/ALU/AU1/aritGen[1].AUi/Y ));
  LUT6 #(
    .INIT(64'h000001FC0000013C)) 
    \Data_OBUF[3]_inst_i_7 
       (.I0(Q[2]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Q_reg[31]_0 [2]),
        .O(\EX/ALU/AU1/aritGen[2].AUi/Y ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFD7F)) 
    \Data_OBUF[3]_inst_i_8 
       (.I0(Q[0]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[3]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \Data_OBUF[3]_inst_i_9 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(\Q_reg[31]_0 [0]),
        .O(\Data_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB44B4B4B4BB4B4B4)) 
    \Data_OBUF[4]_inst_i_1 
       (.I0(I_OBUF[10]),
        .I1(\Data_OBUF[4]_inst_i_2_n_0 ),
        .I2(I_OBUF[11]),
        .I3(Q[4]),
        .I4(I_OBUF[6]),
        .I5(\EX/ALU/AU1/C_4 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[4]_inst_i_2 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\Q_reg[31]_0 [4]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \Data_OBUF[4]_inst_i_3 
       (.I0(\EX/ALU/AU1/C_3 ),
        .I1(I_OBUF[6]),
        .I2(Q[3]),
        .I3(\EX/ALU/AU1/aritGen[3].AUi/Y ),
        .O(\EX/ALU/AU1/C_4 ));
  LUT6 #(
    .INIT(64'hB44B4B4B4BB4B4B4)) 
    \Data_OBUF[5]_inst_i_1 
       (.I0(I_OBUF[10]),
        .I1(\Data_OBUF[5]_inst_i_2_n_0 ),
        .I2(I_OBUF[11]),
        .I3(Q[5]),
        .I4(I_OBUF[6]),
        .I5(\EX/ALU/AU1/C_5 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[5]_inst_i_2 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[5]),
        .I2(\Q_reg[31]_0 [5]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[5]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[6]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[6].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[5].AUi/Y ),
        .I2(Q[5]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_5 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFE4F0000018F)) 
    \Data_OBUF[6]_inst_i_2 
       (.I0(Q[6]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[6]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[6].AUi/FA/N00__0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAABA898)) 
    \Data_OBUF[6]_inst_i_3 
       (.I0(\Data_OBUF[5]_inst_i_2_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[5].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[6]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_3 ),
        .I1(I_OBUF[6]),
        .I2(Q[3]),
        .I3(\EX/ALU/AU1/aritGen[3].AUi/Y ),
        .I4(Q[4]),
        .I5(\EX/ALU/AU1/aritGen[4].AUi/Y ),
        .O(\EX/ALU/AU1/C_5 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[6]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\Q_reg[31]_0 [6]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[6]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAABA898)) 
    \Data_OBUF[6]_inst_i_6 
       (.I0(\Data_OBUF[4]_inst_i_2_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[4].AUi/Y ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_OBUF[7]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[7].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/C_7 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFE4F0000018F)) 
    \Data_OBUF[7]_inst_i_2 
       (.I0(Q[7]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[8]_inst_i_6_n_0 ),
        .O(\EX/ALU/AU1/aritGen[7].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \Data_OBUF[8]_inst_i_1 
       (.I0(\EX/ALU/AU1/aritGen[8].AUi/FA/N00__0 ),
        .I1(\EX/ALU/AU1/aritGen[7].AUi/Y ),
        .I2(Q[7]),
        .I3(I_OBUF[6]),
        .I4(\EX/ALU/AU1/C_7 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFFE4C0000018C)) 
    \Data_OBUF[8]_inst_i_2 
       (.I0(Q[8]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .I4(\I_OBUF[27]_inst_i_2_n_0 ),
        .I5(\Data_OBUF[8]_inst_i_5_n_0 ),
        .O(\EX/ALU/AU1/aritGen[8].AUi/FA/N00__0 ));
  LUT5 #(
    .INIT(32'hAAABA89B)) 
    \Data_OBUF[8]_inst_i_3 
       (.I0(\Data_OBUF[8]_inst_i_6_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[7].AUi/Y ));
  LUT6 #(
    .INIT(64'hEECCEA80C8800000)) 
    \Data_OBUF[8]_inst_i_4 
       (.I0(\EX/ALU/AU1/C_5 ),
        .I1(I_OBUF[6]),
        .I2(Q[5]),
        .I3(\EX/ALU/AU1/aritGen[5].AUi/Y ),
        .I4(Q[6]),
        .I5(\EX/ALU/AU1/aritGen[6].AUi/Y ),
        .O(\EX/ALU/AU1/C_7 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[8]_inst_i_5 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[8]),
        .I2(\Q_reg[31]_0 [8]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[8]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[8]_inst_i_6 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[7]),
        .I2(\Q_reg[31]_0 [7]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[8]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAABA89B)) 
    \Data_OBUF[8]_inst_i_7 
       (.I0(\Data_OBUF[6]_inst_i_5_n_0 ),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .O(\EX/ALU/AU1/aritGen[6].AUi/Y ));
  LUT6 #(
    .INIT(64'hB44B4B4B4BB4B4B4)) 
    \Data_OBUF[9]_inst_i_1 
       (.I0(I_OBUF[10]),
        .I1(\Data_OBUF[9]_inst_i_2_n_0 ),
        .I2(I_OBUF[11]),
        .I3(Q[9]),
        .I4(I_OBUF[6]),
        .I5(\EX/ALU/AU1/C_9 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_OBUF[9]_inst_i_2 
       (.I0(\Data_OBUF[9]_inst_i_3_n_0 ),
        .I1(Q[9]),
        .I2(\Q_reg[31]_0 [9]),
        .I3(\Data_OBUF[9]_inst_i_4_n_0 ),
        .O(\Data_OBUF[9]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \Data_OBUF[9]_inst_i_3 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[9]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \Data_OBUF[9]_inst_i_4 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Data_OBUF[9]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0019)) 
    \I_OBUF[15]_inst_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(I_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \I_OBUF[16]_inst_i_1 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \I_OBUF[17]_inst_i_1 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[3]));
  LUT4 #(
    .INIT(16'h1004)) 
    \I_OBUF[19]_inst_i_1 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \I_OBUF[1]_inst_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[2]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(I_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \I_OBUF[22]_inst_i_1 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .O(I_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0154)) 
    \I_OBUF[23]_inst_i_1 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[2]),
        .O(I_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \I_OBUF[24]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[2]),
        .I2(\I_OBUF[27]_inst_i_2_n_0 ),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0103)) 
    \I_OBUF[26]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0104)) 
    \I_OBUF[27]_inst_i_1 
       (.I0(\I_OBUF[27]_inst_i_2_n_0 ),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[11]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \I_OBUF[27]_inst_i_2 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[7]),
        .I4(PC_OBUF[5]),
        .O(\I_OBUF[27]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \I_OBUF[2]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(\I_OBUF[27]_inst_i_2_n_0 ),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[0]),
        .O(I_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \I_OBUF[3]_inst_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(I_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PC[0]_i_1 
       (.I0(PC_OBUF[0]),
        .O(PCplusOne[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .O(\PC[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PC[2]_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .O(PCplusOne[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PC[3]_i_1 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .O(PCplusOne[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PC[4]_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[4]),
        .O(PCplusOne[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PC[5]_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(PCplusOne[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[6]_i_1 
       (.I0(\PC[7]_i_2_n_0 ),
        .I1(PC_OBUF[6]),
        .O(PCplusOne[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PC[7]_i_1 
       (.I0(\PC[7]_i_2_n_0 ),
        .I1(PC_OBUF[6]),
        .I2(PC_OBUF[7]),
        .O(PCplusOne[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PC[7]_i_2 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[4]),
        .O(\PC[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[0]),
        .Q(PC_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\PC[1]_i_1_n_0 ),
        .Q(PC_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[2]),
        .Q(PC_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[3]),
        .Q(PC_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[4]),
        .Q(PC_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[5]),
        .Q(PC_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[6]),
        .Q(PC_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(PCplusOne[7]),
        .Q(PC_OBUF[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \Q[31]_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h001C)) 
    \Q[31]_i_1__0 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .I3(\I_OBUF[27]_inst_i_2_n_0 ),
        .O(\Q_reg[31] ));
endmodule

module RegisterFile
   (\Q_reg[11] ,
    Q,
    \Q_reg[11]_0 ,
    \Q_reg[11]_1 ,
    \Q_reg[11]_2 ,
    \Q_reg[16] ,
    \Q_reg[16]_0 ,
    \Q_reg[16]_1 ,
    \Q_reg[16]_2 ,
    \Q_reg[21] ,
    \Q_reg[21]_0 ,
    \Q_reg[21]_1 ,
    \Q_reg[21]_2 ,
    \Q_reg[26] ,
    \Q_reg[26]_0 ,
    \Q_reg[26]_1 ,
    \Q_reg[26]_2 ,
    \Q_reg[31] ,
    \Q_reg[31]_0 ,
    \Q_reg[31]_1 ,
    \Q_reg[31]_2 ,
    \Q_reg[31]_3 ,
    I_OBUF,
    E,
    D,
    CLK,
    \PC_reg[0] );
  output \Q_reg[11] ;
  output [31:0]Q;
  output \Q_reg[11]_0 ;
  output \Q_reg[11]_1 ;
  output \Q_reg[11]_2 ;
  output \Q_reg[16] ;
  output \Q_reg[16]_0 ;
  output \Q_reg[16]_1 ;
  output \Q_reg[16]_2 ;
  output \Q_reg[21] ;
  output \Q_reg[21]_0 ;
  output \Q_reg[21]_1 ;
  output \Q_reg[21]_2 ;
  output \Q_reg[26] ;
  output \Q_reg[26]_0 ;
  output \Q_reg[26]_1 ;
  output \Q_reg[26]_2 ;
  output \Q_reg[31] ;
  output \Q_reg[31]_0 ;
  output \Q_reg[31]_1 ;
  output \Q_reg[31]_2 ;
  output [31:0]\Q_reg[31]_3 ;
  input [0:0]I_OBUF;
  input [0:0]E;
  input [31:0]D;
  input CLK;
  input [0:0]\PC_reg[0] ;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]I_OBUF;
  wire [0:0]\PC_reg[0] ;
  wire [31:0]Q;
  wire \Q_reg[11] ;
  wire \Q_reg[11]_0 ;
  wire \Q_reg[11]_1 ;
  wire \Q_reg[11]_2 ;
  wire \Q_reg[16] ;
  wire \Q_reg[16]_0 ;
  wire \Q_reg[16]_1 ;
  wire \Q_reg[16]_2 ;
  wire \Q_reg[21] ;
  wire \Q_reg[21]_0 ;
  wire \Q_reg[21]_1 ;
  wire \Q_reg[21]_2 ;
  wire \Q_reg[26] ;
  wire \Q_reg[26]_0 ;
  wire \Q_reg[26]_1 ;
  wire \Q_reg[26]_2 ;
  wire \Q_reg[31] ;
  wire \Q_reg[31]_0 ;
  wire \Q_reg[31]_1 ;
  wire \Q_reg[31]_2 ;
  wire [31:0]\Q_reg[31]_3 ;

  RegisterN R2
       (.CLK(CLK),
        .D(D),
        .E(E),
        .I_OBUF(I_OBUF),
        .Q(Q),
        .\Q_reg[11]_0 (\Q_reg[11] ),
        .\Q_reg[11]_1 (\Q_reg[11]_0 ),
        .\Q_reg[11]_2 (\Q_reg[11]_1 ),
        .\Q_reg[11]_3 (\Q_reg[11]_2 ),
        .\Q_reg[16]_0 (\Q_reg[16] ),
        .\Q_reg[16]_1 (\Q_reg[16]_0 ),
        .\Q_reg[16]_2 (\Q_reg[16]_1 ),
        .\Q_reg[16]_3 (\Q_reg[16]_2 ),
        .\Q_reg[21]_0 (\Q_reg[21] ),
        .\Q_reg[21]_1 (\Q_reg[21]_0 ),
        .\Q_reg[21]_2 (\Q_reg[21]_1 ),
        .\Q_reg[21]_3 (\Q_reg[21]_2 ),
        .\Q_reg[26]_0 (\Q_reg[26] ),
        .\Q_reg[26]_1 (\Q_reg[26]_0 ),
        .\Q_reg[26]_2 (\Q_reg[26]_1 ),
        .\Q_reg[26]_3 (\Q_reg[26]_2 ),
        .\Q_reg[31]_0 (\Q_reg[31] ),
        .\Q_reg[31]_1 (\Q_reg[31]_0 ),
        .\Q_reg[31]_2 (\Q_reg[31]_1 ),
        .\Q_reg[31]_3 (\Q_reg[31]_2 ));
  RegisterN_0 R7
       (.CLK(CLK),
        .D(D),
        .\PC_reg[0] (\PC_reg[0] ),
        .\Q_reg[31]_0 (\Q_reg[31]_3 ));
endmodule

module RegisterN
   (\Q_reg[11]_0 ,
    Q,
    \Q_reg[11]_1 ,
    \Q_reg[11]_2 ,
    \Q_reg[11]_3 ,
    \Q_reg[16]_0 ,
    \Q_reg[16]_1 ,
    \Q_reg[16]_2 ,
    \Q_reg[16]_3 ,
    \Q_reg[21]_0 ,
    \Q_reg[21]_1 ,
    \Q_reg[21]_2 ,
    \Q_reg[21]_3 ,
    \Q_reg[26]_0 ,
    \Q_reg[26]_1 ,
    \Q_reg[26]_2 ,
    \Q_reg[26]_3 ,
    \Q_reg[31]_0 ,
    \Q_reg[31]_1 ,
    \Q_reg[31]_2 ,
    \Q_reg[31]_3 ,
    I_OBUF,
    E,
    D,
    CLK);
  output \Q_reg[11]_0 ;
  output [31:0]Q;
  output \Q_reg[11]_1 ;
  output \Q_reg[11]_2 ;
  output \Q_reg[11]_3 ;
  output \Q_reg[16]_0 ;
  output \Q_reg[16]_1 ;
  output \Q_reg[16]_2 ;
  output \Q_reg[16]_3 ;
  output \Q_reg[21]_0 ;
  output \Q_reg[21]_1 ;
  output \Q_reg[21]_2 ;
  output \Q_reg[21]_3 ;
  output \Q_reg[26]_0 ;
  output \Q_reg[26]_1 ;
  output \Q_reg[26]_2 ;
  output \Q_reg[26]_3 ;
  output \Q_reg[31]_0 ;
  output \Q_reg[31]_1 ;
  output \Q_reg[31]_2 ;
  output \Q_reg[31]_3 ;
  input [0:0]I_OBUF;
  input [0:0]E;
  input [31:0]D;
  input CLK;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]I_OBUF;
  wire [31:0]Q;
  wire \Q_reg[11]_0 ;
  wire \Q_reg[11]_1 ;
  wire \Q_reg[11]_2 ;
  wire \Q_reg[11]_3 ;
  wire \Q_reg[16]_0 ;
  wire \Q_reg[16]_1 ;
  wire \Q_reg[16]_2 ;
  wire \Q_reg[16]_3 ;
  wire \Q_reg[21]_0 ;
  wire \Q_reg[21]_1 ;
  wire \Q_reg[21]_2 ;
  wire \Q_reg[21]_3 ;
  wire \Q_reg[26]_0 ;
  wire \Q_reg[26]_1 ;
  wire \Q_reg[26]_2 ;
  wire \Q_reg[26]_3 ;
  wire \Q_reg[31]_0 ;
  wire \Q_reg[31]_1 ;
  wire \Q_reg[31]_2 ;
  wire \Q_reg[31]_3 ;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[11]_inst_i_12 
       (.I0(Q[4]),
        .I1(I_OBUF),
        .O(\Q_reg[11]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[11]_inst_i_13 
       (.I0(Q[5]),
        .I1(I_OBUF),
        .O(\Q_reg[11]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[11]_inst_i_16 
       (.I0(Q[2]),
        .I1(I_OBUF),
        .O(\Q_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[11]_inst_i_17 
       (.I0(Q[1]),
        .I1(I_OBUF),
        .O(\Q_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[16]_inst_i_12 
       (.I0(Q[9]),
        .I1(I_OBUF),
        .O(\Q_reg[16]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[16]_inst_i_13 
       (.I0(Q[10]),
        .I1(I_OBUF),
        .O(\Q_reg[16]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[16]_inst_i_14 
       (.I0(Q[7]),
        .I1(I_OBUF),
        .O(\Q_reg[16]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[16]_inst_i_15 
       (.I0(Q[6]),
        .I1(I_OBUF),
        .O(\Q_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[21]_inst_i_12 
       (.I0(Q[14]),
        .I1(I_OBUF),
        .O(\Q_reg[21]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[21]_inst_i_13 
       (.I0(Q[15]),
        .I1(I_OBUF),
        .O(\Q_reg[21]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[21]_inst_i_14 
       (.I0(Q[12]),
        .I1(I_OBUF),
        .O(\Q_reg[21]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[21]_inst_i_15 
       (.I0(Q[11]),
        .I1(I_OBUF),
        .O(\Q_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[26]_inst_i_12 
       (.I0(Q[19]),
        .I1(I_OBUF),
        .O(\Q_reg[26]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[26]_inst_i_13 
       (.I0(Q[20]),
        .I1(I_OBUF),
        .O(\Q_reg[26]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[26]_inst_i_14 
       (.I0(Q[17]),
        .I1(I_OBUF),
        .O(\Q_reg[26]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[26]_inst_i_15 
       (.I0(Q[16]),
        .I1(I_OBUF),
        .O(\Q_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[31]_inst_i_12 
       (.I0(Q[24]),
        .I1(I_OBUF),
        .O(\Q_reg[31]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[31]_inst_i_13 
       (.I0(Q[25]),
        .I1(I_OBUF),
        .O(\Q_reg[31]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[31]_inst_i_14 
       (.I0(Q[22]),
        .I1(I_OBUF),
        .O(\Q_reg[31]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Data_OBUF[31]_inst_i_15 
       (.I0(Q[21]),
        .I1(I_OBUF),
        .O(\Q_reg[31]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "RegisterN" *) 
module RegisterN_0
   (\Q_reg[31]_0 ,
    \PC_reg[0] ,
    D,
    CLK);
  output [31:0]\Q_reg[31]_0 ;
  input [0:0]\PC_reg[0] ;
  input [31:0]D;
  input CLK;

  wire CLK;
  wire [31:0]D;
  wire [0:0]\PC_reg[0] ;
  wire [31:0]\Q_reg[31]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[0]),
        .Q(\Q_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[10]),
        .Q(\Q_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[11]),
        .Q(\Q_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[12]),
        .Q(\Q_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[13]),
        .Q(\Q_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[14]),
        .Q(\Q_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[15]),
        .Q(\Q_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[16]),
        .Q(\Q_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[17]),
        .Q(\Q_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[18]),
        .Q(\Q_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[19]),
        .Q(\Q_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[1]),
        .Q(\Q_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[20]),
        .Q(\Q_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[21]),
        .Q(\Q_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[22]),
        .Q(\Q_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[23]),
        .Q(\Q_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[24]),
        .Q(\Q_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[25]),
        .Q(\Q_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[26]),
        .Q(\Q_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[27]),
        .Q(\Q_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[28]),
        .Q(\Q_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[29]),
        .Q(\Q_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[2]),
        .Q(\Q_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[30]),
        .Q(\Q_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[31]),
        .Q(\Q_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[3]),
        .Q(\Q_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[4]),
        .Q(\Q_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[5]),
        .Q(\Q_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[6]),
        .Q(\Q_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[7]),
        .Q(\Q_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[8]),
        .Q(\Q_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(\PC_reg[0] ),
        .D(D[9]),
        .Q(\Q_reg[31]_0 [9]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module SingleCycle
   (CLK,
    PC,
    I,
    Data);
  input CLK;
  output [31:0]PC;
  output [31:0]I;
  output [31:0]Data;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]Data;
  wire [31:0]Data_OBUF;
  wire [31:0]I;
  wire IFetch_n_53;
  wire [27:0]I_OBUF;
  wire OneHot_7;
  wire [31:0]PC;
  wire [7:0]PC_OBUF;
  wire RF_n_0;
  wire RF_n_1;
  wire RF_n_10;
  wire RF_n_11;
  wire RF_n_12;
  wire RF_n_13;
  wire RF_n_14;
  wire RF_n_15;
  wire RF_n_16;
  wire RF_n_17;
  wire RF_n_18;
  wire RF_n_19;
  wire RF_n_2;
  wire RF_n_20;
  wire RF_n_21;
  wire RF_n_22;
  wire RF_n_23;
  wire RF_n_24;
  wire RF_n_25;
  wire RF_n_26;
  wire RF_n_27;
  wire RF_n_28;
  wire RF_n_29;
  wire RF_n_3;
  wire RF_n_30;
  wire RF_n_31;
  wire RF_n_32;
  wire RF_n_33;
  wire RF_n_34;
  wire RF_n_35;
  wire RF_n_36;
  wire RF_n_37;
  wire RF_n_38;
  wire RF_n_39;
  wire RF_n_4;
  wire RF_n_40;
  wire RF_n_41;
  wire RF_n_42;
  wire RF_n_43;
  wire RF_n_44;
  wire RF_n_45;
  wire RF_n_46;
  wire RF_n_47;
  wire RF_n_48;
  wire RF_n_49;
  wire RF_n_5;
  wire RF_n_50;
  wire RF_n_51;
  wire RF_n_52;
  wire RF_n_53;
  wire RF_n_54;
  wire RF_n_55;
  wire RF_n_56;
  wire RF_n_57;
  wire RF_n_58;
  wire RF_n_59;
  wire RF_n_6;
  wire RF_n_60;
  wire RF_n_61;
  wire RF_n_62;
  wire RF_n_63;
  wire RF_n_64;
  wire RF_n_65;
  wire RF_n_66;
  wire RF_n_67;
  wire RF_n_68;
  wire RF_n_69;
  wire RF_n_7;
  wire RF_n_70;
  wire RF_n_71;
  wire RF_n_72;
  wire RF_n_73;
  wire RF_n_74;
  wire RF_n_75;
  wire RF_n_76;
  wire RF_n_77;
  wire RF_n_78;
  wire RF_n_79;
  wire RF_n_8;
  wire RF_n_80;
  wire RF_n_81;
  wire RF_n_82;
  wire RF_n_83;
  wire RF_n_9;

initial begin
 $sdf_annotate("testSingleCycle_time_synth.sdf",,,,"tool_control");
end
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC")) 
    CLK_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF_UNIQ_BASE_ CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF \Data_OBUF[0]_inst 
       (.I(Data_OBUF[0]),
        .O(Data[0]));
  OBUF \Data_OBUF[10]_inst 
       (.I(Data_OBUF[10]),
        .O(Data[10]));
  OBUF \Data_OBUF[11]_inst 
       (.I(Data_OBUF[11]),
        .O(Data[11]));
  OBUF \Data_OBUF[12]_inst 
       (.I(Data_OBUF[12]),
        .O(Data[12]));
  OBUF \Data_OBUF[13]_inst 
       (.I(Data_OBUF[13]),
        .O(Data[13]));
  OBUF \Data_OBUF[14]_inst 
       (.I(Data_OBUF[14]),
        .O(Data[14]));
  OBUF \Data_OBUF[15]_inst 
       (.I(Data_OBUF[15]),
        .O(Data[15]));
  OBUF \Data_OBUF[16]_inst 
       (.I(Data_OBUF[16]),
        .O(Data[16]));
  OBUF \Data_OBUF[17]_inst 
       (.I(Data_OBUF[17]),
        .O(Data[17]));
  OBUF \Data_OBUF[18]_inst 
       (.I(Data_OBUF[18]),
        .O(Data[18]));
  OBUF \Data_OBUF[19]_inst 
       (.I(Data_OBUF[19]),
        .O(Data[19]));
  OBUF \Data_OBUF[1]_inst 
       (.I(Data_OBUF[1]),
        .O(Data[1]));
  OBUF \Data_OBUF[20]_inst 
       (.I(Data_OBUF[20]),
        .O(Data[20]));
  OBUF \Data_OBUF[21]_inst 
       (.I(Data_OBUF[21]),
        .O(Data[21]));
  OBUF \Data_OBUF[22]_inst 
       (.I(Data_OBUF[22]),
        .O(Data[22]));
  OBUF \Data_OBUF[23]_inst 
       (.I(Data_OBUF[23]),
        .O(Data[23]));
  OBUF \Data_OBUF[24]_inst 
       (.I(Data_OBUF[24]),
        .O(Data[24]));
  OBUF \Data_OBUF[25]_inst 
       (.I(Data_OBUF[25]),
        .O(Data[25]));
  OBUF \Data_OBUF[26]_inst 
       (.I(Data_OBUF[26]),
        .O(Data[26]));
  OBUF \Data_OBUF[27]_inst 
       (.I(Data_OBUF[27]),
        .O(Data[27]));
  OBUF \Data_OBUF[28]_inst 
       (.I(Data_OBUF[28]),
        .O(Data[28]));
  OBUF \Data_OBUF[29]_inst 
       (.I(Data_OBUF[29]),
        .O(Data[29]));
  OBUF \Data_OBUF[2]_inst 
       (.I(Data_OBUF[2]),
        .O(Data[2]));
  OBUF \Data_OBUF[30]_inst 
       (.I(Data_OBUF[30]),
        .O(Data[30]));
  OBUF \Data_OBUF[31]_inst 
       (.I(Data_OBUF[31]),
        .O(Data[31]));
  OBUF \Data_OBUF[3]_inst 
       (.I(Data_OBUF[3]),
        .O(Data[3]));
  OBUF \Data_OBUF[4]_inst 
       (.I(Data_OBUF[4]),
        .O(Data[4]));
  OBUF \Data_OBUF[5]_inst 
       (.I(Data_OBUF[5]),
        .O(Data[5]));
  OBUF \Data_OBUF[6]_inst 
       (.I(Data_OBUF[6]),
        .O(Data[6]));
  OBUF \Data_OBUF[7]_inst 
       (.I(Data_OBUF[7]),
        .O(Data[7]));
  OBUF \Data_OBUF[8]_inst 
       (.I(Data_OBUF[8]),
        .O(Data[8]));
  OBUF \Data_OBUF[9]_inst 
       (.I(Data_OBUF[9]),
        .O(Data[9]));
  InstructionFetch IFetch
       (.CLK(CLK_IBUF_BUFG),
        .D(Data_OBUF),
        .E(OneHot_7),
        .I_OBUF({I_OBUF[27:26],I_OBUF[24:22],I_OBUF[19],I_OBUF[15:14],I_OBUF[6],I_OBUF[3:2],I_OBUF[0]}),
        .PC_OBUF(PC_OBUF),
        .Q({RF_n_1,RF_n_2,RF_n_3,RF_n_4,RF_n_5,RF_n_6,RF_n_7,RF_n_8,RF_n_9,RF_n_10,RF_n_11,RF_n_12,RF_n_13,RF_n_14,RF_n_15,RF_n_16,RF_n_17,RF_n_18,RF_n_19,RF_n_20,RF_n_21,RF_n_22,RF_n_23,RF_n_24,RF_n_25,RF_n_26,RF_n_27,RF_n_28,RF_n_29,RF_n_30,RF_n_31,RF_n_32}),
        .\Q_reg[10] (RF_n_39),
        .\Q_reg[11] (RF_n_40),
        .\Q_reg[12] (RF_n_41),
        .\Q_reg[14] (RF_n_42),
        .\Q_reg[15] (RF_n_43),
        .\Q_reg[16] (RF_n_44),
        .\Q_reg[17] (RF_n_45),
        .\Q_reg[19] (RF_n_46),
        .\Q_reg[1] (RF_n_0),
        .\Q_reg[20] (RF_n_47),
        .\Q_reg[21] (RF_n_48),
        .\Q_reg[22] (RF_n_49),
        .\Q_reg[24] (RF_n_50),
        .\Q_reg[25] (RF_n_51),
        .\Q_reg[2] (RF_n_33),
        .\Q_reg[31] (IFetch_n_53),
        .\Q_reg[31]_0 ({RF_n_52,RF_n_53,RF_n_54,RF_n_55,RF_n_56,RF_n_57,RF_n_58,RF_n_59,RF_n_60,RF_n_61,RF_n_62,RF_n_63,RF_n_64,RF_n_65,RF_n_66,RF_n_67,RF_n_68,RF_n_69,RF_n_70,RF_n_71,RF_n_72,RF_n_73,RF_n_74,RF_n_75,RF_n_76,RF_n_77,RF_n_78,RF_n_79,RF_n_80,RF_n_81,RF_n_82,RF_n_83}),
        .\Q_reg[4] (RF_n_34),
        .\Q_reg[5] (RF_n_35),
        .\Q_reg[6] (RF_n_36),
        .\Q_reg[7] (RF_n_37),
        .\Q_reg[9] (RF_n_38));
  OBUF \I_OBUF[0]_inst 
       (.I(I_OBUF[0]),
        .O(I[0]));
  OBUF \I_OBUF[10]_inst 
       (.I(I_OBUF[6]),
        .O(I[10]));
  OBUF \I_OBUF[11]_inst 
       (.I(1'b0),
        .O(I[11]));
  OBUF \I_OBUF[12]_inst 
       (.I(I_OBUF[6]),
        .O(I[12]));
  OBUF \I_OBUF[13]_inst 
       (.I(I_OBUF[6]),
        .O(I[13]));
  OBUF \I_OBUF[14]_inst 
       (.I(I_OBUF[14]),
        .O(I[14]));
  OBUF \I_OBUF[15]_inst 
       (.I(I_OBUF[15]),
        .O(I[15]));
  OBUF \I_OBUF[16]_inst 
       (.I(I_OBUF[14]),
        .O(I[16]));
  OBUF \I_OBUF[17]_inst 
       (.I(I_OBUF[6]),
        .O(I[17]));
  OBUF \I_OBUF[18]_inst 
       (.I(1'b0),
        .O(I[18]));
  OBUF \I_OBUF[19]_inst 
       (.I(I_OBUF[19]),
        .O(I[19]));
  OBUF \I_OBUF[1]_inst 
       (.I(I_OBUF[0]),
        .O(I[1]));
  OBUF \I_OBUF[20]_inst 
       (.I(1'b0),
        .O(I[20]));
  OBUF \I_OBUF[21]_inst 
       (.I(1'b0),
        .O(I[21]));
  OBUF \I_OBUF[22]_inst 
       (.I(I_OBUF[22]),
        .O(I[22]));
  OBUF \I_OBUF[23]_inst 
       (.I(I_OBUF[23]),
        .O(I[23]));
  OBUF \I_OBUF[24]_inst 
       (.I(I_OBUF[24]),
        .O(I[24]));
  OBUF \I_OBUF[25]_inst 
       (.I(1'b0),
        .O(I[25]));
  OBUF \I_OBUF[26]_inst 
       (.I(I_OBUF[26]),
        .O(I[26]));
  OBUF \I_OBUF[27]_inst 
       (.I(I_OBUF[27]),
        .O(I[27]));
  OBUF \I_OBUF[28]_inst 
       (.I(1'b0),
        .O(I[28]));
  OBUF \I_OBUF[29]_inst 
       (.I(1'b0),
        .O(I[29]));
  OBUF \I_OBUF[2]_inst 
       (.I(I_OBUF[2]),
        .O(I[2]));
  OBUF \I_OBUF[30]_inst 
       (.I(1'b0),
        .O(I[30]));
  OBUF \I_OBUF[31]_inst 
       (.I(1'b0),
        .O(I[31]));
  OBUF \I_OBUF[3]_inst 
       (.I(I_OBUF[3]),
        .O(I[3]));
  OBUF \I_OBUF[4]_inst 
       (.I(1'b0),
        .O(I[4]));
  OBUF \I_OBUF[5]_inst 
       (.I(1'b0),
        .O(I[5]));
  OBUF \I_OBUF[6]_inst 
       (.I(I_OBUF[6]),
        .O(I[6]));
  OBUF \I_OBUF[7]_inst 
       (.I(I_OBUF[6]),
        .O(I[7]));
  OBUF \I_OBUF[8]_inst 
       (.I(1'b0),
        .O(I[8]));
  OBUF \I_OBUF[9]_inst 
       (.I(1'b0),
        .O(I[9]));
  OBUF \PC_OBUF[0]_inst 
       (.I(PC_OBUF[0]),
        .O(PC[0]));
  OBUF \PC_OBUF[10]_inst 
       (.I(1'b0),
        .O(PC[10]));
  OBUF \PC_OBUF[11]_inst 
       (.I(1'b0),
        .O(PC[11]));
  OBUF \PC_OBUF[12]_inst 
       (.I(1'b0),
        .O(PC[12]));
  OBUF \PC_OBUF[13]_inst 
       (.I(1'b0),
        .O(PC[13]));
  OBUF \PC_OBUF[14]_inst 
       (.I(1'b0),
        .O(PC[14]));
  OBUF \PC_OBUF[15]_inst 
       (.I(1'b0),
        .O(PC[15]));
  OBUF \PC_OBUF[16]_inst 
       (.I(1'b0),
        .O(PC[16]));
  OBUF \PC_OBUF[17]_inst 
       (.I(1'b0),
        .O(PC[17]));
  OBUF \PC_OBUF[18]_inst 
       (.I(1'b0),
        .O(PC[18]));
  OBUF \PC_OBUF[19]_inst 
       (.I(1'b0),
        .O(PC[19]));
  OBUF \PC_OBUF[1]_inst 
       (.I(PC_OBUF[1]),
        .O(PC[1]));
  OBUF \PC_OBUF[20]_inst 
       (.I(1'b0),
        .O(PC[20]));
  OBUF \PC_OBUF[21]_inst 
       (.I(1'b0),
        .O(PC[21]));
  OBUF \PC_OBUF[22]_inst 
       (.I(1'b0),
        .O(PC[22]));
  OBUF \PC_OBUF[23]_inst 
       (.I(1'b0),
        .O(PC[23]));
  OBUF \PC_OBUF[24]_inst 
       (.I(1'b0),
        .O(PC[24]));
  OBUF \PC_OBUF[25]_inst 
       (.I(1'b0),
        .O(PC[25]));
  OBUF \PC_OBUF[26]_inst 
       (.I(1'b0),
        .O(PC[26]));
  OBUF \PC_OBUF[27]_inst 
       (.I(1'b0),
        .O(PC[27]));
  OBUF \PC_OBUF[28]_inst 
       (.I(1'b0),
        .O(PC[28]));
  OBUF \PC_OBUF[29]_inst 
       (.I(1'b0),
        .O(PC[29]));
  OBUF \PC_OBUF[2]_inst 
       (.I(PC_OBUF[2]),
        .O(PC[2]));
  OBUF \PC_OBUF[30]_inst 
       (.I(1'b0),
        .O(PC[30]));
  OBUF \PC_OBUF[31]_inst 
       (.I(1'b0),
        .O(PC[31]));
  OBUF \PC_OBUF[3]_inst 
       (.I(PC_OBUF[3]),
        .O(PC[3]));
  OBUF \PC_OBUF[4]_inst 
       (.I(PC_OBUF[4]),
        .O(PC[4]));
  OBUF \PC_OBUF[5]_inst 
       (.I(PC_OBUF[5]),
        .O(PC[5]));
  OBUF \PC_OBUF[6]_inst 
       (.I(PC_OBUF[6]),
        .O(PC[6]));
  OBUF \PC_OBUF[7]_inst 
       (.I(PC_OBUF[7]),
        .O(PC[7]));
  OBUF \PC_OBUF[8]_inst 
       (.I(1'b0),
        .O(PC[8]));
  OBUF \PC_OBUF[9]_inst 
       (.I(1'b0),
        .O(PC[9]));
  RegisterFile RF
       (.CLK(CLK_IBUF_BUFG),
        .D(Data_OBUF),
        .E(IFetch_n_53),
        .I_OBUF(I_OBUF[19]),
        .\PC_reg[0] (OneHot_7),
        .Q({RF_n_1,RF_n_2,RF_n_3,RF_n_4,RF_n_5,RF_n_6,RF_n_7,RF_n_8,RF_n_9,RF_n_10,RF_n_11,RF_n_12,RF_n_13,RF_n_14,RF_n_15,RF_n_16,RF_n_17,RF_n_18,RF_n_19,RF_n_20,RF_n_21,RF_n_22,RF_n_23,RF_n_24,RF_n_25,RF_n_26,RF_n_27,RF_n_28,RF_n_29,RF_n_30,RF_n_31,RF_n_32}),
        .\Q_reg[11] (RF_n_0),
        .\Q_reg[11]_0 (RF_n_33),
        .\Q_reg[11]_1 (RF_n_34),
        .\Q_reg[11]_2 (RF_n_35),
        .\Q_reg[16] (RF_n_36),
        .\Q_reg[16]_0 (RF_n_37),
        .\Q_reg[16]_1 (RF_n_38),
        .\Q_reg[16]_2 (RF_n_39),
        .\Q_reg[21] (RF_n_40),
        .\Q_reg[21]_0 (RF_n_41),
        .\Q_reg[21]_1 (RF_n_42),
        .\Q_reg[21]_2 (RF_n_43),
        .\Q_reg[26] (RF_n_44),
        .\Q_reg[26]_0 (RF_n_45),
        .\Q_reg[26]_1 (RF_n_46),
        .\Q_reg[26]_2 (RF_n_47),
        .\Q_reg[31] (RF_n_48),
        .\Q_reg[31]_0 (RF_n_49),
        .\Q_reg[31]_1 (RF_n_50),
        .\Q_reg[31]_2 (RF_n_51),
        .\Q_reg[31]_3 ({RF_n_52,RF_n_53,RF_n_54,RF_n_55,RF_n_56,RF_n_57,RF_n_58,RF_n_59,RF_n_60,RF_n_61,RF_n_62,RF_n_63,RF_n_64,RF_n_65,RF_n_66,RF_n_67,RF_n_68,RF_n_69,RF_n_70,RF_n_71,RF_n_72,RF_n_73,RF_n_74,RF_n_75,RF_n_76,RF_n_77,RF_n_78,RF_n_79,RF_n_80,RF_n_81,RF_n_82,RF_n_83}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
