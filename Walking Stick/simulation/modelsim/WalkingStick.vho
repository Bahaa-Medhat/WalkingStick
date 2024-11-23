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

-- DATE "11/23/2024 00:31:11"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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
-- vibrate	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sound	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle_trig	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- obstacle_echo	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hold	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- activate	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \vibrate~output_o\ : std_logic;
SIGNAL \sound~output_o\ : std_logic;
SIGNAL \obstacle_trig~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \activate~input_o\ : std_logic;
SIGNAL \isActive~feeder_combout\ : std_logic;
SIGNAL \isActive~q\ : std_logic;
SIGNAL \obstacle_echo~input_o\ : std_logic;
SIGNAL \vibrate_signal~0_combout\ : std_logic;
SIGNAL \vibrate_signal~q\ : std_logic;
SIGNAL \hold~input_o\ : std_logic;
SIGNAL \sound_signal~0_combout\ : std_logic;
SIGNAL \sound_signal~q\ : std_logic;
SIGNAL \trigger_counter[0]~32_combout\ : std_logic;
SIGNAL \trigger_counter[0]~33\ : std_logic;
SIGNAL \trigger_counter[1]~34_combout\ : std_logic;
SIGNAL \trigger_counter[1]~35\ : std_logic;
SIGNAL \trigger_counter[2]~36_combout\ : std_logic;
SIGNAL \trigger_counter[2]~37\ : std_logic;
SIGNAL \trigger_counter[3]~38_combout\ : std_logic;
SIGNAL \trigger_counter[3]~39\ : std_logic;
SIGNAL \trigger_counter[4]~40_combout\ : std_logic;
SIGNAL \trigger_counter[4]~41\ : std_logic;
SIGNAL \trigger_counter[5]~42_combout\ : std_logic;
SIGNAL \trigger_counter[5]~43\ : std_logic;
SIGNAL \trigger_counter[6]~44_combout\ : std_logic;
SIGNAL \trigger_counter[6]~45\ : std_logic;
SIGNAL \trigger_counter[7]~46_combout\ : std_logic;
SIGNAL \trigger_counter[7]~47\ : std_logic;
SIGNAL \trigger_counter[8]~48_combout\ : std_logic;
SIGNAL \trigger_counter[8]~49\ : std_logic;
SIGNAL \trigger_counter[9]~50_combout\ : std_logic;
SIGNAL \trigger_counter[9]~51\ : std_logic;
SIGNAL \trigger_counter[10]~52_combout\ : std_logic;
SIGNAL \trigger_counter[10]~53\ : std_logic;
SIGNAL \trigger_counter[11]~54_combout\ : std_logic;
SIGNAL \trigger_counter[11]~55\ : std_logic;
SIGNAL \trigger_counter[12]~56_combout\ : std_logic;
SIGNAL \trigger_counter[12]~57\ : std_logic;
SIGNAL \trigger_counter[13]~58_combout\ : std_logic;
SIGNAL \trigger_counter[13]~59\ : std_logic;
SIGNAL \trigger_counter[14]~60_combout\ : std_logic;
SIGNAL \trigger_counter[14]~61\ : std_logic;
SIGNAL \trigger_counter[15]~62_combout\ : std_logic;
SIGNAL \trigger_counter[15]~63\ : std_logic;
SIGNAL \trigger_counter[16]~64_combout\ : std_logic;
SIGNAL \trigger_counter[16]~65\ : std_logic;
SIGNAL \trigger_counter[17]~66_combout\ : std_logic;
SIGNAL \trigger_counter[17]~67\ : std_logic;
SIGNAL \trigger_counter[18]~68_combout\ : std_logic;
SIGNAL \trigger_counter[18]~69\ : std_logic;
SIGNAL \trigger_counter[19]~70_combout\ : std_logic;
SIGNAL \trigger_counter[19]~71\ : std_logic;
SIGNAL \trigger_counter[20]~72_combout\ : std_logic;
SIGNAL \trigger_counter[20]~73\ : std_logic;
SIGNAL \trigger_counter[21]~74_combout\ : std_logic;
SIGNAL \trigger_counter[21]~75\ : std_logic;
SIGNAL \trigger_counter[22]~76_combout\ : std_logic;
SIGNAL \trigger_counter[22]~77\ : std_logic;
SIGNAL \trigger_counter[23]~78_combout\ : std_logic;
SIGNAL \trigger_counter[23]~79\ : std_logic;
SIGNAL \trigger_counter[24]~80_combout\ : std_logic;
SIGNAL \trigger_counter[24]~81\ : std_logic;
SIGNAL \trigger_counter[25]~82_combout\ : std_logic;
SIGNAL \trigger_counter[25]~83\ : std_logic;
SIGNAL \trigger_counter[26]~84_combout\ : std_logic;
SIGNAL \trigger_counter[26]~85\ : std_logic;
SIGNAL \trigger_counter[27]~86_combout\ : std_logic;
SIGNAL \trigger_counter[27]~87\ : std_logic;
SIGNAL \trigger_counter[28]~88_combout\ : std_logic;
SIGNAL \trigger_counter[28]~89\ : std_logic;
SIGNAL \trigger_counter[29]~90_combout\ : std_logic;
SIGNAL \trigger_counter[29]~91\ : std_logic;
SIGNAL \trigger_counter[30]~92_combout\ : std_logic;
SIGNAL \trigger_counter[30]~93\ : std_logic;
SIGNAL \trigger_counter[31]~94_combout\ : std_logic;
SIGNAL \trig~4_combout\ : std_logic;
SIGNAL \trig~6_combout\ : std_logic;
SIGNAL \trig~3_combout\ : std_logic;
SIGNAL \trig~5_combout\ : std_logic;
SIGNAL \trig~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \trig~1_combout\ : std_logic;
SIGNAL \trig~0_combout\ : std_logic;
SIGNAL \trig~2_combout\ : std_logic;
SIGNAL \trig~8_combout\ : std_logic;
SIGNAL \trig~feeder_combout\ : std_logic;
SIGNAL \trig~q\ : std_logic;
SIGNAL trigger_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_trig~8_combout\ : std_logic;

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

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_trig~8_combout\ <= NOT \trig~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N9
\obstacle_trig~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trig~q\,
	devoe => ww_devoe,
	o => \obstacle_trig~output_o\);

