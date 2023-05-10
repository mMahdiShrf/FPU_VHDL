
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY exp_calc_tb IS
END exp_calc_tb;
 
ARCHITECTURE behavior OF exp_calc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT exp_calc
    PORT(
         exp1 : IN  std_logic_vector(7 downto 0);
         exp2 : IN  std_logic_vector(7 downto 0);
         decision_bit : IN  std_logic;
         unnormalized_exp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal exp1 : std_logic_vector(7 downto 0) := (others => '0');
   signal exp2 : std_logic_vector(7 downto 0) := (others => '0');
   signal decision_bit : std_logic := '0';

 	--Outputs
   signal unnormalized_exp : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: exp_calc PORT MAP (
          exp1 => exp1,
          exp2 => exp2,
          decision_bit => decision_bit,
          unnormalized_exp => unnormalized_exp
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

	--	exp1 <= "00000001";
	--	exp2 <= "00000010";
	--	decision_bit <= '0';
	  
		exp1 <= "11110100";
		exp2 <= "10000000";
		decision_bit <= '1';
	  

      wait;
   end process;

END;
