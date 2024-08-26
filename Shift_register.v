
// 4 bit shift register

module shift_register
(
input clk,
input I,
output  out
);

reg Q_1,Q_2,Q_3,Q_current,Q_next;

always @(posedge clk) 
begin
	Q_current<=Q_3;
	Q_3<=Q_2;
	Q_2<=Q_1;
	Q_1<=Q_next;	
end

always @(I)
begin
	Q_next=I;
end

assign out =Q_current;

endmodule
