module demux_tb (output logic [7:0] Y, input logic D, input logic [2:0] SEL);

logic [7:0] YY;
logic DD;
logic [2:0] sel;

demux u1 (YY,  DD, sel);

initial
begin

DD='0;
sel =3'b000;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b000;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b001;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b010;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b011;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b100;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b101;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b110;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");

sel = 'b111;
#10
assert(YY === 0) $display("PASS"); else $error("FAIL");



DD=1;
sel = 'b000;
#10
assert(YY === 8'b00000001) $display("PASS"); else $error("FAIL");

sel = 'b001;
#10
assert(YY === 8'b00000010) $display("PASS"); else $error("FAIL");

sel = 'b010;
#10
assert(YY === 8'b00000100) $display("PASS"); else $error("FAIL");

sel = 'b011;
#10
assert(YY === 8'b00001000) $display("PASS"); else $error("FAIL");

sel = 'b100;
#10
assert(YY === 8'b00010000) $display("PASS"); else $error("FAIL");

sel = 'b101;
#10
assert(YY === 8'b00100000) $display("PASS"); else $error("FAIL");

sel = 'b110;
#10
assert(YY === 8'b01000000) $display("PASS"); else $error("FAIL");

sel = 'b111;
#10
assert(YY === 8'b10000000) $display("PASS"); else $error("FAIL");
end
  
  
endmodule

