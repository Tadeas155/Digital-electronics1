@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Mar 20 15:03:03 +0100 2021
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 5c42a86989db4d5cb47cbcb1ce4e3363 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_driver_7seg_4digits_behav xil_defaultlib.tb_driver_7seg_4digits -log elaborate.log"
call xelab  -wto 5c42a86989db4d5cb47cbcb1ce4e3363 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_driver_7seg_4digits_behav xil_defaultlib.tb_driver_7seg_4digits -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