-- Location: IOIBUF_X0_Y23_N22
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

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X45_Y18_N26
\isActive~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \isActive~feeder_combout\ = \activate~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \activate~input_o\,
	combout => \isActive~feeder_combout\);

-- Location: FF_X45_Y18_N27
isActive : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \isActive~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isActive~q\);

-- Location: IOIBUF_X51_Y0_N22
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

-- Location: LCCOMB_X44_Y1_N12
\vibrate_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vibrate_signal~0_combout\ = (\isActive~q\ & \obstacle_echo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \isActive~q\,
	datad => \obstacle_echo~input_o\,
	combout => \vibrate_signal~0_combout\);

-- Location: FF_X44_Y1_N13
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

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: LCCOMB_X44_Y1_N26
\sound_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sound_signal~0_combout\ = (\isActive~q\ & !\hold~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \isActive~q\,
	datad => \hold~input_o\,
	combout => \sound_signal~0_combout\);

-- Location: FF_X44_Y1_N27
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

-- Location: LCCOMB_X46_Y19_N0
\trigger_counter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[0]~32_combout\ = trigger_counter(0) $ (VCC)
-- \trigger_counter[0]~33\ = CARRY(trigger_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(0),
	datad => VCC,
	combout => \trigger_counter[0]~32_combout\,
	cout => \trigger_counter[0]~33\);

-- Location: FF_X46_Y19_N1
\trigger_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[0]~32_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(0));

