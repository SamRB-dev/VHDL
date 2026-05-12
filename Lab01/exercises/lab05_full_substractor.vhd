entity full_substractor_signature is 
    port (
        input_1, input_2, borrow_in: in bit;
        difference, borrow_out: out bit
    );
end entity full_substractor_signature;

architecture full_substractor_body of full_substractor_signature is
    begin
        -- Difference = A xor B xor Borrow_in
        -- Borrow_out = Bout = Bin (A XOR B)' + A'B
        difference <= input_1 xor input_2 xor borrow_in;
        borrow_out <= (not input_a and input_2) or (borrow_in and (not (input_1 xor input_2)));
    end architecture full_substractor_body;