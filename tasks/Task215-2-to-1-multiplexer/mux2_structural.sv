module mux2_structural (output logic y, input logic a, b, s);

// Write HDL here
//Internal wires
wire m1,m2,not_s;

//Instantiate and connect logic gates
not u1(not_s, s);
and u2(m1, not_s, a);
and u3(m2, s, b);
or  u4(y, m1, m2);



endmodule