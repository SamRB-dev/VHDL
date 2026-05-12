-- Half Adder 
-- A combinational circuit that adds two bits using xor gate and prouduces sum and carry as output.
-- Author: Sadim Rahman

-- Entity: Function signature of a function
entity half_adder_signature is 
    port (
        input_1, input_2: in bit;
        sum, carry: out bit
    );
end entity;

-- Architecture: Function body of a function
architecture half_adder_body of half_adder_signature is
    begin
        sum <= input_1 xor input_2;
        carry <= input_1 and input_2;
    end architecture;