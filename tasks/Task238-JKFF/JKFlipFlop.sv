module JKFLIPFLOP(output logic Q, input logic J, K, CLK); //JK Flip flop component (Synchronous)

always @(negedge CLK) begin              //Q only changes at falling edges
						
	case({J,K})
		2'b10 : Q <= 1'b1;	//Q latches high when J is high and K is low
		2'b01 : Q <= 1'b0;	//Q latches low when J is low and K is high
		2'b11 : Q <= ~Q;	//Q toggles state/inverts when J and K are high
					//Q latches to previous value implicitly when J and K are low
	endcase				
end

endmodule