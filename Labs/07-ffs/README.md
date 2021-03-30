# 06-ffs

   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | up | 0 | 0 | 0 | No change |
   | up | 0 | 1 | 0 | Reset |
   | up | 1 | 0 | 1 | Set |
   | up | 1 | 1 | 1 | No change |

   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | up | 0 | 0 | 0 | 0 | No change |
   | up | 0 | 0 | 1 | 1 | No change |
   | up | 0 | 1 | 0 | 0 | Reset |
   | up | 0 | 1 | 1 | 0 | Reset |
   | up | 1 | 0 | 0 | 1 | Set |
   | up | 1 | 0 | 1 | 1 | Set |
   | up | 1 | 1 | 0 | 1 | Toggle |
   | up | 1 | 1 | 1 | 0 | Toggle |

   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | up | 0 | 0 | 0 | No change |
   | up | 0 | 1 | 1 | No change |
   | up | 1 | 0 | 1 | Invert (Toggle) |
   | up | 1 | 1 | 0 | Invert (Toggle) |
```vhdl
   p_d_latch : process (d, arst, en)
begin
    if (arst = '1') then
        q     <= '0';
        q_bar <= '1';
    elsif (en = '1') then
        q     <= d;
        q_bar <= not d;
    end if;
end process p_d_latch
```

```vhdl
 p_reset_gen : process
        begin
        s_arst <= '0';
        wait for 50 ns;
        
        -- Reset activated
        s_arst <= '1';
        wait for 10 ns;

        -- Reset deactivated
        s_arst <= '0';
        
        wait for 100 ns;
        s_arst <= '1';
        
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
    ```
    
```vhdl    
    p_d_ff_arst : process (clk, arst)

begin
    if (arst = '1') then
        q     <= '0';
        q_bar <= '1';
        
    elsif rising_edge(clk) then
        q     <= d;
        q_bar <= not d;
    end if;
end process p_d_ff_arst;
```

```vhdl
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
```
