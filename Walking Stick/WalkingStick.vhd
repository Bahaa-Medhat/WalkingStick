LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY WalkingStick IS

PORT(
	clk, activate, hold, obstacle_echo: IN STD_LOGIC;
	vibrate, sound, obstacle_trig : OUT STD_LOGIC
);

END WalkingStick;

ARCHITECTURE WalkingStick_arch OF WalkingStick IS
	
	SIGNAL isActive, vibrate_signal, sound_signal, trig: std_logic := '0';
	SIGNAL echo_start, echo_end: INTEGER := 0;
	SIGNAL trigger_counter: INTEGER := 0;
	
BEGIN

	-- Activation / deactivation process
	PROCESS(clk)
	BEGIN
	
		IF rising_edge(clk) THEN
			isActive <= activate;
		END IF;
	END PROCESS;
	
    -- Trigger Signal Process (Generate a 10 μs Pulse)
    PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF isActive = '1' THEN
                IF trigger_counter < 100 THEN 
                    trig <= '1';
                    trigger_counter <= trigger_counter + 1;
                ELSE
                    trig <= '0';
                    trigger_counter <= 0; 
                END IF;
            ELSE
                trig <= '0'; 
                trigger_counter <= 0;
            END IF;
        END IF;
    END PROCESS;
	
	-- Detect obstacle process
	 PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF isActive = '1' THEN
						IF obstacle_echo = '0' THEN
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
	
	obstacle_trig <= trig;
	sound <= sound_signal;
	vibrate <= vibrate_signal;
	
END WalkingStick_arch;