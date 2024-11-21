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
	
	SIGNAL isActive, vibrate_signal, sound_signal: std_logic := '0';
	SIGNAL echo_start, echo_end: INTEGER := 0;
	
BEGIN

	-- Activation / deactivation process
	PROCESS(clk)
	BEGIN
	
		IF rising_edge(clk) THEN
			isActive <= activate;
		END IF;
	END PROCESS;
	
	-- Trigger signal process (generate a 10 us pulse)
    PROCESS(clk)
    VARIABLE trigger_counter: INTEGER := 0;
    BEGIN
        IF rising_edge(clk) THEN
            IF isActive = '1' THEN
                IF trigger_counter < 10 THEN
                    obstacle_trig <= '1';
                    trigger_counter := trigger_counter + 1;
                ELSE
                    obstacle_trig <= '0';
                END IF;
            ELSE
                obstacle_trig <= '0';
            END IF;
        END IF;
    END PROCESS;
	
	-- Detect obstacle process
	 PROCESS(clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF isActive = '1' THEN
						IF obstacle_echo = '1' THEN
							vibrate_signal <= '1';
						ELSE
							vibrate_signal <= '0';
						END IF;
                --IF obstacle_echo = '1' THEN
                    --echo_start <= echo_start + 1;
                --ELSE
                    --echo_end <= echo_start;
                    --echo_start <= 0;
                --END IF;

                -- Check if obstacle is within threshold
                --IF echo_end > 0 AND echo_end < 100 THEN
                    --vibrate_signal <= '1';
                --ELSE
                    --vibrate_signal <= '0';
                --END IF;
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