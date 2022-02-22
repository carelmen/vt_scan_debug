module chain(input reset, input clock, input in, output out, input [7:0] poly);

reg [7:0] chain;

always @(posedge clock or posedge reset)
begin
	if(reset == 1'b1)
	 chain <=  poly;
	else
	begin
	chain[7] <= chain[6];	
	chain[6] <= chain[5];	
	chain[5] <= chain[4];	
	chain[4] <= chain[3];	
	chain[3] <= chain[2];	
	chain[2] <= chain[1];	
	chain[1] <= chain[0];	

	chain[0] = in ^ chain[3] ^ chain[6];
	
	end
end
assign out  = chain[7];

endmodule

module asic (input reset, input clock, input [3:0] scan_in, output reg [3:0] scan_out);


wire [3:0] bus;
chain c0(reset, clock, scan_in[3], bus[3], 8'h49);
chain c1(reset, clock, scan_in[2], bus[2], 8'hfb);
chain c2(reset, clock, scan_in[1], bus[1], 8'h1a);
chain c3(reset, clock, scan_in[0], bus[0], 8'h5e);


always @(posedge clock or posedge reset) 

	begin
	if(reset == 1'b1)
 	scan_out <= 4'b0;

	else if(clock == 1'b1)
	begin 
	scan_out[3] <= bus[3]; #1
	scan_out[2] <= bus[2]; 
	scan_out[1] <= bus[1];  #2
	scan_out[0] <= bus[0];
	end 
	end

endmodule


module top();

reg clock, reset;
wire [3:0] scan_out;
wire [3:0] scan_in;

initial begin 
clock <= 1'b0;
reset <= 1'b1; # 100
reset <= 1'b0;


$dumpfile("asic.vcd");
$dumpvars(1, clock);
$dumpvars(1, reset);
$dumpvars(1, scan_out);
$dumpvars(1, scan_in);



# 100
$finish;
 # 500 reset <= 1'b1;
 # 1 reset <= 1'b0;
end

always @(negedge clock)
begin
$display("R1 scan %b %b %b %b %b %b %b %b %b %% %03d;",   reset, scan_in[3], scan_in[2], scan_in[1], scan_in[0], scan_out[3], scan_out[2], scan_out[1], scan_out[0], $time);
 end


always begin
#5 clock <= 1'b0;
#5 clock <= 1'b1;


end

asic  f0 ( reset, clock, scan_in, scan_out);

chain s0(reset, clock, 1'b0, scan_in[3], 8'ha5);
chain s1(reset, clock, 1'b0, scan_in[2], 8'hfb);
chain s2(reset, clock, 1'b0, scan_in[1], 8'h25);
chain s3(reset, clock, 1'b0, scan_in[0], 8'hb1);



endmodule
