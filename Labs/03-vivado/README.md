## Úkol 1:

![function](Images/ukol1.PNG)

## Úkol 2:
```vhdl
architecture Behavioral of mux_2bit_4to1 is
begin

f_o <= a_i when (sel_i = "00") else
       b_i when (sel_i = "01") else
       c_i when (sel_i = "10") else
       d_i;  


end architecture Behavioral;
```

```vhdl
p_stimulus : process
    begin
        -- Report a note at the begining of stimulus process
        report "Stimulus process started" severity note;
         s_a   <= "11"; s_b <= "00"; s_c <= "00"; s_d <= "00";
         s_sel <= "00"; wait for 100 ns;
         
         s_a   <= "00"; s_b <= "10"; s_c <= "00"; s_d <= "00";
         s_sel <= "01"; wait for 100 ns;
         
         s_a   <= "00"; s_b <= "00"; s_c <= "01"; s_d <= "00";
         s_sel <= "10"; wait for 100 ns;
         
         s_a   <= "00"; s_b <= "00"; s_c <= "00"; s_d <= "11";
         s_sel <= "11"; wait for 100 ns;
         
         s_a   <= "11"; s_b <= "10"; s_c <= "01"; s_d <= "00";
         s_sel <= "10"; wait for 100 ns;
         
         s_a   <= "11"; s_b <= "10"; s_c <= "01"; s_d <= "00";
         s_sel <= "11"; wait for 100 ns;
         
         s_a   <= "11"; s_b <= "10"; s_c <= "01"; s_d <= "00";
         s_sel <= "00"; wait for 100 ns;
         
         s_a   <= "11"; s_b <= "10"; s_c <= "01"; s_d <= "00";
         s_sel <= "01"; wait for 100 ns;
         
         s_a   <= "00"; s_b <= "01"; s_c <= "10"; s_d <= "11";
         s_sel <= "00"; wait for 100 ns;
         
         s_a   <= "00"; s_b <= "01"; s_c <= "10"; s_d <= "11";
         s_sel <= "11"; wait for 100 ns;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

## Úkol 3:

# Creating project
       File - Project - New project
       Name your project and locate it
       RTL Project
       Add source
       Default part
       For example Nexys A7-50T (Best choice for this HW)
       Finish
 # Adding source 
       File - Add sources
       Find existing design source or create a new one
       Add, create file
       File type VHDL
       Finish
 # Adding testbench
       Same principle but add/create simulation sources
 # Adding XDC constraints 
       File - Add sources
       Add/create constraints
       Add/create file
       File type XDC
       Finish
 # Simulation
       Flow - Run Simulation - Run behavioral simulation
       
