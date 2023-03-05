module d_ffN_tb;
parameter N = 8;
logic CLK = 0;
logic [N-1:0] D;
logic [N-1:0] Q;
logic n_res,EN;

//Instantiate a DFF
d_ffN u1(Q,D,CLK,n_res,EN);

//Generate 5 clock cycles
initial begin
	CLK=0;
     	repeat(20) 
		#50ps CLK = ~CLK;  
end 

//Tests (synchronous - write on falling edge of the clock; read on rising)
initial begin
	// Reset
    n_res = 1'b0;
    D = 8'b0;
    EN = 1'b0;
    #20;
    n_res = 1'b1;
    #10;
    
    // Test 1: EN = 0
    EN = 1'b0;
    D = 8'b10101010;
    #20;
    assert (Q === 8'b00000000)$display("Test 1 PASS"); else $error("Test 1 failed.");
    
    // Test 2: EN = 1
    EN = 1'b1;
    D = 8'b01010101;
    #20;
    assert (Q === 8'b01010101)$display("Test 2 PASS"); else $error("Test 2 failed.");
    
    // Test 3: Reset
    n_res = 1'b0;
    D = 8'b11110000;
    EN = 1'b1;
    #20;
    n_res = 1'b1;
    #10;
    assert (Q === 8'b00000000)$display("Test 3 PASS"); else $error("Test 3 failed.");
    
    // Test 4: EN = 0 after reset
    D = 8'b11001100;
    EN = 1'b0;
    #20;
    assert (Q === 8'b11001100)$display("Test 4 PASS"); else $error("Test 4 failed.");
    
    $display("All tests passed.");
    
end

always @(negedge n_res) begin
	#10 assert(Q === 0) $display("RESET PASS"); else $error("RESET FAIL");	//Check Q
	
end

endmodule