-- Location: LCCOMB_X46_Y19_N2
\trigger_counter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[1]~34_combout\ = (trigger_counter(1) & (!\trigger_counter[0]~33\)) # (!trigger_counter(1) & ((\trigger_counter[0]~33\) # (GND)))
-- \trigger_counter[1]~35\ = CARRY((!\trigger_counter[0]~33\) # (!trigger_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(1),
	datad => VCC,
	cin => \trigger_counter[0]~33\,
	combout => \trigger_counter[1]~34_combout\,
	cout => \trigger_counter[1]~35\);

-- Location: FF_X46_Y19_N3
\trigger_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[1]~34_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(1));

-- Location: LCCOMB_X46_Y19_N4
\trigger_counter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[2]~36_combout\ = (trigger_counter(2) & (\trigger_counter[1]~35\ $ (GND))) # (!trigger_counter(2) & (!\trigger_counter[1]~35\ & VCC))
-- \trigger_counter[2]~37\ = CARRY((trigger_counter(2) & !\trigger_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(2),
	datad => VCC,
	cin => \trigger_counter[1]~35\,
	combout => \trigger_counter[2]~36_combout\,
	cout => \trigger_counter[2]~37\);

-- Location: FF_X46_Y19_N5
\trigger_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[2]~36_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(2));

-- Location: LCCOMB_X46_Y19_N6
\trigger_counter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[3]~38_combout\ = (trigger_counter(3) & (!\trigger_counter[2]~37\)) # (!trigger_counter(3) & ((\trigger_counter[2]~37\) # (GND)))
-- \trigger_counter[3]~39\ = CARRY((!\trigger_counter[2]~37\) # (!trigger_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(3),
	datad => VCC,
	cin => \trigger_counter[2]~37\,
	combout => \trigger_counter[3]~38_combout\,
	cout => \trigger_counter[3]~39\);

-- Location: FF_X46_Y19_N7
\trigger_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[3]~38_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(3));

-- Location: LCCOMB_X46_Y19_N8
\trigger_counter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[4]~40_combout\ = (trigger_counter(4) & (\trigger_counter[3]~39\ $ (GND))) # (!trigger_counter(4) & (!\trigger_counter[3]~39\ & VCC))
-- \trigger_counter[4]~41\ = CARRY((trigger_counter(4) & !\trigger_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(4),
	datad => VCC,
	cin => \trigger_counter[3]~39\,
	combout => \trigger_counter[4]~40_combout\,
	cout => \trigger_counter[4]~41\);

-- Location: FF_X46_Y19_N9
\trigger_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[4]~40_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(4));

-- Location: LCCOMB_X46_Y19_N10
\trigger_counter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[5]~42_combout\ = (trigger_counter(5) & (!\trigger_counter[4]~41\)) # (!trigger_counter(5) & ((\trigger_counter[4]~41\) # (GND)))
-- \trigger_counter[5]~43\ = CARRY((!\trigger_counter[4]~41\) # (!trigger_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(5),
	datad => VCC,
	cin => \trigger_counter[4]~41\,
	combout => \trigger_counter[5]~42_combout\,
	cout => \trigger_counter[5]~43\);

-- Location: FF_X46_Y19_N11
\trigger_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[5]~42_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(5));

-- Location: LCCOMB_X46_Y19_N12
\trigger_counter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[6]~44_combout\ = (trigger_counter(6) & (\trigger_counter[5]~43\ $ (GND))) # (!trigger_counter(6) & (!\trigger_counter[5]~43\ & VCC))
-- \trigger_counter[6]~45\ = CARRY((trigger_counter(6) & !\trigger_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(6),
	datad => VCC,
	cin => \trigger_counter[5]~43\,
	combout => \trigger_counter[6]~44_combout\,
	cout => \trigger_counter[6]~45\);

-- Location: FF_X46_Y19_N13
\trigger_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[6]~44_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(6));

