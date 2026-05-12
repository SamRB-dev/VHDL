entity half_adder_tb is 
end entity half_adder_tb;

architecture testbench of half_adder_tb is
    signal input_tb_1, input_tb_2: bit := '0';
    signal sum_tb, carry_tb: bit:= '0';
    begin
        DUT: entity work.half_adder_signature
            port map(
                input_1 => input_tb_1,
                input_2 => input_tb_2,
                sum => sum_tb,
                carry => carry_tb
            );
        
        simulation: process
        begin
            -- Test case 1: 0 + 0
            input_tb_1 <= '0';
            input_tb_2 <= '0';
            wait for 10 ps;
            
            -- Test case 2: 0 + 1
            input_tb_1 <= '0';
            input_tb_2 <= '1';
            wait for 10 ps;
            
            -- Test case 3: 1 + 0
            input_tb_1 <= '1';
            input_tb_2 <= '0';
            wait for 10 ps;
            
            -- Test case 4: 1 + 1
            input_tb_1 <= '1';
            input_tb_2 <= '1';
            wait for 10 ps;
            
            wait; -- End of simulation
        end process simulation;
    end architecture testbench;