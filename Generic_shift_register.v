
//generic shift register

module generic_shift_register
#(parameter n=6)
(
input clk,
input I,
output out
);
reg [0:n-1] Q_next,Q_current;
integer k;
always @(posedge clk) 
begin
	Q_current<=Q_next;
	
end

always @(Q_current,I)
begin
	Q_next = {I,Q_current[0:n-2]}; //Right shift
	// Q_next = (Q_current[1:n-1],I) ; // Left shift
end
assign out =Q_current[n-1];    // right shift

endmodule