-- Location: LCCOMB_X46_Y19_N14
\trigger_counter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[7]~46_combout\ = (trigger_counter(7) & (!\trigger_counter[6]~45\)) # (!trigger_counter(7) & ((\trigger_counter[6]~45\) # (GND)))
-- \trigger_counter[7]~47\ = CARRY((!\trigger_counter[6]~45\) # (!trigger_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(7),
	datad => VCC,
	cin => \trigger_counter[6]~45\,
	combout => \trigger_counter[7]~46_combout\,
	cout => \trigger_counter[7]~47\);

-- Location: FF_X46_Y19_N15
\trigger_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[7]~46_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(7));

-- Location: LCCOMB_X46_Y19_N16
\trigger_counter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[8]~48_combout\ = (trigger_counter(8) & (\trigger_counter[7]~47\ $ (GND))) # (!trigger_counter(8) & (!\trigger_counter[7]~47\ & VCC))
-- \trigger_counter[8]~49\ = CARRY((trigger_counter(8) & !\trigger_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(8),
	datad => VCC,
	cin => \trigger_counter[7]~47\,
	combout => \trigger_counter[8]~48_combout\,
	cout => \trigger_counter[8]~49\);

-- Location: FF_X46_Y19_N17
\trigger_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[8]~48_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(8));

-- Location: LCCOMB_X46_Y19_N18
\trigger_counter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[9]~50_combout\ = (trigger_counter(9) & (!\trigger_counter[8]~49\)) # (!trigger_counter(9) & ((\trigger_counter[8]~49\) # (GND)))
-- \trigger_counter[9]~51\ = CARRY((!\trigger_counter[8]~49\) # (!trigger_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(9),
	datad => VCC,
	cin => \trigger_counter[8]~49\,
	combout => \trigger_counter[9]~50_combout\,
	cout => \trigger_counter[9]~51\);

-- Location: FF_X46_Y19_N19
\trigger_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[9]~50_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(9));

-- Location: LCCOMB_X46_Y19_N20
\trigger_counter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[10]~52_combout\ = (trigger_counter(10) & (\trigger_counter[9]~51\ $ (GND))) # (!trigger_counter(10) & (!\trigger_counter[9]~51\ & VCC))
-- \trigger_counter[10]~53\ = CARRY((trigger_counter(10) & !\trigger_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(10),
	datad => VCC,
	cin => \trigger_counter[9]~51\,
	combout => \trigger_counter[10]~52_combout\,
	cout => \trigger_counter[10]~53\);

-- Location: FF_X46_Y19_N21
\trigger_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[10]~52_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(10));

-- Location: LCCOMB_X46_Y19_N22
\trigger_counter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[11]~54_combout\ = (trigger_counter(11) & (!\trigger_counter[10]~53\)) # (!trigger_counter(11) & ((\trigger_counter[10]~53\) # (GND)))
-- \trigger_counter[11]~55\ = CARRY((!\trigger_counter[10]~53\) # (!trigger_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(11),
	datad => VCC,
	cin => \trigger_counter[10]~53\,
	combout => \trigger_counter[11]~54_combout\,
	cout => \trigger_counter[11]~55\);

-- Location: FF_X46_Y19_N23
\trigger_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[11]~54_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(11));

-- Location: LCCOMB_X46_Y19_N24
\trigger_counter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[12]~56_combout\ = (trigger_counter(12) & (\trigger_counter[11]~55\ $ (GND))) # (!trigger_counter(12) & (!\trigger_counter[11]~55\ & VCC))
-- \trigger_counter[12]~57\ = CARRY((trigger_counter(12) & !\trigger_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(12),
	datad => VCC,
	cin => \trigger_counter[11]~55\,
	combout => \trigger_counter[12]~56_combout\,
	cout => \trigger_counter[12]~57\);

-- Location: FF_X46_Y19_N25
\trigger_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[12]~56_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(12));

