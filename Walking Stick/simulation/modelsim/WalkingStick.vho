-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/20/2024 18:15:58"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	WalkingStick IS
    PORT (
	clk : IN std_logic;
	activate : IN std_logic;
	hold : IN std_logic;
	obstacle_echo : IN std_logic;
	vibrate : OUT std_logic;
	sound : OUT std_logic;
	obstacle_trig : OUT std_logic
	);
END WalkingStick;

-- Design Ports Information
-- vibrate	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sound	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle_trig	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle_echo	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hold	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- activate	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WalkingStick IS
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
SIGNAL ww_activate : std_logic;
SIGNAL ww_hold : std_logic;
SIGNAL ww_obstacle_echo : std_logic;
SIGNAL ww_vibrate : std_logic;
SIGNAL ww_sound : std_logic;
SIGNAL ww_obstacle_trig : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \vibrate~output_o\ : std_logic;
SIGNAL \sound~output_o\ : std_logic;
SIGNAL \obstacle_trig~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \obstacle_echo~input_o\ : std_logic;
SIGNAL \activate~input_o\ : std_logic;
SIGNAL \isActive~q\ : std_logic;
SIGNAL \vibrate_signal~0_combout\ : std_logic;
SIGNAL \vibrate_signal~q\ : std_logic;
SIGNAL \hold~input_o\ : std_logic;
SIGNAL \sound_signal~0_combout\ : std_logic;
SIGNAL \sound_signal~q\ : std_logic;
SIGNAL \obstacle_trig~5_combout\ : std_logic;
SIGNAL \obstacle_trig~6_combout\ : std_logic;
SIGNAL \obstacle_trig~7_combout\ : std_logic;
SIGNAL \obstacle_trig~8_combout\ : std_logic;
SIGNAL \obstacle_trig~1_combout\ : std_logic;
SIGNAL \trigger_counter[1]~31_combout\ : std_logic;
SIGNAL \obstacle_trig~0_combout\ : std_logic;
SIGNAL \obstacle_trig~3_combout\ : std_logic;
SIGNAL \obstacle_trig~2_combout\ : std_logic;
SIGNAL \obstacle_trig~4_combout\ : std_logic;
SIGNAL \obstacle_trig~9_combout\ : std_logic;
SIGNAL \trigger_counter[0]~93_combout\ : std_logic;
SIGNAL \trigger_counter[1]~32\ : std_logic;
SIGNAL \trigger_counter[2]~33_combout\ : std_logic;
SIGNAL \trigger_counter[2]~34\ : std_logic;
SIGNAL \trigger_counter[3]~35_combout\ : std_logic;
SIGNAL \trigger_counter[3]~36\ : std_logic;
SIGNAL \trigger_counter[4]~37_combout\ : std_logic;
SIGNAL \trigger_counter[4]~38\ : std_logic;
SIGNAL \trigger_counter[5]~39_combout\ : std_logic;
SIGNAL \trigger_counter[5]~40\ : std_logic;
SIGNAL \trigger_counter[6]~41_combout\ : std_logic;
SIGNAL \trigger_counter[6]~42\ : std_logic;
SIGNAL \trigger_counter[7]~43_combout\ : std_logic;
SIGNAL \trigger_counter[7]~44\ : std_logic;
SIGNAL \trigger_counter[8]~45_combout\ : std_logic;
SIGNAL \trigger_counter[8]~46\ : std_logic;
SIGNAL \trigger_counter[9]~47_combout\ : std_logic;
SIGNAL \trigger_counter[9]~48\ : std_logic;
SIGNAL \trigger_counter[10]~49_combout\ : std_logic;
SIGNAL \trigger_counter[10]~50\ : std_logic;
SIGNAL \trigger_counter[11]~51_combout\ : std_logic;
SIGNAL \trigger_counter[11]~52\ : std_logic;
SIGNAL \trigger_counter[12]~53_combout\ : std_logic;
SIGNAL \trigger_counter[12]~54\ : std_logic;
SIGNAL \trigger_counter[13]~55_combout\ : std_logic;
SIGNAL \trigger_counter[13]~56\ : std_logic;
SIGNAL \trigger_counter[14]~57_combout\ : std_logic;
SIGNAL \trigger_counter[14]~feeder_combout\ : std_logic;
SIGNAL \trigger_counter[14]~58\ : std_logic;
SIGNAL \trigger_counter[15]~59_combout\ : std_logic;
SIGNAL \trigger_counter[15]~feeder_combout\ : std_logic;
SIGNAL \trigger_counter[15]~60\ : std_logic;
SIGNAL \trigger_counter[16]~61_combout\ : std_logic;
SIGNAL \trigger_counter[16]~62\ : std_logic;
SIGNAL \trigger_counter[17]~63_combout\ : std_logic;
SIGNAL \trigger_counter[17]~64\ : std_logic;
SIGNAL \trigger_counter[18]~65_combout\ : std_logic;
SIGNAL \trigger_counter[18]~66\ : std_logic;
SIGNAL \trigger_counter[19]~67_combout\ : std_logic;
SIGNAL \trigger_counter[19]~68\ : std_logic;
SIGNAL \trigger_counter[20]~69_combout\ : std_logic;
SIGNAL \trigger_counter[20]~70\ : std_logic;
SIGNAL \trigger_counter[21]~71_combout\ : std_logic;
SIGNAL \trigger_counter[21]~72\ : std_logic;
SIGNAL \trigger_counter[22]~73_combout\ : std_logic;
SIGNAL \trigger_counter[22]~74\ : std_logic;
SIGNAL \trigger_counter[23]~75_combout\ : std_logic;
SIGNAL \trigger_counter[23]~76\ : std_logic;
SIGNAL \trigger_counter[24]~77_combout\ : std_logic;
SIGNAL \trigger_counter[24]~78\ : std_logic;
SIGNAL \trigger_counter[25]~79_combout\ : std_logic;
SIGNAL \trigger_counter[25]~80\ : std_logic;
SIGNAL \trigger_counter[26]~81_combout\ : std_logic;
SIGNAL \trigger_counter[26]~82\ : std_logic;
SIGNAL \trigger_counter[27]~83_combout\ : std_logic;
SIGNAL \trigger_counter[27]~84\ : std_logic;
SIGNAL \trigger_counter[28]~85_combout\ : std_logic;
SIGNAL \trigger_counter[28]~86\ : std_logic;
SIGNAL \trigger_counter[29]~87_combout\ : std_logic;
SIGNAL \trigger_counter[29]~88\ : std_logic;
SIGNAL \trigger_counter[30]~89_combout\ : std_logic;
SIGNAL \trigger_counter[30]~90\ : std_logic;
SIGNAL \trigger_counter[31]~91_combout\ : std_logic;
SIGNAL \obstacle_trig~10_combout\ : std_logic;
SIGNAL \obstacle_trig~reg0feeder_combout\ : std_logic;
SIGNAL \obstacle_trig~reg0_q\ : std_logic;
SIGNAL trigger_counter : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_activate <= activate;
ww_hold <= hold;
ww_obstacle_echo <= obstacle_echo;
vibrate <= ww_vibrate;
sound <= ww_sound;
obstacle_trig <= ww_obstacle_trig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y10_N23
\vibrate~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vibrate_signal~q\,
	devoe => ww_devoe,
	o => \vibrate~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\sound~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sound_signal~q\,
	devoe => ww_devoe,
	o => \sound~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\obstacle_trig~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obstacle_trig~reg0_q\,
	devoe => ww_devoe,
	o => \obstacle_trig~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X6_Y10_N1
