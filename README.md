# Digital-electronics1

```vhdl
architecture dataflow of gates is
begin
    f_o  <= ((not_b_i) and a_i) or ((not c_i) and (not b_i));
    --fand_o <= a_i and b_i;
    --fxor_o <= a_i xor b_i;

end architecture dataflow;
```