-- Location: LCCOMB_X46_Y19_N26
\trigger_counter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[13]~58_combout\ = (trigger_counter(13) & (!\trigger_counter[12]~57\)) # (!trigger_counter(13) & ((\trigger_counter[12]~57\) # (GND)))
-- \trigger_counter[13]~59\ = CARRY((!\trigger_counter[12]~57\) # (!trigger_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(13),
	datad => VCC,
	cin => \trigger_counter[12]~57\,
	combout => \trigger_counter[13]~58_combout\,
	cout => \trigger_counter[13]~59\);

-- Location: FF_X46_Y19_N27
\trigger_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[13]~58_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(13));

-- Location: LCCOMB_X46_Y19_N28
\trigger_counter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[14]~60_combout\ = (trigger_counter(14) & (\trigger_counter[13]~59\ $ (GND))) # (!trigger_counter(14) & (!\trigger_counter[13]~59\ & VCC))
-- \trigger_counter[14]~61\ = CARRY((trigger_counter(14) & !\trigger_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(14),
	datad => VCC,
	cin => \trigger_counter[13]~59\,
	combout => \trigger_counter[14]~60_combout\,
	cout => \trigger_counter[14]~61\);

-- Location: FF_X46_Y19_N29
\trigger_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[14]~60_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(14));

-- Location: LCCOMB_X46_Y19_N30
\trigger_counter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[15]~62_combout\ = (trigger_counter(15) & (!\trigger_counter[14]~61\)) # (!trigger_counter(15) & ((\trigger_counter[14]~61\) # (GND)))
-- \trigger_counter[15]~63\ = CARRY((!\trigger_counter[14]~61\) # (!trigger_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(15),
	datad => VCC,
	cin => \trigger_counter[14]~61\,
	combout => \trigger_counter[15]~62_combout\,
	cout => \trigger_counter[15]~63\);

-- Location: FF_X46_Y19_N31
\trigger_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[15]~62_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(15));

-- Location: LCCOMB_X46_Y18_N0
\trigger_counter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[16]~64_combout\ = (trigger_counter(16) & (\trigger_counter[15]~63\ $ (GND))) # (!trigger_counter(16) & (!\trigger_counter[15]~63\ & VCC))
-- \trigger_counter[16]~65\ = CARRY((trigger_counter(16) & !\trigger_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(16),
	datad => VCC,
	cin => \trigger_counter[15]~63\,
	combout => \trigger_counter[16]~64_combout\,
	cout => \trigger_counter[16]~65\);

-- Location: FF_X46_Y18_N1
\trigger_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[16]~64_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(16));

-- Location: LCCOMB_X46_Y18_N2
\trigger_counter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[17]~66_combout\ = (trigger_counter(17) & (!\trigger_counter[16]~65\)) # (!trigger_counter(17) & ((\trigger_counter[16]~65\) # (GND)))
-- \trigger_counter[17]~67\ = CARRY((!\trigger_counter[16]~65\) # (!trigger_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(17),
	datad => VCC,
	cin => \trigger_counter[16]~65\,
	combout => \trigger_counter[17]~66_combout\,
	cout => \trigger_counter[17]~67\);

-- Location: FF_X46_Y18_N3
\trigger_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[17]~66_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(17));

-- Location: LCCOMB_X46_Y18_N4
\trigger_counter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[18]~68_combout\ = (trigger_counter(18) & (\trigger_counter[17]~67\ $ (GND))) # (!trigger_counter(18) & (!\trigger_counter[17]~67\ & VCC))
-- \trigger_counter[18]~69\ = CARRY((trigger_counter(18) & !\trigger_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(18),
	datad => VCC,
	cin => \trigger_counter[17]~67\,
	combout => \trigger_counter[18]~68_combout\,
	cout => \trigger_counter[18]~69\);

-- Location: FF_X46_Y18_N5
\trigger_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[18]~68_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(18));

