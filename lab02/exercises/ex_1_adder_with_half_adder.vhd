component half_adderer_signature is
        port (
            input_1, input_2: in bit;
            sum, carry: out bit
        );
end component;

entity full_adder_with_half_adder_signature is 
    port (
        input_1, input_2, carry_in: in bit;
        sum, carry_out: out bit
    );
end entity full_adder_with_half_adder_signature;

architecture full_adder_with_half_adder_body of full_adder_with_half_adder_signature is
    signal sum_1, carry_1, carry_2: bit;
     begin

        -- Instantiate the component
        half_adder_1: half_adder_signature
            port map(
                input_1 => input_1,
                input_2 => input_2,
                sum => sum_1,
                carry => carry_1
            );
        
        half_adder_2: half_adder_signature
            port map(
                input_1 => sum_1,
                input_2 => carry_in,
                sum => sum,
                carry => carry_2
            );

        carry_out <= carry_1 or carry_2;
end architecture full_adder_with_half_adder_body;