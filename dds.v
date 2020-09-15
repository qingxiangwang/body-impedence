module dds 


#(parameter Fword_width=28,
  parameter Pword_width=10,
  parameter wave_o1_width=12)


(wave_o1,clk,fre_w,pha_w);





//端口声明

output [wave_o1_width-1:0] wave_o1;
input clk;
input [Fword_width-1:0] fre_w;
input [Pword_width-1:0] pha_w;

//---------------------------------------------
//

 
//reg  [Fword_width-1:0] reg_Fword =0; 
//reg  [Pword_width-1:0] reg_Pword =0;
reg  [Fword_width-1:0] reg_Fword=0;
always@(posedge clk) begin


reg_Fword<=fre_w;


end

reg [Fword_width-1:0] address_reg=0;

always@(posedge clk) begin

address_reg<=address_reg+reg_Fword;

end
//rom 模块
wire [11:0]rom_address;

assign rom_address=address_reg[Fword_width-1:16];

//assign wave_o1=rom_address;
ROM_SIN_3  ROM1(
	.address(rom_address),
	.clock(clk),
	.q(wave_o1));

endmodule