-- Location: LCCOMB_X46_Y18_N6
\trigger_counter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[19]~70_combout\ = (trigger_counter(19) & (!\trigger_counter[18]~69\)) # (!trigger_counter(19) & ((\trigger_counter[18]~69\) # (GND)))
-- \trigger_counter[19]~71\ = CARRY((!\trigger_counter[18]~69\) # (!trigger_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(19),
	datad => VCC,
	cin => \trigger_counter[18]~69\,
	combout => \trigger_counter[19]~70_combout\,
	cout => \trigger_counter[19]~71\);

-- Location: FF_X46_Y18_N7
\trigger_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[19]~70_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(19));

-- Location: LCCOMB_X46_Y18_N8
\trigger_counter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[20]~72_combout\ = (trigger_counter(20) & (\trigger_counter[19]~71\ $ (GND))) # (!trigger_counter(20) & (!\trigger_counter[19]~71\ & VCC))
-- \trigger_counter[20]~73\ = CARRY((trigger_counter(20) & !\trigger_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(20),
	datad => VCC,
	cin => \trigger_counter[19]~71\,
	combout => \trigger_counter[20]~72_combout\,
	cout => \trigger_counter[20]~73\);

-- Location: FF_X46_Y18_N9
\trigger_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[20]~72_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(20));

-- Location: LCCOMB_X46_Y18_N10
\trigger_counter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[21]~74_combout\ = (trigger_counter(21) & (!\trigger_counter[20]~73\)) # (!trigger_counter(21) & ((\trigger_counter[20]~73\) # (GND)))
-- \trigger_counter[21]~75\ = CARRY((!\trigger_counter[20]~73\) # (!trigger_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(21),
	datad => VCC,
	cin => \trigger_counter[20]~73\,
	combout => \trigger_counter[21]~74_combout\,
	cout => \trigger_counter[21]~75\);

-- Location: FF_X46_Y18_N11
\trigger_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[21]~74_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(21));

-- Location: LCCOMB_X46_Y18_N12
\trigger_counter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[22]~76_combout\ = (trigger_counter(22) & (\trigger_counter[21]~75\ $ (GND))) # (!trigger_counter(22) & (!\trigger_counter[21]~75\ & VCC))
-- \trigger_counter[22]~77\ = CARRY((trigger_counter(22) & !\trigger_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(22),
	datad => VCC,
	cin => \trigger_counter[21]~75\,
	combout => \trigger_counter[22]~76_combout\,
	cout => \trigger_counter[22]~77\);

-- Location: FF_X46_Y18_N13
\trigger_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[22]~76_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(22));

-- Location: LCCOMB_X46_Y18_N14
\trigger_counter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[23]~78_combout\ = (trigger_counter(23) & (!\trigger_counter[22]~77\)) # (!trigger_counter(23) & ((\trigger_counter[22]~77\) # (GND)))
-- \trigger_counter[23]~79\ = CARRY((!\trigger_counter[22]~77\) # (!trigger_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(23),
	datad => VCC,
	cin => \trigger_counter[22]~77\,
	combout => \trigger_counter[23]~78_combout\,
	cout => \trigger_counter[23]~79\);

-- Location: FF_X46_Y18_N15
\trigger_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[23]~78_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(23));

-- Location: LCCOMB_X46_Y18_N16
\trigger_counter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[24]~80_combout\ = (trigger_counter(24) & (\trigger_counter[23]~79\ $ (GND))) # (!trigger_counter(24) & (!\trigger_counter[23]~79\ & VCC))
-- \trigger_counter[24]~81\ = CARRY((trigger_counter(24) & !\trigger_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(24),
	datad => VCC,
	cin => \trigger_counter[23]~79\,
	combout => \trigger_counter[24]~80_combout\,
	cout => \trigger_counter[24]~81\);

-- Location: FF_X46_Y18_N17
\trigger_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[24]~80_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(24));

-- Location: LCCOMB_X46_Y18_N18
\trigger_counter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[25]~82_combout\ = (trigger_counter(25) & (!\trigger_counter[24]~81\)) # (!trigger_counter(25) & ((\trigger_counter[24]~81\) # (GND)))
-- \trigger_counter[25]~83\ = CARRY((!\trigger_counter[24]~81\) # (!trigger_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(25),
	datad => VCC,
	cin => \trigger_counter[24]~81\,
	combout => \trigger_counter[25]~82_combout\,
	cout => \trigger_counter[25]~83\);

