----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2021 13:55:10
-- Design Name: 
-- Module Name: tb_d_ff_arst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_d_ff_arst is
--  Port ( );
end tb_d_ff_arst;

architecture Behavioral of tb_d_ff_arst is

begin
uut_d_latch : entity work.d_latch 
   port map (

        signal s_en     :  STD_LOGIC;
        signal s_arst   :  STD_LOGIC;
        signal s_d      :  STD_LOGIC;
        signal s_q      :  STD_LOGIC;
        signal s_q_bar  :  STD_LOGIC;
begin
    -- Connecting testbench signals with driver_7seg_4digits entity
    -- (Unit Under Test)

    uut_d_latch : entity work.d_latch
        port map(
            clk       => s_clk,
            en        => s_en,
            arst      => s_arst,
            d         => s_d,
            q         => s_q,
            q_bar     => s_q_bar

        );
        
 p_clk_gen : process
    begin
        while now < 750 ns loop         -- 75 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
 end process p_clk_gen;
  
 p_reset_gen : process
        begin
        s_arst <= '0';
        wait for 53 ns;
        
        -- Reset activated
        s_arst <= '1';
        wait for 15 ns;

        -- Reset deactivated
        s_arst <= '0';

        wait;
    end process p_reset_gen;
  
 p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        s_en  <= '0';
        s_d   <= '0';
        
        
        
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        
        s_en  <= '1';
        
        wait for 3 ns;
        assert(sq = '0' and s_q_bar = '1')
        report "doplnit" severity error
        
        wait for 7 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;
        s_d  <= '1'
        wait for 10 ns;
        s_d  <= '0'
        wait for 10 ns;

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
