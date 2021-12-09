//lpm_divide CBX_SINGLE_OUTPUT_FILE="ON" LPM_DREPRESENTATION="UNSIGNED" LPM_HINT="MAXIMIZE_SPEED=6,LPM_REMAINDERPOSITIVE=FALSE" LPM_NREPRESENTATION="UNSIGNED" LPM_TYPE="LPM_DIVIDE" LPM_WIDTHD=9 LPM_WIDTHN=48 denom numer quotient remain
//VERSION_BEGIN 18.1 cbx_mgl 2018:09:12:13:10:36:SJ cbx_stratixii 2018:09:12:13:04:24:SJ cbx_util_mgl 2018:09:12:13:04:24:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2018  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details.



//synthesis_resources = lpm_divide 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgd7m
	( 
	denom,
	numer,
	quotient,
	remain) /* synthesis synthesis_clearbox=1 */;
	input   [8:0]  denom;
	input   [47:0]  numer;
	output   [47:0]  quotient;
	output   [8:0]  remain;

	wire  [47:0]   wire_mgl_prim1_quotient;
	wire  [8:0]   wire_mgl_prim1_remain;

	lpm_divide   mgl_prim1
	( 
	.denom(denom),
	.numer(numer),
	.quotient(wire_mgl_prim1_quotient),
	.remain(wire_mgl_prim1_remain));
	defparam
		mgl_prim1.lpm_drepresentation = "UNSIGNED",
		mgl_prim1.lpm_nrepresentation = "UNSIGNED",
		mgl_prim1.lpm_type = "LPM_DIVIDE",
		mgl_prim1.lpm_widthd = 9,
		mgl_prim1.lpm_widthn = 48,
		mgl_prim1.lpm_hint = "MAXIMIZE_SPEED=6,LPM_REMAINDERPOSITIVE=FALSE";
	assign
		quotient = wire_mgl_prim1_quotient,
		remain = wire_mgl_prim1_remain;
endmodule //mgd7m
//VALID FILE
