`include "xgriscv_defines.v"
module xgriscv_sc(clk, reset, pc);
  input             clk, reset;
  output [31:0]     pc;
   
  imem U_imem(pc, instr);

  dmem U_dmem(clk, memwrite, addr, writedata, readdata);
  
  
endmodule
