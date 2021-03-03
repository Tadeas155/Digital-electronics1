   # Lab 4: Binary adder

#### Objectives

The purpose of this laboratory exercise is to design an adder. It is a type of digital circuit that performs the operation of additions of two numbers.


#### Materials

You will use slide switches on the CPLD expansion board ([schematic](../../Docs/cpld_expansion.pdf)) as inputs and 7-segment display on the CoolRunner-II CPLD starter board ([XC2C256-TQ144](../../Docs/xc2c256_cpld.pdf), [manual](../../Docs/coolrunner-ii_rm.pdf), [schematic](../../Docs/coolrunner-ii_sch.pdf)) as output device.

![CoolRunner-II CPLD starter board](Images/coolrunner_expansion_board.jpg)


## 1 Preparation tasks (done before the lab at home)

1. A half adder has two inputs A and B and two outputs Carry and Sum. Complete the half adder truth table. Draw a logic diagram of both output functions.

    | **B** | **A** | **Carry** | **Sum** |
    | :-: | :-: | :-: | :-: |
    | 0 | 0 |  |  |
    | 0 | 1 |  |  |
    | 1 | 0 |  |  |
    | 1 | 1 |  |  |

2. A full adder has three inputs and two outputs. The two inputs are A, B, and Carry input. The outputs are Carry output and Sum. Complete the full adder truth table and draw a logic diagram of both output functions.

    | **Cin** | **B** | **A** | **Cout** | **Sum** |
    | :-: | :-: | :-: | :-: | :-: |
    | 0 | 0 | 0 |  |  |
    | 0 | 0 | 1 |  |  |
    | 0 | 1 | 0 |  |  |
    | 0 | 1 | 1 |  |  |
    | 1 | 0 | 0 |  |  |
    | 1 | 0 | 1 |  |  |
    | 1 | 1 | 0 |  |  |
    | 1 | 1 | 1 |  |  |
