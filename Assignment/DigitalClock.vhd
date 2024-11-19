LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY DigitalClock IS
	PORT(
		clk, reset: IN STD_LOGIC;
		seconds, minutes: OUT INTEGER RANGE 0 TO 60;
		hours: OUT INTEGER RANGE 0 TO 23
	);
END DigitalClock;

ARCHITECTURE clock_arch OF DigitalClock IS
	SIGNAL sec_counter, min_counter: INTEGER RANGE 0 TO 60:=0;
	SIGNAL hour_counter: INTEGER RANGE 0 TO 24:=0;
BEGIN
	PROCESS(clk,reset)
	BEGIN
		IF reset = '0' THEN
			sec_counter <= 0;
			min_counter <= 0;
			hour_counter <= 0;
		
		ELSIF rising_edge(clk) THEN
			sec_counter <= sec_counter + 1;
			
			IF sec_counter = 59 THEN
				sec_counter <= 0;
				min_counter <= min_counter + 1;
				
				IF min_counter = 59 THEN
					min_counter <= 0;
					hour_counter <= hour_counter + 1;
					
					IF hour_counter = 23 THEN 
						hour_counter <= 0;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	seconds <= sec_counter;
   minutes <= min_counter;
   hours <= hour_counter;

	
END clock_arch;