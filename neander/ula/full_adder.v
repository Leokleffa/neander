module full_adder (input a, input b, input cin, output cout, output s);
    wire and1, and2, and3;

    xor(s, a, b, cin);
	
    and(and3, a, b);
    and(and1, a, cin);
    and(and2, b, cin);

    or(cout, and1, and2, and3);
endmodule

