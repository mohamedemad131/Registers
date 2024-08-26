

// generic n bit register with load

module register_load
#(parameter n=4)
(
input clk,
input load,
input [n-1:0] I,
output [n-1:0] Q
);

reg Q_current,Q_next;

always @(posedge clk)
begin
	Q_current=Q_current;

	Q_current<=Q_next;

end

always @(I,load) 
begin
	Q_next=Q_current;
	if(load==1)
		Q_next=I;
	else
		Q_next=Q_current;
end

assign Q = Q_next;
endmodule