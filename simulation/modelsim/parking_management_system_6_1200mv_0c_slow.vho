-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/27/2024 04:26:04"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parking_management_system IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	car_entered : IN std_logic;
	car_exited : IN std_logic;
	is_uni_car_entered : IN std_logic;
	is_uni_car_exited : IN std_logic;
	uni_parked_car : OUT std_logic_vector(9 DOWNTO 0);
	parked_car : OUT std_logic_vector(9 DOWNTO 0);
	uni_vacated_space : OUT std_logic_vector(9 DOWNTO 0);
	vacated_space : OUT std_logic_vector(9 DOWNTO 0);
	uni_is_vacated_space : OUT std_logic;
	is_vacated_space : OUT std_logic
	);
END parking_management_system;

-- Design Ports Information
-- uni_parked_car[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[7]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_is_vacated_space	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_vacated_space	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_entered	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_entered	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_exited	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_exited	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking_management_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_car_entered : std_logic;
SIGNAL ww_car_exited : std_logic;
SIGNAL ww_is_uni_car_entered : std_logic;
SIGNAL ww_is_uni_car_exited : std_logic;
SIGNAL ww_uni_parked_car : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_parked_car : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_uni_vacated_space : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_vacated_space : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_uni_is_vacated_space : std_logic;
SIGNAL ww_is_vacated_space : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uni_parked_car[0]~output_o\ : std_logic;
SIGNAL \uni_parked_car[1]~output_o\ : std_logic;
SIGNAL \uni_parked_car[2]~output_o\ : std_logic;
SIGNAL \uni_parked_car[3]~output_o\ : std_logic;
SIGNAL \uni_parked_car[4]~output_o\ : std_logic;
SIGNAL \uni_parked_car[5]~output_o\ : std_logic;
SIGNAL \uni_parked_car[6]~output_o\ : std_logic;
SIGNAL \uni_parked_car[7]~output_o\ : std_logic;
SIGNAL \uni_parked_car[8]~output_o\ : std_logic;
SIGNAL \uni_parked_car[9]~output_o\ : std_logic;
SIGNAL \parked_car[0]~output_o\ : std_logic;
SIGNAL \parked_car[1]~output_o\ : std_logic;
SIGNAL \parked_car[2]~output_o\ : std_logic;
SIGNAL \parked_car[3]~output_o\ : std_logic;
SIGNAL \parked_car[4]~output_o\ : std_logic;
SIGNAL \parked_car[5]~output_o\ : std_logic;
SIGNAL \parked_car[6]~output_o\ : std_logic;
SIGNAL \parked_car[7]~output_o\ : std_logic;
SIGNAL \parked_car[8]~output_o\ : std_logic;
SIGNAL \parked_car[9]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[0]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[1]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[2]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[3]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[4]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[5]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[6]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[7]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[8]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[9]~output_o\ : std_logic;
SIGNAL \vacated_space[0]~output_o\ : std_logic;
SIGNAL \vacated_space[1]~output_o\ : std_logic;
SIGNAL \vacated_space[2]~output_o\ : std_logic;
SIGNAL \vacated_space[3]~output_o\ : std_logic;
SIGNAL \vacated_space[4]~output_o\ : std_logic;
SIGNAL \vacated_space[5]~output_o\ : std_logic;
SIGNAL \vacated_space[6]~output_o\ : std_logic;
SIGNAL \vacated_space[7]~output_o\ : std_logic;
SIGNAL \vacated_space[8]~output_o\ : std_logic;
SIGNAL \vacated_space[9]~output_o\ : std_logic;
SIGNAL \uni_is_vacated_space~output_o\ : std_logic;
SIGNAL \is_vacated_space~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uni_parked_car[0]~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \car_exited~input_o\ : std_logic;
SIGNAL \is_uni_car_exited~input_o\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \car_entered~input_o\ : std_logic;
SIGNAL \is_uni_car_entered~input_o\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \uni_parked_car[0]~13\ : std_logic;
SIGNAL \uni_parked_car[1]~16_combout\ : std_logic;
SIGNAL \uni_parked_car[1]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[1]~17\ : std_logic;
SIGNAL \uni_parked_car[2]~18_combout\ : std_logic;
SIGNAL \uni_parked_car[2]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[2]~19\ : std_logic;
SIGNAL \uni_parked_car[3]~20_combout\ : std_logic;
SIGNAL \uni_parked_car[3]~reg0_q\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \uni_parked_car[3]~21\ : std_logic;
SIGNAL \uni_parked_car[4]~22_combout\ : std_logic;
SIGNAL \uni_parked_car[4]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[4]~23\ : std_logic;
SIGNAL \uni_parked_car[5]~24_combout\ : std_logic;
SIGNAL \uni_parked_car[5]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[5]~25\ : std_logic;
SIGNAL \uni_parked_car[6]~26_combout\ : std_logic;
SIGNAL \uni_parked_car[6]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[6]~27\ : std_logic;
SIGNAL \uni_parked_car[7]~28_combout\ : std_logic;
SIGNAL \uni_parked_car[7]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[7]~29\ : std_logic;
SIGNAL \uni_parked_car[8]~30_combout\ : std_logic;
SIGNAL \uni_parked_car[8]~reg0_q\ : std_logic;
SIGNAL \uni_parked_car[8]~31\ : std_logic;
SIGNAL \uni_parked_car[9]~32_combout\ : std_logic;
SIGNAL \uni_parked_car[9]~reg0_q\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \uni_parked_car[2]~15_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \parked_car[0]~12_combout\ : std_logic;
SIGNAL \parked_car[8]~31\ : std_logic;
SIGNAL \parked_car[9]~32_combout\ : std_logic;
SIGNAL \parked_car[9]~reg0_q\ : std_logic;
SIGNAL \parked_car[0]~14_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[0]~93_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[1]~31_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[1]~32\ : std_logic;
SIGNAL \elapsed_time_cycles[2]~33_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[2]~34\ : std_logic;
SIGNAL \elapsed_time_cycles[3]~35_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[3]~36\ : std_logic;
SIGNAL \elapsed_time_cycles[4]~37_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[4]~38\ : std_logic;
SIGNAL \elapsed_time_cycles[5]~39_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[5]~40\ : std_logic;
SIGNAL \elapsed_time_cycles[6]~41_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[6]~42\ : std_logic;
SIGNAL \elapsed_time_cycles[7]~43_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[7]~44\ : std_logic;
SIGNAL \elapsed_time_cycles[8]~45_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[8]~46\ : std_logic;
SIGNAL \elapsed_time_cycles[9]~47_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[9]~48\ : std_logic;
SIGNAL \elapsed_time_cycles[10]~49_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[10]~50\ : std_logic;
SIGNAL \elapsed_time_cycles[11]~51_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[11]~52\ : std_logic;
SIGNAL \elapsed_time_cycles[12]~53_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[12]~54\ : std_logic;
SIGNAL \elapsed_time_cycles[13]~55_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[13]~56\ : std_logic;
SIGNAL \elapsed_time_cycles[14]~57_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[14]~58\ : std_logic;
SIGNAL \elapsed_time_cycles[15]~59_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[15]~60\ : std_logic;
SIGNAL \elapsed_time_cycles[16]~61_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[16]~62\ : std_logic;
SIGNAL \elapsed_time_cycles[17]~63_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[17]~64\ : std_logic;
SIGNAL \elapsed_time_cycles[18]~65_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[18]~66\ : std_logic;
SIGNAL \elapsed_time_cycles[19]~67_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[19]~68\ : std_logic;
SIGNAL \elapsed_time_cycles[20]~69_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[20]~70\ : std_logic;
SIGNAL \elapsed_time_cycles[21]~71_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[21]~72\ : std_logic;
SIGNAL \elapsed_time_cycles[22]~73_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[22]~74\ : std_logic;
SIGNAL \elapsed_time_cycles[23]~75_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[23]~76\ : std_logic;
SIGNAL \elapsed_time_cycles[24]~77_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[24]~78\ : std_logic;
SIGNAL \elapsed_time_cycles[25]~79_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[25]~80\ : std_logic;
SIGNAL \elapsed_time_cycles[26]~81_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[26]~82\ : std_logic;
SIGNAL \elapsed_time_cycles[27]~83_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[27]~84\ : std_logic;
SIGNAL \elapsed_time_cycles[28]~85_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[28]~86\ : std_logic;
SIGNAL \elapsed_time_cycles[29]~87_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[29]~88\ : std_logic;
SIGNAL \elapsed_time_cycles[30]~89_combout\ : std_logic;
SIGNAL \elapsed_time_cycles[30]~90\ : std_logic;
SIGNAL \elapsed_time_cycles[31]~91_combout\ : std_logic;
SIGNAL \time_threshold~12_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \time_threshold~13_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \time_threshold~14_combout\ : std_logic;
SIGNAL \time_threshold~15_combout\ : std_logic;
SIGNAL \time_threshold.0000~q\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \vacated_space[1]~10_combout\ : std_logic;
SIGNAL \parked_car[0]~34_combout\ : std_logic;
SIGNAL \parked_car[0]~15_combout\ : std_logic;
SIGNAL \parked_car[0]~reg0_q\ : std_logic;
SIGNAL \parked_car[0]~13\ : std_logic;
SIGNAL \parked_car[1]~16_combout\ : std_logic;
SIGNAL \parked_car[1]~reg0_q\ : std_logic;
SIGNAL \parked_car[1]~17\ : std_logic;
SIGNAL \parked_car[2]~18_combout\ : std_logic;
SIGNAL \parked_car[2]~reg0_q\ : std_logic;
SIGNAL \parked_car[2]~19\ : std_logic;
SIGNAL \parked_car[3]~20_combout\ : std_logic;
SIGNAL \parked_car[3]~reg0_q\ : std_logic;
SIGNAL \parked_car[3]~21\ : std_logic;
SIGNAL \parked_car[4]~22_combout\ : std_logic;
SIGNAL \parked_car[4]~reg0_q\ : std_logic;
SIGNAL \parked_car[4]~23\ : std_logic;
SIGNAL \parked_car[5]~24_combout\ : std_logic;
SIGNAL \parked_car[5]~reg0_q\ : std_logic;
SIGNAL \parked_car[5]~25\ : std_logic;
SIGNAL \parked_car[6]~26_combout\ : std_logic;
SIGNAL \parked_car[6]~reg0_q\ : std_logic;
SIGNAL \parked_car[6]~27\ : std_logic;
SIGNAL \parked_car[7]~28_combout\ : std_logic;
SIGNAL \parked_car[7]~reg0_q\ : std_logic;
SIGNAL \parked_car[7]~29\ : std_logic;
SIGNAL \parked_car[8]~30_combout\ : std_logic;
SIGNAL \parked_car[8]~reg0_q\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3_cout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \uni_parked_car[2]~14_combout\ : std_logic;
SIGNAL \uni_parked_car[2]~34_combout\ : std_logic;
SIGNAL \uni_parked_car[0]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[0]~10_combout\ : std_logic;
SIGNAL \uni_vacated_space[0]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[0]~11\ : std_logic;
SIGNAL \uni_vacated_space[1]~12_combout\ : std_logic;
SIGNAL \uni_vacated_space[1]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[1]~13\ : std_logic;
SIGNAL \uni_vacated_space[2]~14_combout\ : std_logic;
SIGNAL \uni_vacated_space[2]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[2]~15\ : std_logic;
SIGNAL \uni_vacated_space[3]~16_combout\ : std_logic;
SIGNAL \uni_vacated_space[3]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[3]~17\ : std_logic;
SIGNAL \uni_vacated_space[4]~18_combout\ : std_logic;
SIGNAL \uni_vacated_space[4]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[4]~19\ : std_logic;
SIGNAL \uni_vacated_space[5]~20_combout\ : std_logic;
SIGNAL \uni_vacated_space[5]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[5]~21\ : std_logic;
SIGNAL \uni_vacated_space[6]~22_combout\ : std_logic;
SIGNAL \uni_vacated_space[6]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[6]~23\ : std_logic;
SIGNAL \uni_vacated_space[7]~24_combout\ : std_logic;
SIGNAL \uni_vacated_space[7]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[7]~25\ : std_logic;
SIGNAL \uni_vacated_space[8]~26_combout\ : std_logic;
SIGNAL \uni_vacated_space[8]~reg0_q\ : std_logic;
SIGNAL \uni_vacated_space[8]~27\ : std_logic;
SIGNAL \uni_vacated_space[9]~28_combout\ : std_logic;
SIGNAL \uni_vacated_space[9]~reg0_q\ : std_logic;
SIGNAL \vacated_space[0]~11_combout\ : std_logic;
SIGNAL \vacated_space[0]~reg0_q\ : std_logic;
SIGNAL \vacated_space[0]~12\ : std_logic;
SIGNAL \vacated_space[1]~13_combout\ : std_logic;
SIGNAL \vacated_space[1]~reg0_q\ : std_logic;
SIGNAL \vacated_space[1]~14\ : std_logic;
SIGNAL \vacated_space[2]~15_combout\ : std_logic;
SIGNAL \vacated_space[2]~reg0_q\ : std_logic;
SIGNAL \vacated_space[2]~16\ : std_logic;
SIGNAL \vacated_space[3]~17_combout\ : std_logic;
SIGNAL \vacated_space[3]~reg0_q\ : std_logic;
SIGNAL \vacated_space[3]~18\ : std_logic;
SIGNAL \vacated_space[4]~19_combout\ : std_logic;
SIGNAL \vacated_space[4]~reg0_q\ : std_logic;
SIGNAL \vacated_space[4]~20\ : std_logic;
SIGNAL \vacated_space[5]~21_combout\ : std_logic;
SIGNAL \vacated_space[5]~reg0_q\ : std_logic;
SIGNAL \vacated_space[5]~22\ : std_logic;
SIGNAL \vacated_space[6]~23_combout\ : std_logic;
SIGNAL \vacated_space[6]~reg0_q\ : std_logic;
SIGNAL \vacated_space[6]~24\ : std_logic;
SIGNAL \vacated_space[7]~25_combout\ : std_logic;
SIGNAL \vacated_space[7]~reg0_q\ : std_logic;
SIGNAL \vacated_space[7]~26\ : std_logic;
SIGNAL \vacated_space[8]~27_combout\ : std_logic;
SIGNAL \vacated_space[8]~reg0_q\ : std_logic;
SIGNAL \vacated_space[8]~28\ : std_logic;
SIGNAL \vacated_space[9]~29_combout\ : std_logic;
SIGNAL \vacated_space[9]~reg0_q\ : std_logic;
SIGNAL \uni_is_vacated_space~0_combout\ : std_logic;
SIGNAL \uni_is_vacated_space~1_combout\ : std_logic;
SIGNAL \uni_is_vacated_space~2_combout\ : std_logic;
SIGNAL \uni_is_vacated_space~3_combout\ : std_logic;
SIGNAL \uni_is_vacated_space~reg0_q\ : std_logic;
SIGNAL \is_vacated_space~1_combout\ : std_logic;
SIGNAL \uni_is_vacated_space~4_combout\ : std_logic;
SIGNAL \is_vacated_space~0_combout\ : std_logic;
SIGNAL \is_vacated_space~2_combout\ : std_logic;
SIGNAL \is_vacated_space~reg0_q\ : std_logic;
SIGNAL non_uni_space : std_logic_vector(9 DOWNTO 0);
SIGNAL elapsed_time_cycles : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_is_vacated_space~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_is_vacated_space~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_vacated_space[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_vacated_space[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_vacated_space[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_vacated_space[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_vacated_space[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_vacated_space[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_vacated_space[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_vacated_space[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_uni_vacated_space[2]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_car_entered <= car_entered;
ww_car_exited <= car_exited;
ww_is_uni_car_entered <= is_uni_car_entered;
ww_is_uni_car_exited <= is_uni_car_exited;
uni_parked_car <= ww_uni_parked_car;
parked_car <= ww_parked_car;
uni_vacated_space <= ww_uni_vacated_space;
vacated_space <= ww_vacated_space;
uni_is_vacated_space <= ww_uni_is_vacated_space;
is_vacated_space <= ww_is_vacated_space;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_is_vacated_space~reg0_q\ <= NOT \is_vacated_space~reg0_q\;
\ALT_INV_uni_is_vacated_space~reg0_q\ <= NOT \uni_is_vacated_space~reg0_q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_vacated_space[7]~reg0_q\ <= NOT \vacated_space[7]~reg0_q\;
\ALT_INV_vacated_space[6]~reg0_q\ <= NOT \vacated_space[6]~reg0_q\;
\ALT_INV_vacated_space[3]~reg0_q\ <= NOT \vacated_space[3]~reg0_q\;
\ALT_INV_uni_vacated_space[8]~reg0_q\ <= NOT \uni_vacated_space[8]~reg0_q\;
\ALT_INV_uni_vacated_space[7]~reg0_q\ <= NOT \uni_vacated_space[7]~reg0_q\;
\ALT_INV_uni_vacated_space[6]~reg0_q\ <= NOT \uni_vacated_space[6]~reg0_q\;
\ALT_INV_uni_vacated_space[5]~reg0_q\ <= NOT \uni_vacated_space[5]~reg0_q\;
\ALT_INV_uni_vacated_space[4]~reg0_q\ <= NOT \uni_vacated_space[4]~reg0_q\;
\ALT_INV_uni_vacated_space[2]~reg0_q\ <= NOT \uni_vacated_space[2]~reg0_q\;

-- Location: IOOBUF_X52_Y32_N16
\uni_parked_car[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[0]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[0]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\uni_parked_car[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[1]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[1]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\uni_parked_car[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[2]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[2]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\uni_parked_car[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[3]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[3]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\uni_parked_car[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[4]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[4]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\uni_parked_car[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[5]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[5]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\uni_parked_car[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[6]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\uni_parked_car[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[7]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\uni_parked_car[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[8]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[8]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\uni_parked_car[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_parked_car[9]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_parked_car[9]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\parked_car[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[0]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[0]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\parked_car[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[1]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[1]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\parked_car[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[2]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[2]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\parked_car[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[3]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[3]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\parked_car[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[4]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[4]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\parked_car[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[5]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[5]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\parked_car[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[6]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[6]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\parked_car[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[7]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[7]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\parked_car[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[8]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[8]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\parked_car[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parked_car[9]~reg0_q\,
	devoe => ww_devoe,
	o => \parked_car[9]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\uni_vacated_space[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space[0]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[0]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\uni_vacated_space[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space[1]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[1]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\uni_vacated_space[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_vacated_space[2]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[2]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\uni_vacated_space[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space[3]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[3]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\uni_vacated_space[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_vacated_space[4]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[4]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\uni_vacated_space[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_vacated_space[5]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[5]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\uni_vacated_space[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_vacated_space[6]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[6]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\uni_vacated_space[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_vacated_space[7]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[7]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\uni_vacated_space[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_vacated_space[8]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[8]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\uni_vacated_space[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni_vacated_space[9]~reg0_q\,
	devoe => ww_devoe,
	o => \uni_vacated_space[9]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\vacated_space[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[0]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\vacated_space[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[1]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[1]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\vacated_space[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[2]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\vacated_space[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vacated_space[3]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[3]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\vacated_space[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[4]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[4]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\vacated_space[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[5]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[5]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\vacated_space[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vacated_space[6]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[6]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\vacated_space[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vacated_space[7]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[7]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\vacated_space[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[8]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[8]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\vacated_space[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space[9]~reg0_q\,
	devoe => ww_devoe,
	o => \vacated_space[9]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\uni_is_vacated_space~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_uni_is_vacated_space~reg0_q\,
	devoe => ww_devoe,
	o => \uni_is_vacated_space~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\is_vacated_space~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_is_vacated_space~reg0_q\,
	devoe => ww_devoe,
	o => \is_vacated_space~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y39_N12
\uni_parked_car[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[0]~12_combout\ = \uni_parked_car[0]~reg0_q\ $ (VCC)
-- \uni_parked_car[0]~13\ = CARRY(\uni_parked_car[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[0]~reg0_q\,
	datad => VCC,
	combout => \uni_parked_car[0]~12_combout\,
	cout => \uni_parked_car[0]~13\);

-- Location: IOIBUF_X27_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y41_N22
\car_exited~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_exited,
	o => \car_exited~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\is_uni_car_exited~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_exited,
	o => \is_uni_car_exited~input_o\);

-- Location: LCCOMB_X47_Y39_N16
\always0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\car_exited~input_o\ & \is_uni_car_exited~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_exited~input_o\,
	datac => \is_uni_car_exited~input_o\,
	combout => \always0~1_combout\);

-- Location: IOIBUF_X46_Y41_N8
\car_entered~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_entered,
	o => \car_entered~input_o\);

-- Location: IOIBUF_X50_Y41_N1
\is_uni_car_entered~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_entered,
	o => \is_uni_car_entered~input_o\);

-- Location: LCCOMB_X47_Y39_N6
\always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\car_entered~input_o\ & \is_uni_car_entered~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \car_entered~input_o\,
	datad => \is_uni_car_entered~input_o\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X51_Y39_N14
\uni_parked_car[1]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[1]~16_combout\ = (\always0~0_combout\ & ((\uni_parked_car[1]~reg0_q\ & (!\uni_parked_car[0]~13\)) # (!\uni_parked_car[1]~reg0_q\ & ((\uni_parked_car[0]~13\) # (GND))))) # (!\always0~0_combout\ & ((\uni_parked_car[1]~reg0_q\ & 
-- (\uni_parked_car[0]~13\ & VCC)) # (!\uni_parked_car[1]~reg0_q\ & (!\uni_parked_car[0]~13\))))
-- \uni_parked_car[1]~17\ = CARRY((\always0~0_combout\ & ((!\uni_parked_car[0]~13\) # (!\uni_parked_car[1]~reg0_q\))) # (!\always0~0_combout\ & (!\uni_parked_car[1]~reg0_q\ & !\uni_parked_car[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_parked_car[1]~reg0_q\,
	datad => VCC,
	cin => \uni_parked_car[0]~13\,
	combout => \uni_parked_car[1]~16_combout\,
	cout => \uni_parked_car[1]~17\);

-- Location: FF_X51_Y39_N15
\uni_parked_car[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_parked_car[1]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[1]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N16
\uni_parked_car[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[2]~18_combout\ = ((\uni_parked_car[2]~reg0_q\ $ (\always0~0_combout\ $ (\uni_parked_car[1]~17\)))) # (GND)
-- \uni_parked_car[2]~19\ = CARRY((\uni_parked_car[2]~reg0_q\ & ((!\uni_parked_car[1]~17\) # (!\always0~0_combout\))) # (!\uni_parked_car[2]~reg0_q\ & (!\always0~0_combout\ & !\uni_parked_car[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[2]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_parked_car[1]~17\,
	combout => \uni_parked_car[2]~18_combout\,
	cout => \uni_parked_car[2]~19\);

-- Location: FF_X49_Y39_N1
\uni_parked_car[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uni_parked_car[2]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[2]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N18
\uni_parked_car[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[3]~20_combout\ = (\always0~0_combout\ & ((\uni_parked_car[3]~reg0_q\ & (!\uni_parked_car[2]~19\)) # (!\uni_parked_car[3]~reg0_q\ & ((\uni_parked_car[2]~19\) # (GND))))) # (!\always0~0_combout\ & ((\uni_parked_car[3]~reg0_q\ & 
-- (\uni_parked_car[2]~19\ & VCC)) # (!\uni_parked_car[3]~reg0_q\ & (!\uni_parked_car[2]~19\))))
-- \uni_parked_car[3]~21\ = CARRY((\always0~0_combout\ & ((!\uni_parked_car[2]~19\) # (!\uni_parked_car[3]~reg0_q\))) # (!\always0~0_combout\ & (!\uni_parked_car[3]~reg0_q\ & !\uni_parked_car[2]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_parked_car[3]~reg0_q\,
	datad => VCC,
	cin => \uni_parked_car[2]~19\,
	combout => \uni_parked_car[3]~20_combout\,
	cout => \uni_parked_car[3]~21\);

-- Location: FF_X49_Y39_N13
\uni_parked_car[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uni_parked_car[3]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[3]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N8
\LessThan6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!\uni_parked_car[0]~reg0_q\ & (!\uni_parked_car[1]~reg0_q\ & (!\uni_parked_car[3]~reg0_q\ & !\uni_parked_car[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[0]~reg0_q\,
	datab => \uni_parked_car[1]~reg0_q\,
	datac => \uni_parked_car[3]~reg0_q\,
	datad => \uni_parked_car[2]~reg0_q\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X51_Y39_N20
\uni_parked_car[4]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[4]~22_combout\ = ((\always0~0_combout\ $ (\uni_parked_car[4]~reg0_q\ $ (\uni_parked_car[3]~21\)))) # (GND)
-- \uni_parked_car[4]~23\ = CARRY((\always0~0_combout\ & (\uni_parked_car[4]~reg0_q\ & !\uni_parked_car[3]~21\)) # (!\always0~0_combout\ & ((\uni_parked_car[4]~reg0_q\) # (!\uni_parked_car[3]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_parked_car[4]~reg0_q\,
	datad => VCC,
	cin => \uni_parked_car[3]~21\,
	combout => \uni_parked_car[4]~22_combout\,
	cout => \uni_parked_car[4]~23\);

-- Location: FF_X49_Y39_N17
\uni_parked_car[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uni_parked_car[4]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[4]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N22
\uni_parked_car[5]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[5]~24_combout\ = (\uni_parked_car[5]~reg0_q\ & ((\always0~0_combout\ & (!\uni_parked_car[4]~23\)) # (!\always0~0_combout\ & (\uni_parked_car[4]~23\ & VCC)))) # (!\uni_parked_car[5]~reg0_q\ & ((\always0~0_combout\ & 
-- ((\uni_parked_car[4]~23\) # (GND))) # (!\always0~0_combout\ & (!\uni_parked_car[4]~23\))))
-- \uni_parked_car[5]~25\ = CARRY((\uni_parked_car[5]~reg0_q\ & (\always0~0_combout\ & !\uni_parked_car[4]~23\)) # (!\uni_parked_car[5]~reg0_q\ & ((\always0~0_combout\) # (!\uni_parked_car[4]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[5]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_parked_car[4]~23\,
	combout => \uni_parked_car[5]~24_combout\,
	cout => \uni_parked_car[5]~25\);

-- Location: FF_X51_Y39_N23
\uni_parked_car[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_parked_car[5]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[5]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N24
\uni_parked_car[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[6]~26_combout\ = ((\always0~0_combout\ $ (\uni_parked_car[6]~reg0_q\ $ (\uni_parked_car[5]~25\)))) # (GND)
-- \uni_parked_car[6]~27\ = CARRY((\always0~0_combout\ & (\uni_parked_car[6]~reg0_q\ & !\uni_parked_car[5]~25\)) # (!\always0~0_combout\ & ((\uni_parked_car[6]~reg0_q\) # (!\uni_parked_car[5]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_parked_car[6]~reg0_q\,
	datad => VCC,
	cin => \uni_parked_car[5]~25\,
	combout => \uni_parked_car[6]~26_combout\,
	cout => \uni_parked_car[6]~27\);

-- Location: FF_X51_Y39_N25
\uni_parked_car[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_parked_car[6]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[6]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N26
\uni_parked_car[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[7]~28_combout\ = (\uni_parked_car[7]~reg0_q\ & ((\always0~0_combout\ & (!\uni_parked_car[6]~27\)) # (!\always0~0_combout\ & (\uni_parked_car[6]~27\ & VCC)))) # (!\uni_parked_car[7]~reg0_q\ & ((\always0~0_combout\ & 
-- ((\uni_parked_car[6]~27\) # (GND))) # (!\always0~0_combout\ & (!\uni_parked_car[6]~27\))))
-- \uni_parked_car[7]~29\ = CARRY((\uni_parked_car[7]~reg0_q\ & (\always0~0_combout\ & !\uni_parked_car[6]~27\)) # (!\uni_parked_car[7]~reg0_q\ & ((\always0~0_combout\) # (!\uni_parked_car[6]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[7]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_parked_car[6]~27\,
	combout => \uni_parked_car[7]~28_combout\,
	cout => \uni_parked_car[7]~29\);

-- Location: FF_X51_Y39_N27
\uni_parked_car[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_parked_car[7]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[7]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N28
\uni_parked_car[8]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[8]~30_combout\ = ((\always0~0_combout\ $ (\uni_parked_car[8]~reg0_q\ $ (\uni_parked_car[7]~29\)))) # (GND)
-- \uni_parked_car[8]~31\ = CARRY((\always0~0_combout\ & (\uni_parked_car[8]~reg0_q\ & !\uni_parked_car[7]~29\)) # (!\always0~0_combout\ & ((\uni_parked_car[8]~reg0_q\) # (!\uni_parked_car[7]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_parked_car[8]~reg0_q\,
	datad => VCC,
	cin => \uni_parked_car[7]~29\,
	combout => \uni_parked_car[8]~30_combout\,
	cout => \uni_parked_car[8]~31\);

-- Location: FF_X51_Y39_N29
\uni_parked_car[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_parked_car[8]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[8]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N30
\uni_parked_car[9]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[9]~32_combout\ = \always0~0_combout\ $ (\uni_parked_car[9]~reg0_q\ $ (!\uni_parked_car[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_parked_car[9]~reg0_q\,
	cin => \uni_parked_car[8]~31\,
	combout => \uni_parked_car[9]~32_combout\);

-- Location: FF_X50_Y39_N29
\uni_parked_car[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uni_parked_car[9]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[9]~reg0_q\);

-- Location: LCCOMB_X51_Y39_N4
\LessThan6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!\uni_parked_car[8]~reg0_q\ & !\uni_parked_car[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uni_parked_car[8]~reg0_q\,
	datad => \uni_parked_car[9]~reg0_q\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X51_Y39_N2
\LessThan6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!\uni_parked_car[5]~reg0_q\ & (!\uni_parked_car[6]~reg0_q\ & (!\uni_parked_car[7]~reg0_q\ & !\uni_parked_car[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[5]~reg0_q\,
	datab => \uni_parked_car[6]~reg0_q\,
	datac => \uni_parked_car[7]~reg0_q\,
	datad => \uni_parked_car[4]~reg0_q\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X51_Y39_N6
\uni_parked_car[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[2]~15_combout\ = ((\LessThan6~0_combout\ & (\LessThan6~2_combout\ & \LessThan6~1_combout\))) # (!\always0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \LessThan6~0_combout\,
	datac => \LessThan6~2_combout\,
	datad => \LessThan6~1_combout\,
	combout => \uni_parked_car[2]~15_combout\);

-- Location: LCCOMB_X51_Y39_N0
\LessThan4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (((!\uni_parked_car[3]~reg0_q\ & !\uni_parked_car[2]~reg0_q\)) # (!\uni_parked_car[4]~reg0_q\)) # (!\uni_parked_car[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[5]~reg0_q\,
	datab => \uni_parked_car[4]~reg0_q\,
	datac => \uni_parked_car[3]~reg0_q\,
	datad => \uni_parked_car[2]~reg0_q\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X51_Y39_N10
\LessThan4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (((\LessThan4~0_combout\) # (!\uni_parked_car[7]~reg0_q\)) # (!\uni_parked_car[8]~reg0_q\)) # (!\uni_parked_car[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[6]~reg0_q\,
	datab => \uni_parked_car[8]~reg0_q\,
	datac => \uni_parked_car[7]~reg0_q\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X47_Y39_N20
\always0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\car_entered~input_o\ & !\is_uni_car_entered~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \car_entered~input_o\,
	datad => \is_uni_car_entered~input_o\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X48_Y39_N6
\parked_car[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[0]~12_combout\ = \parked_car[0]~reg0_q\ $ (VCC)
-- \parked_car[0]~13\ = CARRY(\parked_car[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[0]~reg0_q\,
	datad => VCC,
	combout => \parked_car[0]~12_combout\,
	cout => \parked_car[0]~13\);

-- Location: LCCOMB_X48_Y39_N22
\parked_car[8]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[8]~30_combout\ = ((\parked_car[8]~reg0_q\ $ (\always0~2_combout\ $ (\parked_car[7]~29\)))) # (GND)
-- \parked_car[8]~31\ = CARRY((\parked_car[8]~reg0_q\ & ((!\parked_car[7]~29\) # (!\always0~2_combout\))) # (!\parked_car[8]~reg0_q\ & (!\always0~2_combout\ & !\parked_car[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[8]~reg0_q\,
	datab => \always0~2_combout\,
	datad => VCC,
	cin => \parked_car[7]~29\,
	combout => \parked_car[8]~30_combout\,
	cout => \parked_car[8]~31\);

-- Location: LCCOMB_X48_Y39_N24
\parked_car[9]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[9]~32_combout\ = \parked_car[9]~reg0_q\ $ (\parked_car[8]~31\ $ (!\always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \parked_car[9]~reg0_q\,
	datad => \always0~2_combout\,
	cin => \parked_car[8]~31\,
	combout => \parked_car[9]~32_combout\);

-- Location: FF_X48_Y39_N25
\parked_car[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[9]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[9]~reg0_q\);

-- Location: LCCOMB_X49_Y39_N6
\parked_car[0]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[0]~14_combout\ = (\always0~0_combout\) # ((\always0~1_combout\) # ((\always0~2_combout\ & \parked_car[9]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \always0~2_combout\,
	datac => \always0~1_combout\,
	datad => \parked_car[9]~reg0_q\,
	combout => \parked_car[0]~14_combout\);

-- Location: LCCOMB_X43_Y39_N0
\elapsed_time_cycles[0]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[0]~93_combout\ = !elapsed_time_cycles(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => elapsed_time_cycles(0),
	combout => \elapsed_time_cycles[0]~93_combout\);

-- Location: FF_X43_Y39_N1
\elapsed_time_cycles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[0]~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(0));

-- Location: LCCOMB_X43_Y39_N2
\elapsed_time_cycles[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[1]~31_combout\ = (elapsed_time_cycles(0) & (elapsed_time_cycles(1) $ (VCC))) # (!elapsed_time_cycles(0) & (elapsed_time_cycles(1) & VCC))
-- \elapsed_time_cycles[1]~32\ = CARRY((elapsed_time_cycles(0) & elapsed_time_cycles(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(0),
	datab => elapsed_time_cycles(1),
	datad => VCC,
	combout => \elapsed_time_cycles[1]~31_combout\,
	cout => \elapsed_time_cycles[1]~32\);

-- Location: FF_X43_Y39_N3
\elapsed_time_cycles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[1]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(1));

-- Location: LCCOMB_X43_Y39_N4
\elapsed_time_cycles[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[2]~33_combout\ = (elapsed_time_cycles(2) & (!\elapsed_time_cycles[1]~32\)) # (!elapsed_time_cycles(2) & ((\elapsed_time_cycles[1]~32\) # (GND)))
-- \elapsed_time_cycles[2]~34\ = CARRY((!\elapsed_time_cycles[1]~32\) # (!elapsed_time_cycles(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(2),
	datad => VCC,
	cin => \elapsed_time_cycles[1]~32\,
	combout => \elapsed_time_cycles[2]~33_combout\,
	cout => \elapsed_time_cycles[2]~34\);

-- Location: FF_X43_Y39_N5
\elapsed_time_cycles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[2]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(2));

-- Location: LCCOMB_X43_Y39_N6
\elapsed_time_cycles[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[3]~35_combout\ = (elapsed_time_cycles(3) & (\elapsed_time_cycles[2]~34\ $ (GND))) # (!elapsed_time_cycles(3) & (!\elapsed_time_cycles[2]~34\ & VCC))
-- \elapsed_time_cycles[3]~36\ = CARRY((elapsed_time_cycles(3) & !\elapsed_time_cycles[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(3),
	datad => VCC,
	cin => \elapsed_time_cycles[2]~34\,
	combout => \elapsed_time_cycles[3]~35_combout\,
	cout => \elapsed_time_cycles[3]~36\);

-- Location: FF_X43_Y39_N7
\elapsed_time_cycles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[3]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(3));

-- Location: LCCOMB_X43_Y39_N8
\elapsed_time_cycles[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[4]~37_combout\ = (elapsed_time_cycles(4) & (!\elapsed_time_cycles[3]~36\)) # (!elapsed_time_cycles(4) & ((\elapsed_time_cycles[3]~36\) # (GND)))
-- \elapsed_time_cycles[4]~38\ = CARRY((!\elapsed_time_cycles[3]~36\) # (!elapsed_time_cycles(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(4),
	datad => VCC,
	cin => \elapsed_time_cycles[3]~36\,
	combout => \elapsed_time_cycles[4]~37_combout\,
	cout => \elapsed_time_cycles[4]~38\);

-- Location: FF_X43_Y39_N9
\elapsed_time_cycles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[4]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(4));

-- Location: LCCOMB_X43_Y39_N10
\elapsed_time_cycles[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[5]~39_combout\ = (elapsed_time_cycles(5) & (\elapsed_time_cycles[4]~38\ $ (GND))) # (!elapsed_time_cycles(5) & (!\elapsed_time_cycles[4]~38\ & VCC))
-- \elapsed_time_cycles[5]~40\ = CARRY((elapsed_time_cycles(5) & !\elapsed_time_cycles[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(5),
	datad => VCC,
	cin => \elapsed_time_cycles[4]~38\,
	combout => \elapsed_time_cycles[5]~39_combout\,
	cout => \elapsed_time_cycles[5]~40\);

-- Location: FF_X43_Y39_N11
\elapsed_time_cycles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[5]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(5));

-- Location: LCCOMB_X43_Y39_N12
\elapsed_time_cycles[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[6]~41_combout\ = (elapsed_time_cycles(6) & (!\elapsed_time_cycles[5]~40\)) # (!elapsed_time_cycles(6) & ((\elapsed_time_cycles[5]~40\) # (GND)))
-- \elapsed_time_cycles[6]~42\ = CARRY((!\elapsed_time_cycles[5]~40\) # (!elapsed_time_cycles(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(6),
	datad => VCC,
	cin => \elapsed_time_cycles[5]~40\,
	combout => \elapsed_time_cycles[6]~41_combout\,
	cout => \elapsed_time_cycles[6]~42\);

-- Location: FF_X43_Y39_N13
\elapsed_time_cycles[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[6]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(6));

-- Location: LCCOMB_X43_Y39_N14
\elapsed_time_cycles[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[7]~43_combout\ = (elapsed_time_cycles(7) & (\elapsed_time_cycles[6]~42\ $ (GND))) # (!elapsed_time_cycles(7) & (!\elapsed_time_cycles[6]~42\ & VCC))
-- \elapsed_time_cycles[7]~44\ = CARRY((elapsed_time_cycles(7) & !\elapsed_time_cycles[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(7),
	datad => VCC,
	cin => \elapsed_time_cycles[6]~42\,
	combout => \elapsed_time_cycles[7]~43_combout\,
	cout => \elapsed_time_cycles[7]~44\);

-- Location: FF_X43_Y39_N15
\elapsed_time_cycles[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[7]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(7));

-- Location: LCCOMB_X43_Y39_N16
\elapsed_time_cycles[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[8]~45_combout\ = (elapsed_time_cycles(8) & (!\elapsed_time_cycles[7]~44\)) # (!elapsed_time_cycles(8) & ((\elapsed_time_cycles[7]~44\) # (GND)))
-- \elapsed_time_cycles[8]~46\ = CARRY((!\elapsed_time_cycles[7]~44\) # (!elapsed_time_cycles(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(8),
	datad => VCC,
	cin => \elapsed_time_cycles[7]~44\,
	combout => \elapsed_time_cycles[8]~45_combout\,
	cout => \elapsed_time_cycles[8]~46\);

-- Location: FF_X43_Y39_N17
\elapsed_time_cycles[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[8]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(8));

-- Location: LCCOMB_X43_Y39_N18
\elapsed_time_cycles[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[9]~47_combout\ = (elapsed_time_cycles(9) & (\elapsed_time_cycles[8]~46\ $ (GND))) # (!elapsed_time_cycles(9) & (!\elapsed_time_cycles[8]~46\ & VCC))
-- \elapsed_time_cycles[9]~48\ = CARRY((elapsed_time_cycles(9) & !\elapsed_time_cycles[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(9),
	datad => VCC,
	cin => \elapsed_time_cycles[8]~46\,
	combout => \elapsed_time_cycles[9]~47_combout\,
	cout => \elapsed_time_cycles[9]~48\);

-- Location: FF_X43_Y39_N19
\elapsed_time_cycles[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[9]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(9));

-- Location: LCCOMB_X43_Y39_N20
\elapsed_time_cycles[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[10]~49_combout\ = (elapsed_time_cycles(10) & (!\elapsed_time_cycles[9]~48\)) # (!elapsed_time_cycles(10) & ((\elapsed_time_cycles[9]~48\) # (GND)))
-- \elapsed_time_cycles[10]~50\ = CARRY((!\elapsed_time_cycles[9]~48\) # (!elapsed_time_cycles(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(10),
	datad => VCC,
	cin => \elapsed_time_cycles[9]~48\,
	combout => \elapsed_time_cycles[10]~49_combout\,
	cout => \elapsed_time_cycles[10]~50\);

-- Location: FF_X43_Y39_N21
\elapsed_time_cycles[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[10]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(10));

-- Location: LCCOMB_X43_Y39_N22
\elapsed_time_cycles[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[11]~51_combout\ = (elapsed_time_cycles(11) & (\elapsed_time_cycles[10]~50\ $ (GND))) # (!elapsed_time_cycles(11) & (!\elapsed_time_cycles[10]~50\ & VCC))
-- \elapsed_time_cycles[11]~52\ = CARRY((elapsed_time_cycles(11) & !\elapsed_time_cycles[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(11),
	datad => VCC,
	cin => \elapsed_time_cycles[10]~50\,
	combout => \elapsed_time_cycles[11]~51_combout\,
	cout => \elapsed_time_cycles[11]~52\);

-- Location: FF_X43_Y39_N23
\elapsed_time_cycles[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[11]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(11));

-- Location: LCCOMB_X43_Y39_N24
\elapsed_time_cycles[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[12]~53_combout\ = (elapsed_time_cycles(12) & (!\elapsed_time_cycles[11]~52\)) # (!elapsed_time_cycles(12) & ((\elapsed_time_cycles[11]~52\) # (GND)))
-- \elapsed_time_cycles[12]~54\ = CARRY((!\elapsed_time_cycles[11]~52\) # (!elapsed_time_cycles(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(12),
	datad => VCC,
	cin => \elapsed_time_cycles[11]~52\,
	combout => \elapsed_time_cycles[12]~53_combout\,
	cout => \elapsed_time_cycles[12]~54\);

-- Location: FF_X43_Y39_N25
\elapsed_time_cycles[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[12]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(12));

-- Location: LCCOMB_X43_Y39_N26
\elapsed_time_cycles[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[13]~55_combout\ = (elapsed_time_cycles(13) & (\elapsed_time_cycles[12]~54\ $ (GND))) # (!elapsed_time_cycles(13) & (!\elapsed_time_cycles[12]~54\ & VCC))
-- \elapsed_time_cycles[13]~56\ = CARRY((elapsed_time_cycles(13) & !\elapsed_time_cycles[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(13),
	datad => VCC,
	cin => \elapsed_time_cycles[12]~54\,
	combout => \elapsed_time_cycles[13]~55_combout\,
	cout => \elapsed_time_cycles[13]~56\);

-- Location: FF_X43_Y39_N27
\elapsed_time_cycles[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[13]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(13));

-- Location: LCCOMB_X43_Y39_N28
\elapsed_time_cycles[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[14]~57_combout\ = (elapsed_time_cycles(14) & (!\elapsed_time_cycles[13]~56\)) # (!elapsed_time_cycles(14) & ((\elapsed_time_cycles[13]~56\) # (GND)))
-- \elapsed_time_cycles[14]~58\ = CARRY((!\elapsed_time_cycles[13]~56\) # (!elapsed_time_cycles(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(14),
	datad => VCC,
	cin => \elapsed_time_cycles[13]~56\,
	combout => \elapsed_time_cycles[14]~57_combout\,
	cout => \elapsed_time_cycles[14]~58\);

-- Location: FF_X43_Y39_N29
\elapsed_time_cycles[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[14]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(14));

-- Location: LCCOMB_X43_Y39_N30
\elapsed_time_cycles[15]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[15]~59_combout\ = (elapsed_time_cycles(15) & (\elapsed_time_cycles[14]~58\ $ (GND))) # (!elapsed_time_cycles(15) & (!\elapsed_time_cycles[14]~58\ & VCC))
-- \elapsed_time_cycles[15]~60\ = CARRY((elapsed_time_cycles(15) & !\elapsed_time_cycles[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(15),
	datad => VCC,
	cin => \elapsed_time_cycles[14]~58\,
	combout => \elapsed_time_cycles[15]~59_combout\,
	cout => \elapsed_time_cycles[15]~60\);

-- Location: FF_X43_Y39_N31
\elapsed_time_cycles[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[15]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(15));

-- Location: LCCOMB_X43_Y38_N0
\elapsed_time_cycles[16]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[16]~61_combout\ = (elapsed_time_cycles(16) & (!\elapsed_time_cycles[15]~60\)) # (!elapsed_time_cycles(16) & ((\elapsed_time_cycles[15]~60\) # (GND)))
-- \elapsed_time_cycles[16]~62\ = CARRY((!\elapsed_time_cycles[15]~60\) # (!elapsed_time_cycles(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(16),
	datad => VCC,
	cin => \elapsed_time_cycles[15]~60\,
	combout => \elapsed_time_cycles[16]~61_combout\,
	cout => \elapsed_time_cycles[16]~62\);

-- Location: FF_X43_Y38_N1
\elapsed_time_cycles[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[16]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(16));

-- Location: LCCOMB_X43_Y38_N2
\elapsed_time_cycles[17]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[17]~63_combout\ = (elapsed_time_cycles(17) & (\elapsed_time_cycles[16]~62\ $ (GND))) # (!elapsed_time_cycles(17) & (!\elapsed_time_cycles[16]~62\ & VCC))
-- \elapsed_time_cycles[17]~64\ = CARRY((elapsed_time_cycles(17) & !\elapsed_time_cycles[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(17),
	datad => VCC,
	cin => \elapsed_time_cycles[16]~62\,
	combout => \elapsed_time_cycles[17]~63_combout\,
	cout => \elapsed_time_cycles[17]~64\);

-- Location: FF_X43_Y38_N3
\elapsed_time_cycles[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[17]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(17));

-- Location: LCCOMB_X43_Y38_N4
\elapsed_time_cycles[18]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[18]~65_combout\ = (elapsed_time_cycles(18) & (!\elapsed_time_cycles[17]~64\)) # (!elapsed_time_cycles(18) & ((\elapsed_time_cycles[17]~64\) # (GND)))
-- \elapsed_time_cycles[18]~66\ = CARRY((!\elapsed_time_cycles[17]~64\) # (!elapsed_time_cycles(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(18),
	datad => VCC,
	cin => \elapsed_time_cycles[17]~64\,
	combout => \elapsed_time_cycles[18]~65_combout\,
	cout => \elapsed_time_cycles[18]~66\);

-- Location: FF_X43_Y38_N5
\elapsed_time_cycles[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[18]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(18));

-- Location: LCCOMB_X43_Y38_N6
\elapsed_time_cycles[19]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[19]~67_combout\ = (elapsed_time_cycles(19) & (\elapsed_time_cycles[18]~66\ $ (GND))) # (!elapsed_time_cycles(19) & (!\elapsed_time_cycles[18]~66\ & VCC))
-- \elapsed_time_cycles[19]~68\ = CARRY((elapsed_time_cycles(19) & !\elapsed_time_cycles[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(19),
	datad => VCC,
	cin => \elapsed_time_cycles[18]~66\,
	combout => \elapsed_time_cycles[19]~67_combout\,
	cout => \elapsed_time_cycles[19]~68\);

-- Location: FF_X43_Y38_N7
\elapsed_time_cycles[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[19]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(19));

-- Location: LCCOMB_X43_Y38_N8
\elapsed_time_cycles[20]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[20]~69_combout\ = (elapsed_time_cycles(20) & (!\elapsed_time_cycles[19]~68\)) # (!elapsed_time_cycles(20) & ((\elapsed_time_cycles[19]~68\) # (GND)))
-- \elapsed_time_cycles[20]~70\ = CARRY((!\elapsed_time_cycles[19]~68\) # (!elapsed_time_cycles(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(20),
	datad => VCC,
	cin => \elapsed_time_cycles[19]~68\,
	combout => \elapsed_time_cycles[20]~69_combout\,
	cout => \elapsed_time_cycles[20]~70\);

-- Location: FF_X43_Y38_N9
\elapsed_time_cycles[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[20]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(20));

-- Location: LCCOMB_X43_Y38_N10
\elapsed_time_cycles[21]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[21]~71_combout\ = (elapsed_time_cycles(21) & (\elapsed_time_cycles[20]~70\ $ (GND))) # (!elapsed_time_cycles(21) & (!\elapsed_time_cycles[20]~70\ & VCC))
-- \elapsed_time_cycles[21]~72\ = CARRY((elapsed_time_cycles(21) & !\elapsed_time_cycles[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(21),
	datad => VCC,
	cin => \elapsed_time_cycles[20]~70\,
	combout => \elapsed_time_cycles[21]~71_combout\,
	cout => \elapsed_time_cycles[21]~72\);

-- Location: FF_X43_Y38_N11
\elapsed_time_cycles[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[21]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(21));

-- Location: LCCOMB_X43_Y38_N12
\elapsed_time_cycles[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[22]~73_combout\ = (elapsed_time_cycles(22) & (!\elapsed_time_cycles[21]~72\)) # (!elapsed_time_cycles(22) & ((\elapsed_time_cycles[21]~72\) # (GND)))
-- \elapsed_time_cycles[22]~74\ = CARRY((!\elapsed_time_cycles[21]~72\) # (!elapsed_time_cycles(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(22),
	datad => VCC,
	cin => \elapsed_time_cycles[21]~72\,
	combout => \elapsed_time_cycles[22]~73_combout\,
	cout => \elapsed_time_cycles[22]~74\);

-- Location: FF_X43_Y38_N13
\elapsed_time_cycles[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[22]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(22));

-- Location: LCCOMB_X43_Y38_N14
\elapsed_time_cycles[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[23]~75_combout\ = (elapsed_time_cycles(23) & (\elapsed_time_cycles[22]~74\ $ (GND))) # (!elapsed_time_cycles(23) & (!\elapsed_time_cycles[22]~74\ & VCC))
-- \elapsed_time_cycles[23]~76\ = CARRY((elapsed_time_cycles(23) & !\elapsed_time_cycles[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(23),
	datad => VCC,
	cin => \elapsed_time_cycles[22]~74\,
	combout => \elapsed_time_cycles[23]~75_combout\,
	cout => \elapsed_time_cycles[23]~76\);

-- Location: FF_X43_Y38_N15
\elapsed_time_cycles[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[23]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(23));

-- Location: LCCOMB_X43_Y38_N16
\elapsed_time_cycles[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[24]~77_combout\ = (elapsed_time_cycles(24) & (!\elapsed_time_cycles[23]~76\)) # (!elapsed_time_cycles(24) & ((\elapsed_time_cycles[23]~76\) # (GND)))
-- \elapsed_time_cycles[24]~78\ = CARRY((!\elapsed_time_cycles[23]~76\) # (!elapsed_time_cycles(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(24),
	datad => VCC,
	cin => \elapsed_time_cycles[23]~76\,
	combout => \elapsed_time_cycles[24]~77_combout\,
	cout => \elapsed_time_cycles[24]~78\);

-- Location: FF_X43_Y38_N17
\elapsed_time_cycles[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[24]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(24));

-- Location: LCCOMB_X43_Y38_N18
\elapsed_time_cycles[25]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[25]~79_combout\ = (elapsed_time_cycles(25) & (\elapsed_time_cycles[24]~78\ $ (GND))) # (!elapsed_time_cycles(25) & (!\elapsed_time_cycles[24]~78\ & VCC))
-- \elapsed_time_cycles[25]~80\ = CARRY((elapsed_time_cycles(25) & !\elapsed_time_cycles[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(25),
	datad => VCC,
	cin => \elapsed_time_cycles[24]~78\,
	combout => \elapsed_time_cycles[25]~79_combout\,
	cout => \elapsed_time_cycles[25]~80\);

-- Location: FF_X43_Y38_N19
\elapsed_time_cycles[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[25]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(25));

-- Location: LCCOMB_X43_Y38_N20
\elapsed_time_cycles[26]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[26]~81_combout\ = (elapsed_time_cycles(26) & (!\elapsed_time_cycles[25]~80\)) # (!elapsed_time_cycles(26) & ((\elapsed_time_cycles[25]~80\) # (GND)))
-- \elapsed_time_cycles[26]~82\ = CARRY((!\elapsed_time_cycles[25]~80\) # (!elapsed_time_cycles(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(26),
	datad => VCC,
	cin => \elapsed_time_cycles[25]~80\,
	combout => \elapsed_time_cycles[26]~81_combout\,
	cout => \elapsed_time_cycles[26]~82\);

-- Location: FF_X43_Y38_N21
\elapsed_time_cycles[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[26]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(26));

-- Location: LCCOMB_X43_Y38_N22
\elapsed_time_cycles[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[27]~83_combout\ = (elapsed_time_cycles(27) & (\elapsed_time_cycles[26]~82\ $ (GND))) # (!elapsed_time_cycles(27) & (!\elapsed_time_cycles[26]~82\ & VCC))
-- \elapsed_time_cycles[27]~84\ = CARRY((elapsed_time_cycles(27) & !\elapsed_time_cycles[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(27),
	datad => VCC,
	cin => \elapsed_time_cycles[26]~82\,
	combout => \elapsed_time_cycles[27]~83_combout\,
	cout => \elapsed_time_cycles[27]~84\);

-- Location: FF_X43_Y38_N23
\elapsed_time_cycles[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[27]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(27));

-- Location: LCCOMB_X43_Y38_N24
\elapsed_time_cycles[28]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[28]~85_combout\ = (elapsed_time_cycles(28) & (!\elapsed_time_cycles[27]~84\)) # (!elapsed_time_cycles(28) & ((\elapsed_time_cycles[27]~84\) # (GND)))
-- \elapsed_time_cycles[28]~86\ = CARRY((!\elapsed_time_cycles[27]~84\) # (!elapsed_time_cycles(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(28),
	datad => VCC,
	cin => \elapsed_time_cycles[27]~84\,
	combout => \elapsed_time_cycles[28]~85_combout\,
	cout => \elapsed_time_cycles[28]~86\);

-- Location: FF_X43_Y38_N25
\elapsed_time_cycles[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[28]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(28));

-- Location: LCCOMB_X43_Y38_N26
\elapsed_time_cycles[29]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[29]~87_combout\ = (elapsed_time_cycles(29) & (\elapsed_time_cycles[28]~86\ $ (GND))) # (!elapsed_time_cycles(29) & (!\elapsed_time_cycles[28]~86\ & VCC))
-- \elapsed_time_cycles[29]~88\ = CARRY((elapsed_time_cycles(29) & !\elapsed_time_cycles[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(29),
	datad => VCC,
	cin => \elapsed_time_cycles[28]~86\,
	combout => \elapsed_time_cycles[29]~87_combout\,
	cout => \elapsed_time_cycles[29]~88\);

-- Location: FF_X43_Y38_N27
\elapsed_time_cycles[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[29]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(29));

-- Location: LCCOMB_X43_Y38_N28
\elapsed_time_cycles[30]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[30]~89_combout\ = (elapsed_time_cycles(30) & (!\elapsed_time_cycles[29]~88\)) # (!elapsed_time_cycles(30) & ((\elapsed_time_cycles[29]~88\) # (GND)))
-- \elapsed_time_cycles[30]~90\ = CARRY((!\elapsed_time_cycles[29]~88\) # (!elapsed_time_cycles(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(30),
	datad => VCC,
	cin => \elapsed_time_cycles[29]~88\,
	combout => \elapsed_time_cycles[30]~89_combout\,
	cout => \elapsed_time_cycles[30]~90\);

-- Location: FF_X43_Y38_N29
\elapsed_time_cycles[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[30]~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(30));

-- Location: LCCOMB_X43_Y38_N30
\elapsed_time_cycles[31]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \elapsed_time_cycles[31]~91_combout\ = elapsed_time_cycles(31) $ (!\elapsed_time_cycles[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(31),
	cin => \elapsed_time_cycles[30]~90\,
	combout => \elapsed_time_cycles[31]~91_combout\);

-- Location: FF_X43_Y38_N31
\elapsed_time_cycles[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \elapsed_time_cycles[31]~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => elapsed_time_cycles(31));

-- Location: LCCOMB_X44_Y38_N6
\time_threshold~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time_threshold~12_combout\ = (!elapsed_time_cycles(31) & (!elapsed_time_cycles(29) & !elapsed_time_cycles(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => elapsed_time_cycles(31),
	datac => elapsed_time_cycles(29),
	datad => elapsed_time_cycles(30),
	combout => \time_threshold~12_combout\);

-- Location: LCCOMB_X44_Y38_N12
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!elapsed_time_cycles(21) & (((!elapsed_time_cycles(20)) # (!elapsed_time_cycles(19))) # (!elapsed_time_cycles(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(21),
	datab => elapsed_time_cycles(18),
	datac => elapsed_time_cycles(19),
	datad => elapsed_time_cycles(20),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X44_Y38_N8
\time_threshold~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time_threshold~13_combout\ = (!elapsed_time_cycles(23) & (!elapsed_time_cycles(25) & (!elapsed_time_cycles(24) & !elapsed_time_cycles(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(23),
	datab => elapsed_time_cycles(25),
	datac => elapsed_time_cycles(24),
	datad => elapsed_time_cycles(26),
	combout => \time_threshold~13_combout\);

-- Location: LCCOMB_X44_Y39_N8
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!elapsed_time_cycles(15) & (((!elapsed_time_cycles(12) & !elapsed_time_cycles(13))) # (!elapsed_time_cycles(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(12),
	datab => elapsed_time_cycles(15),
	datac => elapsed_time_cycles(13),
	datad => elapsed_time_cycles(14),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y38_N10
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!elapsed_time_cycles(17) & (\LessThan0~0_combout\ & (!elapsed_time_cycles(16) & !elapsed_time_cycles(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => elapsed_time_cycles(17),
	datab => \LessThan0~0_combout\,
	datac => elapsed_time_cycles(16),
	datad => elapsed_time_cycles(21),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X44_Y38_N22
\time_threshold~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time_threshold~14_combout\ = (\time_threshold~13_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\) # (!elapsed_time_cycles(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => elapsed_time_cycles(22),
	datac => \time_threshold~13_combout\,
	datad => \LessThan0~1_combout\,
	combout => \time_threshold~14_combout\);

-- Location: LCCOMB_X44_Y38_N0
\time_threshold~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \time_threshold~15_combout\ = ((elapsed_time_cycles(28) & (!\time_threshold~14_combout\ & elapsed_time_cycles(27)))) # (!\time_threshold~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_threshold~12_combout\,
	datab => elapsed_time_cycles(28),
	datac => \time_threshold~14_combout\,
	datad => elapsed_time_cycles(27),
	combout => \time_threshold~15_combout\);

-- Location: FF_X44_Y38_N1
\time_threshold.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_threshold~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_threshold.0000~q\);

-- Location: FF_X48_Y39_N27
\non_uni_space[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \time_threshold.0000~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => non_uni_space(8));

-- Location: LCCOMB_X48_Y39_N28
\LessThan7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\parked_car[4]~reg0_q\ & ((\parked_car[2]~reg0_q\) # ((\parked_car[3]~reg0_q\) # (!\parked_car[8]~reg0_q\)))) # (!\parked_car[4]~reg0_q\ & (((!\parked_car[8]~reg0_q\ & \parked_car[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[2]~reg0_q\,
	datab => \parked_car[4]~reg0_q\,
	datac => \parked_car[8]~reg0_q\,
	datad => \parked_car[3]~reg0_q\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X48_Y39_N26
\LessThan7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\parked_car[6]~reg0_q\ & ((\parked_car[5]~reg0_q\ & ((\LessThan7~0_combout\) # (!non_uni_space(8)))) # (!\parked_car[5]~reg0_q\ & (!non_uni_space(8) & \LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[6]~reg0_q\,
	datab => \parked_car[5]~reg0_q\,
	datac => non_uni_space(8),
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X48_Y39_N30
\LessThan7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (non_uni_space(8) & (((!\LessThan7~1_combout\) # (!\parked_car[8]~reg0_q\)) # (!\parked_car[7]~reg0_q\))) # (!non_uni_space(8) & (!\parked_car[8]~reg0_q\ & ((!\LessThan7~1_combout\) # (!\parked_car[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => non_uni_space(8),
	datab => \parked_car[7]~reg0_q\,
	datac => \parked_car[8]~reg0_q\,
	datad => \LessThan7~1_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X48_Y39_N2
\LessThan8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (!\parked_car[2]~reg0_q\ & (!\parked_car[6]~reg0_q\ & (!\parked_car[1]~reg0_q\ & !\parked_car[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[2]~reg0_q\,
	datab => \parked_car[6]~reg0_q\,
	datac => \parked_car[1]~reg0_q\,
	datad => \parked_car[7]~reg0_q\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X48_Y39_N0
\LessThan8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!\parked_car[3]~reg0_q\ & (!\parked_car[5]~reg0_q\ & (!\parked_car[4]~reg0_q\ & !\parked_car[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[3]~reg0_q\,
	datab => \parked_car[5]~reg0_q\,
	datac => \parked_car[4]~reg0_q\,
	datad => \parked_car[0]~reg0_q\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X48_Y39_N4
\LessThan8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (!\parked_car[8]~reg0_q\ & (!\parked_car[9]~reg0_q\ & (\LessThan8~1_combout\ & \LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[8]~reg0_q\,
	datab => \parked_car[9]~reg0_q\,
	datac => \LessThan8~1_combout\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X47_Y39_N10
\vacated_space[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[1]~10_combout\ = ((\is_uni_car_exited~input_o\) # (\LessThan8~2_combout\)) # (!\car_exited~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_exited~input_o\,
	datac => \is_uni_car_exited~input_o\,
	datad => \LessThan8~2_combout\,
	combout => \vacated_space[1]~10_combout\);

-- Location: LCCOMB_X47_Y39_N0
\parked_car[0]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[0]~34_combout\ = (\is_uni_car_entered~input_o\ & (((\vacated_space[1]~10_combout\)))) # (!\is_uni_car_entered~input_o\ & ((\car_entered~input_o\ & (!\LessThan7~2_combout\)) # (!\car_entered~input_o\ & ((\vacated_space[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_uni_car_entered~input_o\,
	datab => \car_entered~input_o\,
	datac => \LessThan7~2_combout\,
	datad => \vacated_space[1]~10_combout\,
	combout => \parked_car[0]~34_combout\);

-- Location: LCCOMB_X49_Y39_N4
\parked_car[0]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[0]~15_combout\ = (!\parked_car[0]~14_combout\ & (!\parked_car[0]~34_combout\ & ((\LessThan5~2_combout\) # (!\always0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[0]~14_combout\,
	datab => \always0~2_combout\,
	datac => \LessThan5~2_combout\,
	datad => \parked_car[0]~34_combout\,
	combout => \parked_car[0]~15_combout\);

-- Location: FF_X48_Y39_N7
\parked_car[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[0]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[0]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N8
\parked_car[1]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[1]~16_combout\ = (\always0~2_combout\ & ((\parked_car[1]~reg0_q\ & (!\parked_car[0]~13\)) # (!\parked_car[1]~reg0_q\ & ((\parked_car[0]~13\) # (GND))))) # (!\always0~2_combout\ & ((\parked_car[1]~reg0_q\ & (\parked_car[0]~13\ & VCC)) # 
-- (!\parked_car[1]~reg0_q\ & (!\parked_car[0]~13\))))
-- \parked_car[1]~17\ = CARRY((\always0~2_combout\ & ((!\parked_car[0]~13\) # (!\parked_car[1]~reg0_q\))) # (!\always0~2_combout\ & (!\parked_car[1]~reg0_q\ & !\parked_car[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \parked_car[1]~reg0_q\,
	datad => VCC,
	cin => \parked_car[0]~13\,
	combout => \parked_car[1]~16_combout\,
	cout => \parked_car[1]~17\);

-- Location: FF_X48_Y39_N9
\parked_car[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[1]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[1]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N10
\parked_car[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[2]~18_combout\ = ((\parked_car[2]~reg0_q\ $ (\always0~2_combout\ $ (\parked_car[1]~17\)))) # (GND)
-- \parked_car[2]~19\ = CARRY((\parked_car[2]~reg0_q\ & ((!\parked_car[1]~17\) # (!\always0~2_combout\))) # (!\parked_car[2]~reg0_q\ & (!\always0~2_combout\ & !\parked_car[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[2]~reg0_q\,
	datab => \always0~2_combout\,
	datad => VCC,
	cin => \parked_car[1]~17\,
	combout => \parked_car[2]~18_combout\,
	cout => \parked_car[2]~19\);

-- Location: FF_X48_Y39_N11
\parked_car[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[2]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[2]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N12
\parked_car[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[3]~20_combout\ = (\parked_car[3]~reg0_q\ & ((\always0~2_combout\ & (!\parked_car[2]~19\)) # (!\always0~2_combout\ & (\parked_car[2]~19\ & VCC)))) # (!\parked_car[3]~reg0_q\ & ((\always0~2_combout\ & ((\parked_car[2]~19\) # (GND))) # 
-- (!\always0~2_combout\ & (!\parked_car[2]~19\))))
-- \parked_car[3]~21\ = CARRY((\parked_car[3]~reg0_q\ & (\always0~2_combout\ & !\parked_car[2]~19\)) # (!\parked_car[3]~reg0_q\ & ((\always0~2_combout\) # (!\parked_car[2]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[3]~reg0_q\,
	datab => \always0~2_combout\,
	datad => VCC,
	cin => \parked_car[2]~19\,
	combout => \parked_car[3]~20_combout\,
	cout => \parked_car[3]~21\);

-- Location: FF_X48_Y39_N13
\parked_car[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[3]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[3]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N14
\parked_car[4]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[4]~22_combout\ = ((\always0~2_combout\ $ (\parked_car[4]~reg0_q\ $ (\parked_car[3]~21\)))) # (GND)
-- \parked_car[4]~23\ = CARRY((\always0~2_combout\ & (\parked_car[4]~reg0_q\ & !\parked_car[3]~21\)) # (!\always0~2_combout\ & ((\parked_car[4]~reg0_q\) # (!\parked_car[3]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \parked_car[4]~reg0_q\,
	datad => VCC,
	cin => \parked_car[3]~21\,
	combout => \parked_car[4]~22_combout\,
	cout => \parked_car[4]~23\);

-- Location: FF_X48_Y39_N15
\parked_car[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[4]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[4]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N16
\parked_car[5]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[5]~24_combout\ = (\always0~2_combout\ & ((\parked_car[5]~reg0_q\ & (!\parked_car[4]~23\)) # (!\parked_car[5]~reg0_q\ & ((\parked_car[4]~23\) # (GND))))) # (!\always0~2_combout\ & ((\parked_car[5]~reg0_q\ & (\parked_car[4]~23\ & VCC)) # 
-- (!\parked_car[5]~reg0_q\ & (!\parked_car[4]~23\))))
-- \parked_car[5]~25\ = CARRY((\always0~2_combout\ & ((!\parked_car[4]~23\) # (!\parked_car[5]~reg0_q\))) # (!\always0~2_combout\ & (!\parked_car[5]~reg0_q\ & !\parked_car[4]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \parked_car[5]~reg0_q\,
	datad => VCC,
	cin => \parked_car[4]~23\,
	combout => \parked_car[5]~24_combout\,
	cout => \parked_car[5]~25\);

-- Location: FF_X48_Y39_N17
\parked_car[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[5]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[5]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N18
\parked_car[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[6]~26_combout\ = ((\always0~2_combout\ $ (\parked_car[6]~reg0_q\ $ (\parked_car[5]~25\)))) # (GND)
-- \parked_car[6]~27\ = CARRY((\always0~2_combout\ & (\parked_car[6]~reg0_q\ & !\parked_car[5]~25\)) # (!\always0~2_combout\ & ((\parked_car[6]~reg0_q\) # (!\parked_car[5]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \parked_car[6]~reg0_q\,
	datad => VCC,
	cin => \parked_car[5]~25\,
	combout => \parked_car[6]~26_combout\,
	cout => \parked_car[6]~27\);

-- Location: FF_X48_Y39_N19
\parked_car[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[6]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[6]~reg0_q\);

-- Location: LCCOMB_X48_Y39_N20
\parked_car[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parked_car[7]~28_combout\ = (\always0~2_combout\ & ((\parked_car[7]~reg0_q\ & (!\parked_car[6]~27\)) # (!\parked_car[7]~reg0_q\ & ((\parked_car[6]~27\) # (GND))))) # (!\always0~2_combout\ & ((\parked_car[7]~reg0_q\ & (\parked_car[6]~27\ & VCC)) # 
-- (!\parked_car[7]~reg0_q\ & (!\parked_car[6]~27\))))
-- \parked_car[7]~29\ = CARRY((\always0~2_combout\ & ((!\parked_car[6]~27\) # (!\parked_car[7]~reg0_q\))) # (!\always0~2_combout\ & (!\parked_car[7]~reg0_q\ & !\parked_car[6]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \parked_car[7]~reg0_q\,
	datad => VCC,
	cin => \parked_car[6]~27\,
	combout => \parked_car[7]~28_combout\,
	cout => \parked_car[7]~29\);

-- Location: FF_X48_Y39_N21
\parked_car[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[7]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[7]~reg0_q\);

-- Location: FF_X48_Y39_N23
\parked_car[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \parked_car[8]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parked_car[8]~reg0_q\);

-- Location: LCCOMB_X49_Y39_N10
\Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((\uni_parked_car[0]~reg0_q\ & \parked_car[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[0]~reg0_q\,
	datab => \parked_car[0]~reg0_q\,
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X49_Y39_N12
\Add1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~3_cout\ = CARRY((\uni_parked_car[1]~reg0_q\ & (!\parked_car[1]~reg0_q\ & !\Add1~1_cout\)) # (!\uni_parked_car[1]~reg0_q\ & ((!\Add1~1_cout\) # (!\parked_car[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[1]~reg0_q\,
	datab => \parked_car[1]~reg0_q\,
	datad => VCC,
	cin => \Add1~1_cout\,
	cout => \Add1~3_cout\);

-- Location: LCCOMB_X49_Y39_N14
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\uni_parked_car[2]~reg0_q\ $ (\parked_car[2]~reg0_q\ $ (!\Add1~3_cout\)))) # (GND)
-- \Add1~5\ = CARRY((\uni_parked_car[2]~reg0_q\ & ((\parked_car[2]~reg0_q\) # (!\Add1~3_cout\))) # (!\uni_parked_car[2]~reg0_q\ & (\parked_car[2]~reg0_q\ & !\Add1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[2]~reg0_q\,
	datab => \parked_car[2]~reg0_q\,
	datad => VCC,
	cin => \Add1~3_cout\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X49_Y39_N16
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\uni_parked_car[3]~reg0_q\ & ((\parked_car[3]~reg0_q\ & (\Add1~5\ & VCC)) # (!\parked_car[3]~reg0_q\ & (!\Add1~5\)))) # (!\uni_parked_car[3]~reg0_q\ & ((\parked_car[3]~reg0_q\ & (!\Add1~5\)) # (!\parked_car[3]~reg0_q\ & ((\Add1~5\) # 
-- (GND)))))
-- \Add1~7\ = CARRY((\uni_parked_car[3]~reg0_q\ & (!\parked_car[3]~reg0_q\ & !\Add1~5\)) # (!\uni_parked_car[3]~reg0_q\ & ((!\Add1~5\) # (!\parked_car[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[3]~reg0_q\,
	datab => \parked_car[3]~reg0_q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X49_Y39_N18
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\uni_parked_car[4]~reg0_q\ $ (\parked_car[4]~reg0_q\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\uni_parked_car[4]~reg0_q\ & ((\parked_car[4]~reg0_q\) # (!\Add1~7\))) # (!\uni_parked_car[4]~reg0_q\ & (\parked_car[4]~reg0_q\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[4]~reg0_q\,
	datab => \parked_car[4]~reg0_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X49_Y39_N20
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\parked_car[5]~reg0_q\ & ((\uni_parked_car[5]~reg0_q\ & (\Add1~9\ & VCC)) # (!\uni_parked_car[5]~reg0_q\ & (!\Add1~9\)))) # (!\parked_car[5]~reg0_q\ & ((\uni_parked_car[5]~reg0_q\ & (!\Add1~9\)) # (!\uni_parked_car[5]~reg0_q\ & 
-- ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\parked_car[5]~reg0_q\ & (!\uni_parked_car[5]~reg0_q\ & !\Add1~9\)) # (!\parked_car[5]~reg0_q\ & ((!\Add1~9\) # (!\uni_parked_car[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[5]~reg0_q\,
	datab => \uni_parked_car[5]~reg0_q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X49_Y39_N22
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\parked_car[6]~reg0_q\ $ (\uni_parked_car[6]~reg0_q\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\parked_car[6]~reg0_q\ & ((\uni_parked_car[6]~reg0_q\) # (!\Add1~11\))) # (!\parked_car[6]~reg0_q\ & (\uni_parked_car[6]~reg0_q\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \parked_car[6]~reg0_q\,
	datab => \uni_parked_car[6]~reg0_q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X49_Y39_N24
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\uni_parked_car[7]~reg0_q\ & ((\parked_car[7]~reg0_q\ & (\Add1~13\ & VCC)) # (!\parked_car[7]~reg0_q\ & (!\Add1~13\)))) # (!\uni_parked_car[7]~reg0_q\ & ((\parked_car[7]~reg0_q\ & (!\Add1~13\)) # (!\parked_car[7]~reg0_q\ & 
-- ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\uni_parked_car[7]~reg0_q\ & (!\parked_car[7]~reg0_q\ & !\Add1~13\)) # (!\uni_parked_car[7]~reg0_q\ & ((!\Add1~13\) # (!\parked_car[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[7]~reg0_q\,
	datab => \parked_car[7]~reg0_q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X49_Y39_N26
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\uni_parked_car[8]~reg0_q\ $ (\parked_car[8]~reg0_q\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\uni_parked_car[8]~reg0_q\ & ((\parked_car[8]~reg0_q\) # (!\Add1~15\))) # (!\uni_parked_car[8]~reg0_q\ & (\parked_car[8]~reg0_q\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[8]~reg0_q\,
	datab => \parked_car[8]~reg0_q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X49_Y39_N28
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\uni_parked_car[9]~reg0_q\ & ((\parked_car[9]~reg0_q\ & (\Add1~17\ & VCC)) # (!\parked_car[9]~reg0_q\ & (!\Add1~17\)))) # (!\uni_parked_car[9]~reg0_q\ & ((\parked_car[9]~reg0_q\ & (!\Add1~17\)) # (!\parked_car[9]~reg0_q\ & 
-- ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\uni_parked_car[9]~reg0_q\ & (!\parked_car[9]~reg0_q\ & !\Add1~17\)) # (!\uni_parked_car[9]~reg0_q\ & ((!\Add1~17\) # (!\parked_car[9]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[9]~reg0_q\,
	datab => \parked_car[9]~reg0_q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X49_Y39_N30
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = !\Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X49_Y39_N2
\LessThan5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (((!\Add1~10_combout\) # (!\Add1~4_combout\)) # (!\Add1~8_combout\)) # (!\Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~10_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X49_Y39_N0
\LessThan5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ((!\Add1~12_combout\ & \LessThan5~0_combout\)) # (!\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~14_combout\,
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X49_Y39_N8
\LessThan5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!\Add1~20_combout\ & (((!\Add1~16_combout\ & \LessThan5~1_combout\)) # (!\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~20_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X50_Y39_N0
\uni_parked_car[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[2]~14_combout\ = (\always0~0_combout\ & ((\uni_parked_car[9]~reg0_q\) # ((!\LessThan5~2_combout\) # (!\LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[9]~reg0_q\,
	datab => \always0~0_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan5~2_combout\,
	combout => \uni_parked_car[2]~14_combout\);

-- Location: LCCOMB_X50_Y39_N6
\uni_parked_car[2]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_parked_car[2]~34_combout\ = (!\uni_parked_car[2]~14_combout\ & (((\is_uni_car_entered~input_o\ & \car_entered~input_o\)) # (!\uni_parked_car[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_parked_car[2]~15_combout\,
	datab => \is_uni_car_entered~input_o\,
	datac => \car_entered~input_o\,
	datad => \uni_parked_car[2]~14_combout\,
	combout => \uni_parked_car[2]~34_combout\);

-- Location: FF_X51_Y39_N13
\uni_parked_car[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_parked_car[0]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_parked_car[0]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N8
\uni_vacated_space[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[0]~10_combout\ = \uni_vacated_space[0]~reg0_q\ $ (VCC)
-- \uni_vacated_space[0]~11\ = CARRY(\uni_vacated_space[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uni_vacated_space[0]~reg0_q\,
	datad => VCC,
	combout => \uni_vacated_space[0]~10_combout\,
	cout => \uni_vacated_space[0]~11\);

-- Location: FF_X50_Y39_N9
\uni_vacated_space[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[0]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[0]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N10
\uni_vacated_space[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[1]~12_combout\ = (\uni_vacated_space[1]~reg0_q\ & ((\always0~0_combout\ & (\uni_vacated_space[0]~11\ & VCC)) # (!\always0~0_combout\ & (!\uni_vacated_space[0]~11\)))) # (!\uni_vacated_space[1]~reg0_q\ & ((\always0~0_combout\ & 
-- (!\uni_vacated_space[0]~11\)) # (!\always0~0_combout\ & ((\uni_vacated_space[0]~11\) # (GND)))))
-- \uni_vacated_space[1]~13\ = CARRY((\uni_vacated_space[1]~reg0_q\ & (!\always0~0_combout\ & !\uni_vacated_space[0]~11\)) # (!\uni_vacated_space[1]~reg0_q\ & ((!\uni_vacated_space[0]~11\) # (!\always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[1]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[0]~11\,
	combout => \uni_vacated_space[1]~12_combout\,
	cout => \uni_vacated_space[1]~13\);

-- Location: FF_X50_Y39_N11
\uni_vacated_space[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[1]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[1]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N12
\uni_vacated_space[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[2]~14_combout\ = (\uni_vacated_space[2]~reg0_q\ & ((\always0~0_combout\ & (!\uni_vacated_space[1]~13\)) # (!\always0~0_combout\ & (\uni_vacated_space[1]~13\ & VCC)))) # (!\uni_vacated_space[2]~reg0_q\ & ((\always0~0_combout\ & 
-- ((\uni_vacated_space[1]~13\) # (GND))) # (!\always0~0_combout\ & (!\uni_vacated_space[1]~13\))))
-- \uni_vacated_space[2]~15\ = CARRY((\uni_vacated_space[2]~reg0_q\ & (\always0~0_combout\ & !\uni_vacated_space[1]~13\)) # (!\uni_vacated_space[2]~reg0_q\ & ((\always0~0_combout\) # (!\uni_vacated_space[1]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[2]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[1]~13\,
	combout => \uni_vacated_space[2]~14_combout\,
	cout => \uni_vacated_space[2]~15\);

-- Location: FF_X50_Y39_N13
\uni_vacated_space[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[2]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[2]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N14
\uni_vacated_space[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[3]~16_combout\ = (\uni_vacated_space[3]~reg0_q\ & ((\always0~0_combout\ & (\uni_vacated_space[2]~15\ & VCC)) # (!\always0~0_combout\ & (!\uni_vacated_space[2]~15\)))) # (!\uni_vacated_space[3]~reg0_q\ & ((\always0~0_combout\ & 
-- (!\uni_vacated_space[2]~15\)) # (!\always0~0_combout\ & ((\uni_vacated_space[2]~15\) # (GND)))))
-- \uni_vacated_space[3]~17\ = CARRY((\uni_vacated_space[3]~reg0_q\ & (!\always0~0_combout\ & !\uni_vacated_space[2]~15\)) # (!\uni_vacated_space[3]~reg0_q\ & ((!\uni_vacated_space[2]~15\) # (!\always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[3]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[2]~15\,
	combout => \uni_vacated_space[3]~16_combout\,
	cout => \uni_vacated_space[3]~17\);

-- Location: FF_X50_Y39_N15
\uni_vacated_space[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[3]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[3]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N16
\uni_vacated_space[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[4]~18_combout\ = (\uni_vacated_space[4]~reg0_q\ & ((\always0~0_combout\ & (!\uni_vacated_space[3]~17\)) # (!\always0~0_combout\ & (\uni_vacated_space[3]~17\ & VCC)))) # (!\uni_vacated_space[4]~reg0_q\ & ((\always0~0_combout\ & 
-- ((\uni_vacated_space[3]~17\) # (GND))) # (!\always0~0_combout\ & (!\uni_vacated_space[3]~17\))))
-- \uni_vacated_space[4]~19\ = CARRY((\uni_vacated_space[4]~reg0_q\ & (\always0~0_combout\ & !\uni_vacated_space[3]~17\)) # (!\uni_vacated_space[4]~reg0_q\ & ((\always0~0_combout\) # (!\uni_vacated_space[3]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[4]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[3]~17\,
	combout => \uni_vacated_space[4]~18_combout\,
	cout => \uni_vacated_space[4]~19\);

-- Location: FF_X50_Y39_N17
\uni_vacated_space[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[4]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[4]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N18
\uni_vacated_space[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[5]~20_combout\ = ((\uni_vacated_space[5]~reg0_q\ $ (\always0~0_combout\ $ (\uni_vacated_space[4]~19\)))) # (GND)
-- \uni_vacated_space[5]~21\ = CARRY((\uni_vacated_space[5]~reg0_q\ & ((!\uni_vacated_space[4]~19\) # (!\always0~0_combout\))) # (!\uni_vacated_space[5]~reg0_q\ & (!\always0~0_combout\ & !\uni_vacated_space[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[5]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[4]~19\,
	combout => \uni_vacated_space[5]~20_combout\,
	cout => \uni_vacated_space[5]~21\);

-- Location: FF_X50_Y39_N19
\uni_vacated_space[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[5]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[5]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N20
\uni_vacated_space[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[6]~22_combout\ = (\always0~0_combout\ & ((\uni_vacated_space[6]~reg0_q\ & (!\uni_vacated_space[5]~21\)) # (!\uni_vacated_space[6]~reg0_q\ & ((\uni_vacated_space[5]~21\) # (GND))))) # (!\always0~0_combout\ & 
-- ((\uni_vacated_space[6]~reg0_q\ & (\uni_vacated_space[5]~21\ & VCC)) # (!\uni_vacated_space[6]~reg0_q\ & (!\uni_vacated_space[5]~21\))))
-- \uni_vacated_space[6]~23\ = CARRY((\always0~0_combout\ & ((!\uni_vacated_space[5]~21\) # (!\uni_vacated_space[6]~reg0_q\))) # (!\always0~0_combout\ & (!\uni_vacated_space[6]~reg0_q\ & !\uni_vacated_space[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_vacated_space[6]~reg0_q\,
	datad => VCC,
	cin => \uni_vacated_space[5]~21\,
	combout => \uni_vacated_space[6]~22_combout\,
	cout => \uni_vacated_space[6]~23\);

-- Location: FF_X50_Y39_N21
\uni_vacated_space[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[6]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[6]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N22
\uni_vacated_space[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[7]~24_combout\ = ((\uni_vacated_space[7]~reg0_q\ $ (\always0~0_combout\ $ (\uni_vacated_space[6]~23\)))) # (GND)
-- \uni_vacated_space[7]~25\ = CARRY((\uni_vacated_space[7]~reg0_q\ & ((!\uni_vacated_space[6]~23\) # (!\always0~0_combout\))) # (!\uni_vacated_space[7]~reg0_q\ & (!\always0~0_combout\ & !\uni_vacated_space[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[7]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[6]~23\,
	combout => \uni_vacated_space[7]~24_combout\,
	cout => \uni_vacated_space[7]~25\);

-- Location: FF_X50_Y39_N23
\uni_vacated_space[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[7]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[7]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N24
\uni_vacated_space[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[8]~26_combout\ = (\uni_vacated_space[8]~reg0_q\ & ((\always0~0_combout\ & (!\uni_vacated_space[7]~25\)) # (!\always0~0_combout\ & (\uni_vacated_space[7]~25\ & VCC)))) # (!\uni_vacated_space[8]~reg0_q\ & ((\always0~0_combout\ & 
-- ((\uni_vacated_space[7]~25\) # (GND))) # (!\always0~0_combout\ & (!\uni_vacated_space[7]~25\))))
-- \uni_vacated_space[8]~27\ = CARRY((\uni_vacated_space[8]~reg0_q\ & (\always0~0_combout\ & !\uni_vacated_space[7]~25\)) # (!\uni_vacated_space[8]~reg0_q\ & ((\always0~0_combout\) # (!\uni_vacated_space[7]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[8]~reg0_q\,
	datab => \always0~0_combout\,
	datad => VCC,
	cin => \uni_vacated_space[7]~25\,
	combout => \uni_vacated_space[8]~26_combout\,
	cout => \uni_vacated_space[8]~27\);

-- Location: FF_X50_Y39_N25
\uni_vacated_space[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[8]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[8]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N26
\uni_vacated_space[9]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_vacated_space[9]~28_combout\ = \uni_vacated_space[9]~reg0_q\ $ (\uni_vacated_space[8]~27\ $ (\always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uni_vacated_space[9]~reg0_q\,
	datad => \always0~0_combout\,
	cin => \uni_vacated_space[8]~27\,
	combout => \uni_vacated_space[9]~28_combout\);

-- Location: FF_X50_Y39_N27
\uni_vacated_space[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_vacated_space[9]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \uni_parked_car[2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_vacated_space[9]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N12
\vacated_space[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[0]~11_combout\ = \vacated_space[0]~reg0_q\ $ (VCC)
-- \vacated_space[0]~12\ = CARRY(\vacated_space[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space[0]~reg0_q\,
	datad => VCC,
	combout => \vacated_space[0]~11_combout\,
	cout => \vacated_space[0]~12\);

-- Location: FF_X46_Y39_N13
\vacated_space[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[0]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[0]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N14
\vacated_space[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[1]~13_combout\ = (\always0~2_combout\ & ((\vacated_space[1]~reg0_q\ & (\vacated_space[0]~12\ & VCC)) # (!\vacated_space[1]~reg0_q\ & (!\vacated_space[0]~12\)))) # (!\always0~2_combout\ & ((\vacated_space[1]~reg0_q\ & 
-- (!\vacated_space[0]~12\)) # (!\vacated_space[1]~reg0_q\ & ((\vacated_space[0]~12\) # (GND)))))
-- \vacated_space[1]~14\ = CARRY((\always0~2_combout\ & (!\vacated_space[1]~reg0_q\ & !\vacated_space[0]~12\)) # (!\always0~2_combout\ & ((!\vacated_space[0]~12\) # (!\vacated_space[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[1]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[0]~12\,
	combout => \vacated_space[1]~13_combout\,
	cout => \vacated_space[1]~14\);

-- Location: FF_X46_Y39_N15
\vacated_space[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[1]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[1]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N16
\vacated_space[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[2]~15_combout\ = ((\always0~2_combout\ $ (\vacated_space[2]~reg0_q\ $ (!\vacated_space[1]~14\)))) # (GND)
-- \vacated_space[2]~16\ = CARRY((\always0~2_combout\ & ((\vacated_space[2]~reg0_q\) # (!\vacated_space[1]~14\))) # (!\always0~2_combout\ & (\vacated_space[2]~reg0_q\ & !\vacated_space[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[2]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[1]~14\,
	combout => \vacated_space[2]~15_combout\,
	cout => \vacated_space[2]~16\);

-- Location: FF_X46_Y39_N17
\vacated_space[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[2]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[2]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N18
\vacated_space[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[3]~17_combout\ = ((\always0~2_combout\ $ (\vacated_space[3]~reg0_q\ $ (\vacated_space[2]~16\)))) # (GND)
-- \vacated_space[3]~18\ = CARRY((\always0~2_combout\ & (\vacated_space[3]~reg0_q\ & !\vacated_space[2]~16\)) # (!\always0~2_combout\ & ((\vacated_space[3]~reg0_q\) # (!\vacated_space[2]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[3]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[2]~16\,
	combout => \vacated_space[3]~17_combout\,
	cout => \vacated_space[3]~18\);

-- Location: FF_X46_Y39_N19
\vacated_space[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[3]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[3]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N20
\vacated_space[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[4]~19_combout\ = ((\always0~2_combout\ $ (\vacated_space[4]~reg0_q\ $ (!\vacated_space[3]~18\)))) # (GND)
-- \vacated_space[4]~20\ = CARRY((\always0~2_combout\ & ((\vacated_space[4]~reg0_q\) # (!\vacated_space[3]~18\))) # (!\always0~2_combout\ & (\vacated_space[4]~reg0_q\ & !\vacated_space[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[4]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[3]~18\,
	combout => \vacated_space[4]~19_combout\,
	cout => \vacated_space[4]~20\);

-- Location: FF_X46_Y39_N21
\vacated_space[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[4]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[4]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N22
\vacated_space[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[5]~21_combout\ = (\always0~2_combout\ & ((\vacated_space[5]~reg0_q\ & (\vacated_space[4]~20\ & VCC)) # (!\vacated_space[5]~reg0_q\ & (!\vacated_space[4]~20\)))) # (!\always0~2_combout\ & ((\vacated_space[5]~reg0_q\ & 
-- (!\vacated_space[4]~20\)) # (!\vacated_space[5]~reg0_q\ & ((\vacated_space[4]~20\) # (GND)))))
-- \vacated_space[5]~22\ = CARRY((\always0~2_combout\ & (!\vacated_space[5]~reg0_q\ & !\vacated_space[4]~20\)) # (!\always0~2_combout\ & ((!\vacated_space[4]~20\) # (!\vacated_space[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[5]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[4]~20\,
	combout => \vacated_space[5]~21_combout\,
	cout => \vacated_space[5]~22\);

-- Location: FF_X46_Y39_N23
\vacated_space[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[5]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[5]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N24
\vacated_space[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[6]~23_combout\ = (\always0~2_combout\ & ((\vacated_space[6]~reg0_q\ & (!\vacated_space[5]~22\)) # (!\vacated_space[6]~reg0_q\ & ((\vacated_space[5]~22\) # (GND))))) # (!\always0~2_combout\ & ((\vacated_space[6]~reg0_q\ & 
-- (\vacated_space[5]~22\ & VCC)) # (!\vacated_space[6]~reg0_q\ & (!\vacated_space[5]~22\))))
-- \vacated_space[6]~24\ = CARRY((\always0~2_combout\ & ((!\vacated_space[5]~22\) # (!\vacated_space[6]~reg0_q\))) # (!\always0~2_combout\ & (!\vacated_space[6]~reg0_q\ & !\vacated_space[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[6]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[5]~22\,
	combout => \vacated_space[6]~23_combout\,
	cout => \vacated_space[6]~24\);

-- Location: FF_X46_Y39_N25
\vacated_space[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[6]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[6]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N26
\vacated_space[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[7]~25_combout\ = ((\always0~2_combout\ $ (\vacated_space[7]~reg0_q\ $ (\vacated_space[6]~24\)))) # (GND)
-- \vacated_space[7]~26\ = CARRY((\always0~2_combout\ & (\vacated_space[7]~reg0_q\ & !\vacated_space[6]~24\)) # (!\always0~2_combout\ & ((\vacated_space[7]~reg0_q\) # (!\vacated_space[6]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[7]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[6]~24\,
	combout => \vacated_space[7]~25_combout\,
	cout => \vacated_space[7]~26\);

-- Location: FF_X46_Y39_N27
\vacated_space[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[7]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[7]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N28
\vacated_space[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[8]~27_combout\ = ((\always0~2_combout\ $ (\vacated_space[8]~reg0_q\ $ (!\vacated_space[7]~26\)))) # (GND)
-- \vacated_space[8]~28\ = CARRY((\always0~2_combout\ & ((\vacated_space[8]~reg0_q\) # (!\vacated_space[7]~26\))) # (!\always0~2_combout\ & (\vacated_space[8]~reg0_q\ & !\vacated_space[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \vacated_space[8]~reg0_q\,
	datad => VCC,
	cin => \vacated_space[7]~26\,
	combout => \vacated_space[8]~27_combout\,
	cout => \vacated_space[8]~28\);

-- Location: FF_X46_Y39_N29
\vacated_space[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[8]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[8]~reg0_q\);

-- Location: LCCOMB_X46_Y39_N30
\vacated_space[9]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \vacated_space[9]~29_combout\ = \always0~2_combout\ $ (\vacated_space[8]~28\ $ (\vacated_space[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datad => \vacated_space[9]~reg0_q\,
	cin => \vacated_space[8]~28\,
	combout => \vacated_space[9]~29_combout\);

-- Location: FF_X46_Y39_N31
\vacated_space[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vacated_space[9]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \parked_car[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vacated_space[9]~reg0_q\);

-- Location: LCCOMB_X50_Y39_N30
\uni_is_vacated_space~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_is_vacated_space~0_combout\ = ((\car_entered~input_o\ & (!\is_uni_car_entered~input_o\ & !\always0~1_combout\))) # (!\uni_parked_car[2]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_entered~input_o\,
	datab => \is_uni_car_entered~input_o\,
	datac => \always0~1_combout\,
	datad => \uni_parked_car[2]~15_combout\,
	combout => \uni_is_vacated_space~0_combout\);

-- Location: LCCOMB_X50_Y39_N4
\uni_is_vacated_space~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_is_vacated_space~1_combout\ = (!\always0~0_combout\ & ((\uni_is_vacated_space~0_combout\ & (\always0~1_combout\)) # (!\uni_is_vacated_space~0_combout\ & ((!\uni_is_vacated_space~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \always0~0_combout\,
	datac => \uni_is_vacated_space~0_combout\,
	datad => \uni_is_vacated_space~reg0_q\,
	combout => \uni_is_vacated_space~1_combout\);

-- Location: LCCOMB_X50_Y39_N28
\uni_is_vacated_space~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_is_vacated_space~2_combout\ = (!\uni_parked_car[9]~reg0_q\ & (\LessThan5~2_combout\ & ((\uni_is_vacated_space~0_combout\) # (\always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_is_vacated_space~0_combout\,
	datab => \always0~0_combout\,
	datac => \uni_parked_car[9]~reg0_q\,
	datad => \LessThan5~2_combout\,
	combout => \uni_is_vacated_space~2_combout\);

-- Location: LCCOMB_X50_Y39_N2
\uni_is_vacated_space~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_is_vacated_space~3_combout\ = (!\uni_is_vacated_space~1_combout\ & ((!\uni_is_vacated_space~2_combout\) # (!\LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uni_is_vacated_space~1_combout\,
	datac => \LessThan4~1_combout\,
	datad => \uni_is_vacated_space~2_combout\,
	combout => \uni_is_vacated_space~3_combout\);

-- Location: FF_X50_Y39_N3
\uni_is_vacated_space~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_is_vacated_space~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni_is_vacated_space~reg0_q\);

-- Location: LCCOMB_X47_Y39_N18
\is_vacated_space~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \is_vacated_space~1_combout\ = (\always0~1_combout\ & (((!\is_vacated_space~reg0_q\)))) # (!\always0~1_combout\ & (!\always0~2_combout\ & ((!\is_vacated_space~reg0_q\) # (!\vacated_space[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vacated_space[1]~10_combout\,
	datab => \always0~2_combout\,
	datac => \is_vacated_space~reg0_q\,
	datad => \always0~1_combout\,
	combout => \is_vacated_space~1_combout\);

-- Location: LCCOMB_X47_Y39_N2
\uni_is_vacated_space~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uni_is_vacated_space~4_combout\ = (\car_entered~input_o\ & (!\is_uni_car_entered~input_o\ & ((!\is_uni_car_exited~input_o\) # (!\car_exited~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \car_exited~input_o\,
	datab => \is_uni_car_exited~input_o\,
	datac => \car_entered~input_o\,
	datad => \is_uni_car_entered~input_o\,
	combout => \uni_is_vacated_space~4_combout\);

-- Location: LCCOMB_X47_Y39_N24
\is_vacated_space~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \is_vacated_space~0_combout\ = (!\parked_car[9]~reg0_q\ & (\LessThan5~2_combout\ & ((\always0~0_combout\) # (\uni_is_vacated_space~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \uni_is_vacated_space~4_combout\,
	datac => \parked_car[9]~reg0_q\,
	datad => \LessThan5~2_combout\,
	combout => \is_vacated_space~0_combout\);

-- Location: LCCOMB_X47_Y39_N4
\is_vacated_space~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \is_vacated_space~2_combout\ = (\always0~0_combout\ & (((!\is_vacated_space~0_combout\) # (!\LessThan7~2_combout\)))) # (!\always0~0_combout\ & (!\is_vacated_space~1_combout\ & ((!\is_vacated_space~0_combout\) # (!\LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \is_vacated_space~1_combout\,
	datac => \LessThan7~2_combout\,
	datad => \is_vacated_space~0_combout\,
	combout => \is_vacated_space~2_combout\);

-- Location: FF_X47_Y39_N5
\is_vacated_space~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \is_vacated_space~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_vacated_space~reg0_q\);

ww_uni_parked_car(0) <= \uni_parked_car[0]~output_o\;

ww_uni_parked_car(1) <= \uni_parked_car[1]~output_o\;

ww_uni_parked_car(2) <= \uni_parked_car[2]~output_o\;

ww_uni_parked_car(3) <= \uni_parked_car[3]~output_o\;

ww_uni_parked_car(4) <= \uni_parked_car[4]~output_o\;

ww_uni_parked_car(5) <= \uni_parked_car[5]~output_o\;

ww_uni_parked_car(6) <= \uni_parked_car[6]~output_o\;

ww_uni_parked_car(7) <= \uni_parked_car[7]~output_o\;

ww_uni_parked_car(8) <= \uni_parked_car[8]~output_o\;

ww_uni_parked_car(9) <= \uni_parked_car[9]~output_o\;

ww_parked_car(0) <= \parked_car[0]~output_o\;

ww_parked_car(1) <= \parked_car[1]~output_o\;

ww_parked_car(2) <= \parked_car[2]~output_o\;

ww_parked_car(3) <= \parked_car[3]~output_o\;

ww_parked_car(4) <= \parked_car[4]~output_o\;

ww_parked_car(5) <= \parked_car[5]~output_o\;

ww_parked_car(6) <= \parked_car[6]~output_o\;

ww_parked_car(7) <= \parked_car[7]~output_o\;

ww_parked_car(8) <= \parked_car[8]~output_o\;

ww_parked_car(9) <= \parked_car[9]~output_o\;

ww_uni_vacated_space(0) <= \uni_vacated_space[0]~output_o\;

ww_uni_vacated_space(1) <= \uni_vacated_space[1]~output_o\;

ww_uni_vacated_space(2) <= \uni_vacated_space[2]~output_o\;

ww_uni_vacated_space(3) <= \uni_vacated_space[3]~output_o\;

ww_uni_vacated_space(4) <= \uni_vacated_space[4]~output_o\;

ww_uni_vacated_space(5) <= \uni_vacated_space[5]~output_o\;

ww_uni_vacated_space(6) <= \uni_vacated_space[6]~output_o\;

ww_uni_vacated_space(7) <= \uni_vacated_space[7]~output_o\;

ww_uni_vacated_space(8) <= \uni_vacated_space[8]~output_o\;

ww_uni_vacated_space(9) <= \uni_vacated_space[9]~output_o\;

ww_vacated_space(0) <= \vacated_space[0]~output_o\;

ww_vacated_space(1) <= \vacated_space[1]~output_o\;

ww_vacated_space(2) <= \vacated_space[2]~output_o\;

ww_vacated_space(3) <= \vacated_space[3]~output_o\;

ww_vacated_space(4) <= \vacated_space[4]~output_o\;

ww_vacated_space(5) <= \vacated_space[5]~output_o\;

ww_vacated_space(6) <= \vacated_space[6]~output_o\;

ww_vacated_space(7) <= \vacated_space[7]~output_o\;

ww_vacated_space(8) <= \vacated_space[8]~output_o\;

ww_vacated_space(9) <= \vacated_space[9]~output_o\;

ww_uni_is_vacated_space <= \uni_is_vacated_space~output_o\;

ww_is_vacated_space <= \is_vacated_space~output_o\;
END structure;


