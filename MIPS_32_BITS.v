
module MIPS_32_BITS(  
	input clk
);

 //conexiones
 
 wire [31:0]MEM_B, RD1_B,RD2_B,CA,CB,CRes,CFetch1,CFetch2,CFetch3,Res_Mem;
 wire [31:0]Shift_Sum, Sum_BFF3,MuxALU,J_BFF2,CJump2,WD_Mem,Mem_BFF4,AMux3,BMux3,Mux3_BR;
 wire [31:0]Fetch_Mux4,FetchB_Mux4;
 wire [4:0]CRS,CRT,CRD,CRT2,CRD2,CJump,COpcode,Mux_BFF,CWR,WR_BR;
 wire [3:0]Sel_B, B_ALU;
 wire [1:0]ALUOP,ALUOP1;
	//Conexiones del control
 wire ZF,ZF_AND,PCSrc,Mux_PC,RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite;
 wire RegDst1,Branch1,MemRead1,MemtoReg1,MemWrite1,ALUSrc1,RegWrite1;
 wire Branch2,MemRead2,MemtoReg2,MemWrite2,RegWrite2,  MemtoReg3,RegWrite3;
 
 //instancias
 
 Ciclo_Fetch a1(.out(Fetch_Mux4),.Dir(Mux_PC),.clk(clk),.Sal(MEM_B),.Fetch(CFetch1));
 
 Buffer1 a2(.in(MEM_B),.clk(clk),.Fetch(CFetch1),.RS(CRS),.RT(CRT),.RD(CRD),.Opcode(COpcode),
            .Jump(CJump),.SFetch(CFetch2));
 
 Unidad_Control a3(.in(COpcode),.RegDst(RegDst),.Branch(Branch),.MemRead(MemRead),.ALUOP(ALUOP),
                   .MemtoReg(MemtoReg),.MemWrite(MemWrite),.ALUSrc(ALUSrc),.RegWrite(RegWrite));
 
 Banco_Registros a4(.Read_Reg1(CRS),.Read_Reg2(CRT),.Write_Reg(WR_BR),.RegWrite(RegWrite3),
                    .Read_data1(RD1_B),.Read_data2(RD2_B),.Write_Data(Mux3_BR));
 
 Sign_Extend a5(.in(CJump),.out(J_BFF2));
 

 Buffer2 a6(.Fetch(CFetch2),.Sel(Sel_B),.clk(clk),.A(RD1_B),.B(RD2_B),.SFetch(CFetch3),
            .SSel(B_ALU),.SA(CA),.SB(CB),.Jump(J_BFF2),.RT(CRT),.RD(CRD),.SRD(CRD2),.SRT(CRT2),
				.SJump(CJump2),.RegDst(RegDst),.Branch(Branch),.MemRead(MemRead),.ALUOP(ALUOP),
            .MemtoReg(MemtoReg),.MemWrite(MemWrite),.ALUSrc(ALUSrc),.RegWrite(RegWrite),
				.SRegDst(RegDst1),.SBranch(Branch1),.SMemRead(MemRead1),.SALUOP(ALUOP1),
            .SMemtoReg(MemtoReg1),.SMemWrite(MemWrite1),.SALUSrc(ALUSrc1),.SRegWrite(RegWrite1));
				
 Mux num1(.in(RegDst1),.A(CRT2),.B(CRD2),.Sal(Mux_BFF));
				
 Shift_Left2 a7(.in(CJump2),.out(Shift_Sum));
 
 ALU_Control a8(.ALUOP(ALUOP1),.Funct(CJump2[5:0]),.Sel(Sel_B));
				
 Sumador a9(.A(CFetch3),.B(Shift_Sum),.Res(Sum_BFF3));
 
 Mux2 num2(.in(ALUSrc1),.A(CB),.B(CJump2),.Sal(MuxALU));
 
 ALU a10(.A(CA),.B(MuxALU),.Sel(B_ALU),.zero_flag(ZF),.Res(CRes));
 
 Buffer3 a11(.Fetch(Sum_BFF3),.Res_ALU(CRes),.clk(clk),.zero_flag(ZF),.SRes_ALU(Res_Mem),
             .Write_Data(CB),.Sal_zf(ZF_AND),.Write_Reg(Mux_BFF),.Sal_WR(CWR),.SFetch(FetchB_Mux4),
				 .SalWD(WD_Mem),.Branch(Branch1),.MemRead(MemRead1),.MemtoReg(MemtoReg1),
				 .MemWrite(MemWrite1),.RegWrite(RegWrite1),.SBranch(Branch2),.SMemRead(MemRead2),
				 .SMemtoReg(MemtoReg2),.SMemWrite(MemWrite2),.SRegWrite(RegWrite2));
				
 Memoria_datos a12(.Adress(Res_Mem),.Write_Data(WD_Mem),.Read_Data(Mem_BFF4),
                   .MemWrite(MemWrite2),.MemRead(MemRead2));
				
 Buffer4 a13(.Read_Data(Mem_BFF4),.ResALU(Res_Mem),.Write_Reg(CWR),.Sal_WR(WR_BR),
             .Sal_RD(AMux3),.SResALU(BMux3),.MemtoReg(MemtoReg2),.RegWrite(RegWrite2),
				 .SMemtoReg(MemtoReg3),.SRegWrite(RegWrite3));
				 
 Mux2 num3(.A(AMux3),.B(BMux3),.in(MemtoReg3),.Sal(Mux3_BR));
 
 AND_ a14(.A(Branch2),.B(ZF_AND),.Sal(PCSrc));
 
 Mux2 num4(.A(Fetch_Mux4),.B(FetchB_Mux4),.in(PCSrc),.Sal(Mux_PC));
				
 
endmodule
