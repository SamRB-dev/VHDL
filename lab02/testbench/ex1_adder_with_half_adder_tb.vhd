-- Full Adder Testbench
-- Author: Sadim Rahman

entity full_adder_tb is
end entity full_adder_tb;

architecture full_adder_tb_body of full_adder_tb is

    component full_adder_with_half_adder_signature is
        port (
            input_1, input_2, carry_in : in  bit;
            sum, carry_out             : out bit
        );
    end component;

    signal tb_input1   : bit := '0';
    signal tb_input2   : bit := '0';
    signal tb_carry_in : bit := '0';
    signal tb_sum      : bit;
    signal tb_carry_out: bit;

begin

    DUT: full_adder_with_half_adder_signature
        port map (
            input_1  => tb_input1,
            input_2  => tb_input2,
            carry_in => tb_carry_in,
            sum      => tb_sum,
            carry_out=> tb_carry_out
        );

    stim_proc: process
    begin

        -- test case 1: 0+0+0 = sum:0 carry:0
        tb_input1 <= '0'; tb_input2 <= '0'; tb_carry_in <= '0';
        wait for 10 ps;
        assert (tb_sum = '0' and tb_carry_out = '0')
            report "FAILED: 0+0+0" severity error;

        -- test case 2: 0+0+1 = sum:1 carry:0
        tb_input1 <= '0'; tb_input2 <= '0'; tb_carry_in <= '1';
        wait for 10 ps;
        assert (tb_sum = '1' and tb_carry_out = '0')
            report "FAILED: 0+0+1" severity error;

        -- test case 3: 0+1+0 = sum:1 carry:0
        tb_input1 <= '0'; tb_input2 <= '1'; tb_carry_in <= '0';
        wait for 10 ps;
        assert (tb_sum = '1' and tb_carry_out = '0')
            report "FAILED: 0+1+0" severity error;

        -- test case 4: 0+1+1 = sum:0 carry:1
        tb_input1 <= '0'; tb_input2 <= '1'; tb_carry_in <= '1';
        wait for 10 ps;
        assert (tb_sum = '0' and tb_carry_out = '1')
            report "FAILED: 0+1+1" severity error;

        -- test case 5: 1+0+0 = sum:1 carry:0
        tb_input1 <= '1'; tb_input2 <= '0'; tb_carry_in <= '0';
        wait for 10 ps;
        assert (tb_sum = '1' and tb_carry_out = '0')
            report "FAILED: 1+0+0" severity error;

        -- test case 6: 1+0+1 = sum:0 carry:1
        tb_input1 <= '1'; tb_input2 <= '0'; tb_carry_in <= '1';
        wait for 10 ps;
        assert (tb_sum = '0' and tb_carry_out = '1')
            report "FAILED: 1+0+1" severity error;

        -- test case 7: 1+1+0 = sum:0 carry:1
        tb_input1 <= '1'; tb_input2 <= '1'; tb_carry_in <= '0';
        wait for 10 ps;
        assert (tb_sum = '0' and tb_carry_out = '1')
            report "FAILED: 1+1+0" severity error;

        -- test case 8: 1+1+1 = sum:1 carry:1
        tb_input1 <= '1'; tb_input2 <= '1'; tb_carry_in <= '1';
        wait for 10 ps;
        assert (tb_sum = '1' and tb_carry_out = '1')
            report "FAILED: 1+1+1" severity error;

        report "All 8 tests passed!" severity note;
        wait;

    end process;

end architecture full_adder_tb_body;