-- Location: FF_X46_Y18_N19
\trigger_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[25]~82_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(25));

-- Location: LCCOMB_X46_Y18_N20
\trigger_counter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[26]~84_combout\ = (trigger_counter(26) & (\trigger_counter[25]~83\ $ (GND))) # (!trigger_counter(26) & (!\trigger_counter[25]~83\ & VCC))
-- \trigger_counter[26]~85\ = CARRY((trigger_counter(26) & !\trigger_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(26),
	datad => VCC,
	cin => \trigger_counter[25]~83\,
	combout => \trigger_counter[26]~84_combout\,
	cout => \trigger_counter[26]~85\);

-- Location: FF_X46_Y18_N21
\trigger_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[26]~84_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(26));

-- Location: LCCOMB_X46_Y18_N22
\trigger_counter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[27]~86_combout\ = (trigger_counter(27) & (!\trigger_counter[26]~85\)) # (!trigger_counter(27) & ((\trigger_counter[26]~85\) # (GND)))
-- \trigger_counter[27]~87\ = CARRY((!\trigger_counter[26]~85\) # (!trigger_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(27),
	datad => VCC,
	cin => \trigger_counter[26]~85\,
	combout => \trigger_counter[27]~86_combout\,
	cout => \trigger_counter[27]~87\);

-- Location: FF_X46_Y18_N23
\trigger_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[27]~86_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(27));

-- Location: LCCOMB_X46_Y18_N24
\trigger_counter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[28]~88_combout\ = (trigger_counter(28) & (\trigger_counter[27]~87\ $ (GND))) # (!trigger_counter(28) & (!\trigger_counter[27]~87\ & VCC))
-- \trigger_counter[28]~89\ = CARRY((trigger_counter(28) & !\trigger_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(28),
	datad => VCC,
	cin => \trigger_counter[27]~87\,
	combout => \trigger_counter[28]~88_combout\,
	cout => \trigger_counter[28]~89\);

-- Location: FF_X46_Y18_N25
\trigger_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[28]~88_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(28));

-- Location: LCCOMB_X46_Y18_N26
\trigger_counter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[29]~90_combout\ = (trigger_counter(29) & (!\trigger_counter[28]~89\)) # (!trigger_counter(29) & ((\trigger_counter[28]~89\) # (GND)))
-- \trigger_counter[29]~91\ = CARRY((!\trigger_counter[28]~89\) # (!trigger_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(29),
	datad => VCC,
	cin => \trigger_counter[28]~89\,
	combout => \trigger_counter[29]~90_combout\,
	cout => \trigger_counter[29]~91\);

-- Location: FF_X46_Y18_N27
\trigger_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[29]~90_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(29));

-- Location: LCCOMB_X46_Y18_N28
\trigger_counter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[30]~92_combout\ = (trigger_counter(30) & (\trigger_counter[29]~91\ $ (GND))) # (!trigger_counter(30) & (!\trigger_counter[29]~91\ & VCC))
-- \trigger_counter[30]~93\ = CARRY((trigger_counter(30) & !\trigger_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(30),
	datad => VCC,
	cin => \trigger_counter[29]~91\,
	combout => \trigger_counter[30]~92_combout\,
	cout => \trigger_counter[30]~93\);

-- Location: FF_X46_Y18_N29
\trigger_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[30]~92_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(30));

-- Location: LCCOMB_X46_Y18_N30
\trigger_counter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trigger_counter[31]~94_combout\ = trigger_counter(31) $ (\trigger_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(31),
	cin => \trigger_counter[30]~93\,
	combout => \trigger_counter[31]~94_combout\);

