entity full_adder_signature is
    port (
        input_1, input_2, carry_in: in bit;
        sum, carry_out: out bit
    );
end entity full_adder_signature;

architecture full_adder_body of full_adder_signature is
    begin:
        -- S = A ⊕ B ⊕ C-IN
       sum <= (input_1 xor input_2) xor carry_in;
        -- C-OUT = A B + C-IN (A ⊕ B)
        carry_out <= (input_1 and input_2) or (carry_in and (input_1 xor input_2))
    end architecture full_adder_body;