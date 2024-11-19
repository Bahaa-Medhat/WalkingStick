LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY WalkingStick IS

PORT(
	clk, activate, hold, obstacle: IN STD_LOGIC;
	vibrate, sound : OUT STD_LOGIC
);

END WalkingStick;

ARCHITECTURE WalkingStick_arch OF WalkingStick IS
	
	SIGNAL isActive, vibrate_signal, sound_signal: std_logic := '0';
	
BEGIN

	-- Activation / deactivation process
	PROCESS(clk)
	BEGIN
	
		IF rising_edge(clk) THEN
			isActive <= activate;
		END IF;
	END PROCESS;
	
	-- Detect obstacle process
	PROCESS(clk)
	BEGIN
		 IF rising_edge(clk) THEN
		 
			IF isActive = '1' THEN	
				IF obstacle = '1' THEN
					vibrate_signal <= '1';
				ELSE
					vibrate_signal <= '0';
				END IF;
			ELSE
				vibrate_signal <= '0';
			END IF;
			
        END IF;
	END PROCESS;
	
	-- Detect if stick was dropped
	PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
		
			IF isActive = '1' THEN
				IF hold = '0' THEN
					sound_signal <= '1';
				ELSE
					sound_signal <= '0';
				END IF;
			ELSE
				sound_signal <= '0';
			END IF;
		
		END IF;
	END PROCESS;
	
	sound <= sound_signal;
	vibrate <= vibrate_signal;
	
END WalkingStick_arch;