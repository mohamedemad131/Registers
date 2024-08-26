
// generic n bit register

module register
#(parameter n=4)
(
input clk,
input [n-1:0] I,
output [n-1:0] Q
);

reg Q_current,Q_next;

always @(posedge clk)
begin
	Q_current=Q_current;
	Q_current<=Q_next;
end

always @(I) 
begin
	Q_next=Q_current;
	Q_next=I;
end

assign Q = Q_next;
endmodule