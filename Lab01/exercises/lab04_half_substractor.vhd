entity half_substractor_signature is
    port (
        input_1, input_2: in bit;
        difference, borrow: out bit
    );
end entity half_substractor_signature;

architecture half_substractor_body of half_substractor_signature is
    begin:
        -- Difference = A ⊕ B
        -- Borrow = A'B
        difference <= input_1 xor input_2;
        borrow <= (not input_1) and input_2;
    end architecture half_substractor_body;