\obstacle_echo~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_obstacle_echo,
	o => \obstacle_echo~input_o\);

-- Location: IOIBUF_X6_Y10_N8
\activate~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_activate,
	o => \activate~input_o\);

-- Location: FF_X10_Y6_N3
isActive : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \activate~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isActive~q\);

-- Location: LCCOMB_X6_Y7_N4
\vibrate_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vibrate_signal~0_combout\ = (\obstacle_echo~input_o\ & \isActive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \obstacle_echo~input_o\,
	datad => \isActive~q\,
	combout => \vibrate_signal~0_combout\);

-- Location: FF_X6_Y7_N5
vibrate_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vibrate_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vibrate_signal~q\);

-- Location: IOIBUF_X6_Y10_N15
\hold~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hold,
	o => \hold~input_o\);

-- Location: LCCOMB_X6_Y7_N2
\sound_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sound_signal~0_combout\ = (!\hold~input_o\ & \isActive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hold~input_o\,
	datad => \isActive~q\,
	combout => \sound_signal~0_combout\);

-- Location: FF_X6_Y7_N3
sound_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sound_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sound_signal~q\);

-- Location: LCCOMB_X10_Y6_N10
\obstacle_trig~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~5_combout\ = (!trigger_counter(17) & (!trigger_counter(18) & (!trigger_counter(19) & !trigger_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(17),
	datab => trigger_counter(18),
	datac => trigger_counter(19),
	datad => trigger_counter(20),
	combout => \obstacle_trig~5_combout\);

-- Location: LCCOMB_X10_Y6_N28
\obstacle_trig~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~6_combout\ = (!trigger_counter(22) & (!trigger_counter(23) & (!trigger_counter(24) & !trigger_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(22),
	datab => trigger_counter(23),
	datac => trigger_counter(24),
	datad => trigger_counter(21),
	combout => \obstacle_trig~6_combout\);

-- Location: LCCOMB_X10_Y6_N18
\obstacle_trig~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~7_combout\ = (!trigger_counter(27) & (!trigger_counter(25) & (!trigger_counter(26) & !trigger_counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(27),
	datab => trigger_counter(25),
	datac => trigger_counter(26),
	datad => trigger_counter(28),
	combout => \obstacle_trig~7_combout\);

-- Location: LCCOMB_X10_Y6_N4
\obstacle_trig~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~8_combout\ = (!trigger_counter(30) & (\obstacle_trig~7_combout\ & !trigger_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(30),
	datab => \obstacle_trig~7_combout\,
	datad => trigger_counter(29),
	combout => \obstacle_trig~8_combout\);

-- Location: LCCOMB_X10_Y6_N30
\obstacle_trig~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~1_combout\ = (!trigger_counter(6) & (!trigger_counter(5) & (!trigger_counter(8) & !trigger_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(6),
	datab => trigger_counter(5),
	datac => trigger_counter(8),
	datad => trigger_counter(7),
	combout => \obstacle_trig~1_combout\);

-- Location: LCCOMB_X9_Y7_N2
\trigger_counter[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[1]~31_combout\ = (trigger_counter(0) & (trigger_counter(1) $ (VCC))) # (!trigger_counter(0) & (trigger_counter(1) & VCC))
-- \trigger_counter[1]~32\ = CARRY((trigger_counter(0) & trigger_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(0),
	datab => trigger_counter(1),
	datad => VCC,
	combout => \trigger_counter[1]~31_combout\,
	cout => \trigger_counter[1]~32\);

-- Location: FF_X9_Y7_N3
\trigger_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[1]~31_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(1));

-- Location: LCCOMB_X10_Y6_N0
\obstacle_trig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~0_combout\ = (!trigger_counter(4) & (((!trigger_counter(2) & !trigger_counter(1))) # (!trigger_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(2),
	datab => trigger_counter(3),
	datac => trigger_counter(1),
	datad => trigger_counter(4),
	combout => \obstacle_trig~0_combout\);

-- Location: LCCOMB_X10_Y6_N26
\obstacle_trig~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~3_combout\ = (!trigger_counter(15) & (!trigger_counter(14) & (!trigger_counter(13) & !trigger_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(15),
	datab => trigger_counter(14),
	datac => trigger_counter(13),
	datad => trigger_counter(16),
	combout => \obstacle_trig~3_combout\);

-- Location: LCCOMB_X10_Y6_N16
\obstacle_trig~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~2_combout\ = (!trigger_counter(10) & (!trigger_counter(9) & (!trigger_counter(12) & !trigger_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(10),
	datab => trigger_counter(9),
	datac => trigger_counter(12),
	datad => trigger_counter(11),
	combout => \obstacle_trig~2_combout\);

-- Location: LCCOMB_X10_Y6_N20
\obstacle_trig~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~4_combout\ = (\obstacle_trig~1_combout\ & (\obstacle_trig~0_combout\ & (\obstacle_trig~3_combout\ & \obstacle_trig~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obstacle_trig~1_combout\,
	datab => \obstacle_trig~0_combout\,
	datac => \obstacle_trig~3_combout\,
	datad => \obstacle_trig~2_combout\,
	combout => \obstacle_trig~4_combout\);

-- Location: LCCOMB_X10_Y6_N6
\obstacle_trig~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~9_combout\ = (\obstacle_trig~5_combout\ & (\obstacle_trig~6_combout\ & (\obstacle_trig~8_combout\ & \obstacle_trig~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obstacle_trig~5_combout\,
	datab => \obstacle_trig~6_combout\,
	datac => \obstacle_trig~8_combout\,
	datad => \obstacle_trig~4_combout\,
	combout => \obstacle_trig~9_combout\);

-- Location: LCCOMB_X9_Y7_N0
\trigger_counter[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[0]~93_combout\ = trigger_counter(0) $ (((\isActive~q\ & ((trigger_counter(31)) # (\obstacle_trig~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(31),
	datab => \isActive~q\,
	datac => trigger_counter(0),
	datad => \obstacle_trig~9_combout\,
	combout => \trigger_counter[0]~93_combout\);

-- Location: FF_X9_Y7_N1
\trigger_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(0));

-- Location: LCCOMB_X9_Y7_N4
\trigger_counter[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[2]~33_combout\ = (trigger_counter(2) & (!\trigger_counter[1]~32\)) # (!trigger_counter(2) & ((\trigger_counter[1]~32\) # (GND)))
-- \trigger_counter[2]~34\ = CARRY((!\trigger_counter[1]~32\) # (!trigger_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(2),
	datad => VCC,
	cin => \trigger_counter[1]~32\,
	combout => \trigger_counter[2]~33_combout\,
	cout => \trigger_counter[2]~34\);

-- Location: FF_X9_Y7_N5
\trigger_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[2]~33_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(2));

-- Location: LCCOMB_X9_Y7_N6
\trigger_counter[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[3]~35_combout\ = (trigger_counter(3) & (\trigger_counter[2]~34\ $ (GND))) # (!trigger_counter(3) & (!\trigger_counter[2]~34\ & VCC))
-- \trigger_counter[3]~36\ = CARRY((trigger_counter(3) & !\trigger_counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(3),
	datad => VCC,
	cin => \trigger_counter[2]~34\,
	combout => \trigger_counter[3]~35_combout\,
	cout => \trigger_counter[3]~36\);

-- Location: FF_X9_Y7_N7
\trigger_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[3]~35_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(3));

-- Location: LCCOMB_X9_Y7_N8
\trigger_counter[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[4]~37_combout\ = (trigger_counter(4) & (!\trigger_counter[3]~36\)) # (!trigger_counter(4) & ((\trigger_counter[3]~36\) # (GND)))
-- \trigger_counter[4]~38\ = CARRY((!\trigger_counter[3]~36\) # (!trigger_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(4),
	datad => VCC,
	cin => \trigger_counter[3]~36\,
	combout => \trigger_counter[4]~37_combout\,
	cout => \trigger_counter[4]~38\);

-- Location: FF_X9_Y7_N9
\trigger_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[4]~37_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(4));

-- Location: LCCOMB_X9_Y7_N10
\trigger_counter[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[5]~39_combout\ = (trigger_counter(5) & (\trigger_counter[4]~38\ $ (GND))) # (!trigger_counter(5) & (!\trigger_counter[4]~38\ & VCC))
-- \trigger_counter[5]~40\ = CARRY((trigger_counter(5) & !\trigger_counter[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(5),
	datad => VCC,
	cin => \trigger_counter[4]~38\,
	combout => \trigger_counter[5]~39_combout\,
	cout => \trigger_counter[5]~40\);

-- Location: FF_X9_Y7_N11
\trigger_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[5]~39_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(5));

-- Location: LCCOMB_X9_Y7_N12
\trigger_counter[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[6]~41_combout\ = (trigger_counter(6) & (!\trigger_counter[5]~40\)) # (!trigger_counter(6) & ((\trigger_counter[5]~40\) # (GND)))
-- \trigger_counter[6]~42\ = CARRY((!\trigger_counter[5]~40\) # (!trigger_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(6),
	datad => VCC,
	cin => \trigger_counter[5]~40\,
	combout => \trigger_counter[6]~41_combout\,
	cout => \trigger_counter[6]~42\);

-- Location: FF_X9_Y7_N13
\trigger_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[6]~41_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(6));

-- Location: LCCOMB_X9_Y7_N14
\trigger_counter[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[7]~43_combout\ = (trigger_counter(7) & (\trigger_counter[6]~42\ $ (GND))) # (!trigger_counter(7) & (!\trigger_counter[6]~42\ & VCC))
-- \trigger_counter[7]~44\ = CARRY((trigger_counter(7) & !\trigger_counter[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(7),
	datad => VCC,
	cin => \trigger_counter[6]~42\,
	combout => \trigger_counter[7]~43_combout\,
	cout => \trigger_counter[7]~44\);

-- Location: FF_X9_Y7_N15
\trigger_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[7]~43_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(7));

-- Location: LCCOMB_X9_Y7_N16
\trigger_counter[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[8]~45_combout\ = (trigger_counter(8) & (!\trigger_counter[7]~44\)) # (!trigger_counter(8) & ((\trigger_counter[7]~44\) # (GND)))
-- \trigger_counter[8]~46\ = CARRY((!\trigger_counter[7]~44\) # (!trigger_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(8),
	datad => VCC,
	cin => \trigger_counter[7]~44\,
	combout => \trigger_counter[8]~45_combout\,
	cout => \trigger_counter[8]~46\);

-- Location: FF_X9_Y7_N17
\trigger_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[8]~45_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(8));

-- Location: LCCOMB_X9_Y7_N18
\trigger_counter[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[9]~47_combout\ = (trigger_counter(9) & (\trigger_counter[8]~46\ $ (GND))) # (!trigger_counter(9) & (!\trigger_counter[8]~46\ & VCC))
-- \trigger_counter[9]~48\ = CARRY((trigger_counter(9) & !\trigger_counter[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(9),
	datad => VCC,
	cin => \trigger_counter[8]~46\,
	combout => \trigger_counter[9]~47_combout\,
	cout => \trigger_counter[9]~48\);

-- Location: FF_X9_Y7_N19
\trigger_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[9]~47_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(9));

-- Location: LCCOMB_X9_Y7_N20
\trigger_counter[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[10]~49_combout\ = (trigger_counter(10) & (!\trigger_counter[9]~48\)) # (!trigger_counter(10) & ((\trigger_counter[9]~48\) # (GND)))
-- \trigger_counter[10]~50\ = CARRY((!\trigger_counter[9]~48\) # (!trigger_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(10),
	datad => VCC,
	cin => \trigger_counter[9]~48\,
	combout => \trigger_counter[10]~49_combout\,
	cout => \trigger_counter[10]~50\);

-- Location: FF_X9_Y7_N21
\trigger_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[10]~49_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(10));

-- Location: LCCOMB_X9_Y7_N22
\trigger_counter[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[11]~51_combout\ = (trigger_counter(11) & (\trigger_counter[10]~50\ $ (GND))) # (!trigger_counter(11) & (!\trigger_counter[10]~50\ & VCC))
-- \trigger_counter[11]~52\ = CARRY((trigger_counter(11) & !\trigger_counter[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(11),
	datad => VCC,
	cin => \trigger_counter[10]~50\,
	combout => \trigger_counter[11]~51_combout\,
	cout => \trigger_counter[11]~52\);

-- Location: FF_X9_Y7_N23
\trigger_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[11]~51_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(11));

-- Location: LCCOMB_X9_Y7_N24
\trigger_counter[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[12]~53_combout\ = (trigger_counter(12) & (!\trigger_counter[11]~52\)) # (!trigger_counter(12) & ((\trigger_counter[11]~52\) # (GND)))
-- \trigger_counter[12]~54\ = CARRY((!\trigger_counter[11]~52\) # (!trigger_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(12),
	datad => VCC,
	cin => \trigger_counter[11]~52\,
	combout => \trigger_counter[12]~53_combout\,
	cout => \trigger_counter[12]~54\);

-- Location: FF_X9_Y7_N25
\trigger_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[12]~53_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(12));

-- Location: LCCOMB_X9_Y7_N26
\trigger_counter[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[13]~55_combout\ = (trigger_counter(13) & (\trigger_counter[12]~54\ $ (GND))) # (!trigger_counter(13) & (!\trigger_counter[12]~54\ & VCC))
-- \trigger_counter[13]~56\ = CARRY((trigger_counter(13) & !\trigger_counter[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(13),
	datad => VCC,
	cin => \trigger_counter[12]~54\,
	combout => \trigger_counter[13]~55_combout\,
	cout => \trigger_counter[13]~56\);

-- Location: FF_X9_Y7_N27
\trigger_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[13]~55_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(13));

-- Location: LCCOMB_X9_Y7_N28
\trigger_counter[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[14]~57_combout\ = (trigger_counter(14) & (!\trigger_counter[13]~56\)) # (!trigger_counter(14) & ((\trigger_counter[13]~56\) # (GND)))
-- \trigger_counter[14]~58\ = CARRY((!\trigger_counter[13]~56\) # (!trigger_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(14),
	datad => VCC,
	cin => \trigger_counter[13]~56\,
	combout => \trigger_counter[14]~57_combout\,
	cout => \trigger_counter[14]~58\);

-- Location: LCCOMB_X10_Y6_N24
\trigger_counter[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[14]~feeder_combout\ = \trigger_counter[14]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \trigger_counter[14]~57_combout\,
	combout => \trigger_counter[14]~feeder_combout\);

-- Location: FF_X10_Y6_N25
\trigger_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[14]~feeder_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(14));

-- Location: LCCOMB_X9_Y7_N30
\trigger_counter[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[15]~59_combout\ = (trigger_counter(15) & (\trigger_counter[14]~58\ $ (GND))) # (!trigger_counter(15) & (!\trigger_counter[14]~58\ & VCC))
-- \trigger_counter[15]~60\ = CARRY((trigger_counter(15) & !\trigger_counter[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(15),
	datad => VCC,
	cin => \trigger_counter[14]~58\,
	combout => \trigger_counter[15]~59_combout\,
	cout => \trigger_counter[15]~60\);

-- Location: LCCOMB_X10_Y6_N22
\trigger_counter[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[15]~feeder_combout\ = \trigger_counter[15]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \trigger_counter[15]~59_combout\,
	combout => \trigger_counter[15]~feeder_combout\);

-- Location: FF_X10_Y6_N23
\trigger_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[15]~feeder_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(15));

-- Location: LCCOMB_X9_Y6_N0
\trigger_counter[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[16]~61_combout\ = (trigger_counter(16) & (!\trigger_counter[15]~60\)) # (!trigger_counter(16) & ((\trigger_counter[15]~60\) # (GND)))
-- \trigger_counter[16]~62\ = CARRY((!\trigger_counter[15]~60\) # (!trigger_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(16),
	datad => VCC,
	cin => \trigger_counter[15]~60\,
	combout => \trigger_counter[16]~61_combout\,
	cout => \trigger_counter[16]~62\);

-- Location: FF_X9_Y6_N1
\trigger_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[16]~61_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(16));

-- Location: LCCOMB_X9_Y6_N2
\trigger_counter[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[17]~63_combout\ = (trigger_counter(17) & (\trigger_counter[16]~62\ $ (GND))) # (!trigger_counter(17) & (!\trigger_counter[16]~62\ & VCC))
-- \trigger_counter[17]~64\ = CARRY((trigger_counter(17) & !\trigger_counter[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(17),
	datad => VCC,
	cin => \trigger_counter[16]~62\,
	combout => \trigger_counter[17]~63_combout\,
	cout => \trigger_counter[17]~64\);

-- Location: FF_X9_Y6_N3
\trigger_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[17]~63_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(17));

-- Location: LCCOMB_X9_Y6_N4
\trigger_counter[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[18]~65_combout\ = (trigger_counter(18) & (!\trigger_counter[17]~64\)) # (!trigger_counter(18) & ((\trigger_counter[17]~64\) # (GND)))
-- \trigger_counter[18]~66\ = CARRY((!\trigger_counter[17]~64\) # (!trigger_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(18),
	datad => VCC,
	cin => \trigger_counter[17]~64\,
	combout => \trigger_counter[18]~65_combout\,
	cout => \trigger_counter[18]~66\);

-- Location: FF_X9_Y6_N5
\trigger_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[18]~65_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(18));

-- Location: LCCOMB_X9_Y6_N6
\trigger_counter[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[19]~67_combout\ = (trigger_counter(19) & (\trigger_counter[18]~66\ $ (GND))) # (!trigger_counter(19) & (!\trigger_counter[18]~66\ & VCC))
-- \trigger_counter[19]~68\ = CARRY((trigger_counter(19) & !\trigger_counter[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(19),
	datad => VCC,
	cin => \trigger_counter[18]~66\,
	combout => \trigger_counter[19]~67_combout\,
	cout => \trigger_counter[19]~68\);

-- Location: FF_X9_Y6_N7
\trigger_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[19]~67_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(19));

-- Location: LCCOMB_X9_Y6_N8
\trigger_counter[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[20]~69_combout\ = (trigger_counter(20) & (!\trigger_counter[19]~68\)) # (!trigger_counter(20) & ((\trigger_counter[19]~68\) # (GND)))
-- \trigger_counter[20]~70\ = CARRY((!\trigger_counter[19]~68\) # (!trigger_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(20),
	datad => VCC,
	cin => \trigger_counter[19]~68\,
	combout => \trigger_counter[20]~69_combout\,
	cout => \trigger_counter[20]~70\);

-- Location: FF_X9_Y6_N9
\trigger_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[20]~69_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(20));

-- Location: LCCOMB_X9_Y6_N10
\trigger_counter[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[21]~71_combout\ = (trigger_counter(21) & (\trigger_counter[20]~70\ $ (GND))) # (!trigger_counter(21) & (!\trigger_counter[20]~70\ & VCC))
-- \trigger_counter[21]~72\ = CARRY((trigger_counter(21) & !\trigger_counter[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(21),
	datad => VCC,
	cin => \trigger_counter[20]~70\,
	combout => \trigger_counter[21]~71_combout\,
	cout => \trigger_counter[21]~72\);

-- Location: FF_X9_Y6_N11
\trigger_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[21]~71_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(21));

-- Location: LCCOMB_X9_Y6_N12
\trigger_counter[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[22]~73_combout\ = (trigger_counter(22) & (!\trigger_counter[21]~72\)) # (!trigger_counter(22) & ((\trigger_counter[21]~72\) # (GND)))
-- \trigger_counter[22]~74\ = CARRY((!\trigger_counter[21]~72\) # (!trigger_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(22),
	datad => VCC,
	cin => \trigger_counter[21]~72\,
	combout => \trigger_counter[22]~73_combout\,
	cout => \trigger_counter[22]~74\);

-- Location: FF_X9_Y6_N13
\trigger_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[22]~73_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(22));

-- Location: LCCOMB_X9_Y6_N14
\trigger_counter[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[23]~75_combout\ = (trigger_counter(23) & (\trigger_counter[22]~74\ $ (GND))) # (!trigger_counter(23) & (!\trigger_counter[22]~74\ & VCC))
-- \trigger_counter[23]~76\ = CARRY((trigger_counter(23) & !\trigger_counter[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(23),
	datad => VCC,
	cin => \trigger_counter[22]~74\,
	combout => \trigger_counter[23]~75_combout\,
	cout => \trigger_counter[23]~76\);

-- Location: FF_X9_Y6_N15
\trigger_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[23]~75_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(23));

-- Location: LCCOMB_X9_Y6_N16
\trigger_counter[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[24]~77_combout\ = (trigger_counter(24) & (!\trigger_counter[23]~76\)) # (!trigger_counter(24) & ((\trigger_counter[23]~76\) # (GND)))
-- \trigger_counter[24]~78\ = CARRY((!\trigger_counter[23]~76\) # (!trigger_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(24),
	datad => VCC,
	cin => \trigger_counter[23]~76\,
	combout => \trigger_counter[24]~77_combout\,
	cout => \trigger_counter[24]~78\);

-- Location: FF_X9_Y6_N17
\trigger_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[24]~77_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(24));

-- Location: LCCOMB_X9_Y6_N18
\trigger_counter[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[25]~79_combout\ = (trigger_counter(25) & (\trigger_counter[24]~78\ $ (GND))) # (!trigger_counter(25) & (!\trigger_counter[24]~78\ & VCC))
-- \trigger_counter[25]~80\ = CARRY((trigger_counter(25) & !\trigger_counter[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(25),
	datad => VCC,
	cin => \trigger_counter[24]~78\,
	combout => \trigger_counter[25]~79_combout\,
	cout => \trigger_counter[25]~80\);

-- Location: FF_X9_Y6_N19
\trigger_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[25]~79_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(25));

-- Location: LCCOMB_X9_Y6_N20
\trigger_counter[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[26]~81_combout\ = (trigger_counter(26) & (!\trigger_counter[25]~80\)) # (!trigger_counter(26) & ((\trigger_counter[25]~80\) # (GND)))
-- \trigger_counter[26]~82\ = CARRY((!\trigger_counter[25]~80\) # (!trigger_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(26),
	datad => VCC,
	cin => \trigger_counter[25]~80\,
	combout => \trigger_counter[26]~81_combout\,
	cout => \trigger_counter[26]~82\);

-- Location: FF_X9_Y6_N21
\trigger_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[26]~81_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(26));

-- Location: LCCOMB_X9_Y6_N22
\trigger_counter[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[27]~83_combout\ = (trigger_counter(27) & (\trigger_counter[26]~82\ $ (GND))) # (!trigger_counter(27) & (!\trigger_counter[26]~82\ & VCC))
-- \trigger_counter[27]~84\ = CARRY((trigger_counter(27) & !\trigger_counter[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(27),
	datad => VCC,
	cin => \trigger_counter[26]~82\,
	combout => \trigger_counter[27]~83_combout\,
	cout => \trigger_counter[27]~84\);

-- Location: FF_X9_Y6_N23
\trigger_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[27]~83_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(27));

-- Location: LCCOMB_X9_Y6_N24
\trigger_counter[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[28]~85_combout\ = (trigger_counter(28) & (!\trigger_counter[27]~84\)) # (!trigger_counter(28) & ((\trigger_counter[27]~84\) # (GND)))
-- \trigger_counter[28]~86\ = CARRY((!\trigger_counter[27]~84\) # (!trigger_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(28),
	datad => VCC,
	cin => \trigger_counter[27]~84\,
	combout => \trigger_counter[28]~85_combout\,
	cout => \trigger_counter[28]~86\);

-- Location: FF_X9_Y6_N25
\trigger_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[28]~85_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(28));

-- Location: LCCOMB_X9_Y6_N26
\trigger_counter[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[29]~87_combout\ = (trigger_counter(29) & (\trigger_counter[28]~86\ $ (GND))) # (!trigger_counter(29) & (!\trigger_counter[28]~86\ & VCC))
-- \trigger_counter[29]~88\ = CARRY((trigger_counter(29) & !\trigger_counter[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(29),
	datad => VCC,
	cin => \trigger_counter[28]~86\,
	combout => \trigger_counter[29]~87_combout\,
	cout => \trigger_counter[29]~88\);

-- Location: FF_X9_Y6_N27
\trigger_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[29]~87_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(29));

-- Location: LCCOMB_X9_Y6_N28
\trigger_counter[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[30]~89_combout\ = (trigger_counter(30) & (!\trigger_counter[29]~88\)) # (!trigger_counter(30) & ((\trigger_counter[29]~88\) # (GND)))
-- \trigger_counter[30]~90\ = CARRY((!\trigger_counter[29]~88\) # (!trigger_counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(30),
	datad => VCC,
	cin => \trigger_counter[29]~88\,
	combout => \trigger_counter[30]~89_combout\,
	cout => \trigger_counter[30]~90\);

-- Location: FF_X9_Y6_N29
\trigger_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[30]~89_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(30));

-- Location: LCCOMB_X9_Y6_N30
\trigger_counter[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[31]~91_combout\ = trigger_counter(31) $ (!\trigger_counter[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(31),
	cin => \trigger_counter[30]~90\,
	combout => \trigger_counter[31]~91_combout\);

-- Location: FF_X9_Y6_N31
\trigger_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[31]~91_combout\,
	ena => \obstacle_trig~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(31));

-- Location: LCCOMB_X10_Y6_N2
\obstacle_trig~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~10_combout\ = (\isActive~q\ & ((trigger_counter(31)) # (\obstacle_trig~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(31),
	datac => \isActive~q\,
	datad => \obstacle_trig~9_combout\,
	combout => \obstacle_trig~10_combout\);

-- Location: LCCOMB_X10_Y6_N8
\obstacle_trig~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \obstacle_trig~reg0feeder_combout\ = \obstacle_trig~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \obstacle_trig~10_combout\,
	combout => \obstacle_trig~reg0feeder_combout\);

-- Location: FF_X10_Y6_N9
\obstacle_trig~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \obstacle_trig~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \obstacle_trig~reg0_q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_vibrate <= \vibrate~output_o\;

ww_sound <= \sound~output_o\;

ww_obstacle_trig <= \obstacle_trig~output_o\;
END structure;


