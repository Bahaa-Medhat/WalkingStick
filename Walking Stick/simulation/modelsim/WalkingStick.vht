LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY WalkingStick_vhd_tst IS
END WalkingStick_vhd_tst;

ARCHITECTURE WalkingStick_arch OF WalkingStick_vhd_tst IS                                                  
SIGNAL activate : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL hold : STD_LOGIC;
SIGNAL obstacle_echo : STD_LOGIC;
SIGNAL sound : STD_LOGIC;
SIGNAL vibrate : STD_LOGIC;
SIGNAL obstacle_trig: STD_LOGIC;

COMPONENT WalkingStick
	PORT (
	activate : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	hold : IN STD_LOGIC;
	obstacle_echo : IN STD_LOGIC;
	sound : OUT STD_LOGIC;
	vibrate : OUT STD_LOGIC;
	obstacle_trig: OUT STD_LOGIC
	);
END COMPONENT;

BEGIN

i1 : WalkingStick
	PORT MAP (
		activate => activate,
		clk => clk,
		hold => hold,
		obstacle_echo => obstacle_echo,
		sound => sound,
		vibrate => vibrate,
		obstacle_trig => obstacle_trig
	);
	
sim_process : PROCESS                                               
BEGIN  

	activate <= '1';
	-- Test Case 1: The stick is dropped, then the user picked it up
	hold <= '0';
	WAIT FOR 10 ns;
	hold <= '1';
	WAIT FOR 10 ns;

	-- Test Case 2: An obstacle is detected, and then nothing is detected
	obstacle_echo <= '1';
	WAIT FOR 10 ns;
	obstacle_echo <= '0';
	WAIT FOR 10 ns;

	-- Test Case 3: Simultaneous sound and vibrate
	hold <= '0';
	obstacle_echo <= '1';
	WAIT FOR 10 ns;
	hold <= '1';
	obstacle_echo <= '0';
	WAIT FOR 10 ns;

	-- Test Case 4: The stick is deactivated
	activate <= '0';
	hold <= '0';
	obstacle_echo <= '1';
	WAIT;
	
END PROCESS sim_process;

                                          
END WalkingStick_arch;
