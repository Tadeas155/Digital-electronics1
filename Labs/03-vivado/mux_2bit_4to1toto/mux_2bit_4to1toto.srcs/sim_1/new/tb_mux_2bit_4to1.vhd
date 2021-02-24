------------------------------------------------------------------------
--
-- Testbench for 2-bit binary comparator.
-- EDA Playground
--
-- Copyright (c) 2020-2021 Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------------------
entity tb_mux_2bit_4to1 is
    -- Entity of testbench is always empty
end entity tb_mux_2bit_4to1;

------------------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------------------
architecture testbench of tb_mux_2bit_4to1 is

    -- Local signals
    signal s_a       : std_logic_vector(2 - 1 downto 0);
    signal s_b       : std_logic_vector(2 - 1 downto 0);
    signal s_c       : std_logic_vector(2 - 1 downto 0);
    signal s_d       : std_logic_vector(2 - 1 downto 0);
    signal s_sel     : std_logic_vector(2 - 1 downto 0);
    signal s_f       : std_logic_vector(2 - 1 downto 0)

begin
    -- Connecting testbench signals with mux_2bit_4to1 entity (Unit Under Test)
    uut_tb_mux_2bit_4to1 : entity work.tb_mux_2bit_4to1
        port map(
        
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            sel_i         => s_sel,
            f_o           => s_f

        );

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the begining of stimulus process
        report "Stimulus process started" severity note;
         s_a   <= "00"; s_b <= "00"; s_c <= "00"; s_d <= "00";
         s_sel <= "00"; wait for 10 ns;
         
         s_a   <= "01";  wait for 10 ns;
         s_b   <= "01"; wait for 10 ns;
         
         s_sel <= "01"; wait for 10 ns;
         s_c   <= "00";  wait for 10 ns;
         s_d   <= "11"; wait for 10 ns;
         
         s_a   <= "00"; s_b <= "01"; s_c <= "11"; s_d <= "10";
         s_sel <= "10"; wait for 10 ns;
         
         s_a   <= "01"; s_b <= "00"; s_c <= "00"; s_d <= "00";
         s_sel <= "10"; wait for 10 ns;
         
         s_a   <= "00"; s_b <= "01"; s_c <= "11"; s_d <= "10";
         s_sel <= "11"; wait for 10 ns;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
