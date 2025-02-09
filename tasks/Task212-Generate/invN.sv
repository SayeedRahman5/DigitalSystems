// Example of generate for to replicate hardware
module invN #(parameter N=8) (output logic[N-1:0] Y, input logic[N-1:0] X);

//An integer that will never be represented in the final synthesis
genvar i;

generate 
 for (i=0; i<N; i=i+1) 
 begin : i_loop1
	if(i%2 == 0)
		not ui (Y[i], X[i]);
	else if (i%2 != 0)
		or ui (Y[i], X[i]);		
 end
endgenerate

endmodule



