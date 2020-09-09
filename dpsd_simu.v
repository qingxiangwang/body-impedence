module dpsd_simu


#(parameter Fword_width=28,
  parameter Pword_width=10,
  parameter wave_o1_width=12)


(dds_fir_out,clk,fre_w,pha_w);


 
output [wave_o1_width-1:0] dds_fir_out;
input clk;
input [Fword_width-1:0] fre_w;
input [Pword_width-1:0] pha_w;

//---------------------------------------------
//

 
 //input noise;

 

//always @(posedge clk) begin
//  a =0;
//  end
//endmodule


dds  ddsi0(.wave_o1(dds_fir_out),
			  .clk(clk),
			  .fre_w(fre_w),
			  .pha_w(pha_w));

endmodule