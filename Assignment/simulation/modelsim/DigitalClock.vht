LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DigitalClock_vhd_tst IS
END DigitalClock_vhd_tst;

ARCHITECTURE DigitalClock_arch OF DigitalClock_vhd_tst IS
	-- Signals for clock and reset
	SIGNAL clk : STD_LOGIC:= '0';
	SIGNAL reset : STD_LOGIC:= '1';
	
	-- Signals for the DigitalClock outputs
	SIGNAL hours : INTEGER RANGE 0 TO 23;
	SIGNAL minutes : INTEGER RANGE 0 TO 60;
	SIGNAL seconds : INTEGER RANGE 0 TO 60;
	
	COMPONENT DigitalClock
		PORT (
			clk : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			seconds : OUT INTEGER RANGE 0 TO 60;
			minutes : OUT INTEGER RANGE 0 TO 60;
			hours : OUT INTEGER RANGE 0 TO 23
		);
	END COMPONENT;

BEGIN

	i1 : DigitalClock
	PORT MAP (
		clk => clk,
		reset => reset,
		seconds => seconds,
		minutes => minutes,	
		hours => hours
	);
	
	sim_process : PROCESS
	BEGIN
		reset <= '1';
		wait for 54 ns; -- Time reaches 1:30:00
		reset <= '0';
		wait for 54 ns; -- Apply reset signal
		reset <= '1';
		wait for 108 ns; -- Time reaches 3:00:00
	END PROCESS;

END DigitalClock_arch;