-- Location: FF_X46_Y18_N31
\trigger_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trigger_counter[31]~94_combout\,
	sclr => \ALT_INV_trig~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(31));

-- Location: LCCOMB_X45_Y18_N30
\trig~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~4_combout\ = (!trigger_counter(19) & (!trigger_counter(22) & (!trigger_counter(21) & !trigger_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(19),
	datab => trigger_counter(22),
	datac => trigger_counter(21),
	datad => trigger_counter(20),
	combout => \trig~4_combout\);

-- Location: LCCOMB_X45_Y18_N18
\trig~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~6_combout\ = (!trigger_counter(27) & (!trigger_counter(29) & (!trigger_counter(30) & !trigger_counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(27),
	datab => trigger_counter(29),
	datac => trigger_counter(30),
	datad => trigger_counter(28),
	combout => \trig~6_combout\);

-- Location: LCCOMB_X45_Y18_N8
\trig~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~3_combout\ = (!trigger_counter(17) & (!trigger_counter(15) & (!trigger_counter(16) & !trigger_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(17),
	datab => trigger_counter(15),
	datac => trigger_counter(16),
	datad => trigger_counter(18),
	combout => \trig~3_combout\);

-- Location: LCCOMB_X45_Y18_N28
\trig~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~5_combout\ = (!trigger_counter(26) & (!trigger_counter(25) & (!trigger_counter(23) & !trigger_counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(26),
	datab => trigger_counter(25),
	datac => trigger_counter(23),
	datad => trigger_counter(24),
	combout => \trig~5_combout\);

-- Location: LCCOMB_X45_Y18_N24
\trig~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~7_combout\ = (\trig~4_combout\ & (\trig~6_combout\ & (\trig~3_combout\ & \trig~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trig~4_combout\,
	datab => \trig~6_combout\,
	datac => \trig~3_combout\,
	datad => \trig~5_combout\,
	combout => \trig~7_combout\);

-- Location: LCCOMB_X45_Y18_N12
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!trigger_counter(2) & (!trigger_counter(3) & !trigger_counter(4)))) # (!trigger_counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(2),
	datab => trigger_counter(5),
	datac => trigger_counter(3),
	datad => trigger_counter(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y18_N14
\trig~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~1_combout\ = (!trigger_counter(11) & (!trigger_counter(12) & (!trigger_counter(14) & !trigger_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(11),
	datab => trigger_counter(12),
	datac => trigger_counter(14),
	datad => trigger_counter(13),
	combout => \trig~1_combout\);

-- Location: LCCOMB_X45_Y18_N20
\trig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~0_combout\ = (!trigger_counter(7) & (!trigger_counter(9) & (!trigger_counter(8) & !trigger_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(7),
	datab => trigger_counter(9),
	datac => trigger_counter(8),
	datad => trigger_counter(10),
	combout => \trig~0_combout\);

-- Location: LCCOMB_X45_Y18_N10
\trig~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~2_combout\ = (\trig~1_combout\ & (\trig~0_combout\ & ((\LessThan0~0_combout\) # (!trigger_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => trigger_counter(6),
	datac => \trig~1_combout\,
	datad => \trig~0_combout\,
	combout => \trig~2_combout\);

-- Location: LCCOMB_X45_Y18_N6
\trig~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~8_combout\ = (\isActive~q\ & ((trigger_counter(31)) # ((\trig~7_combout\ & \trig~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(31),
	datab => \trig~7_combout\,
	datac => \isActive~q\,
	datad => \trig~2_combout\,
	combout => \trig~8_combout\);

-- Location: LCCOMB_X45_Y18_N16
\trig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \trig~feeder_combout\ = \trig~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \trig~8_combout\,
	combout => \trig~feeder_combout\);

-- Location: FF_X45_Y18_N17
trig : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \trig~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trig~q\);

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_vibrate <= \vibrate~output_o\;

ww_sound <= \sound~output_o\;

ww_obstacle_trig <= \obstacle_trig~output_o\;
END structure;


