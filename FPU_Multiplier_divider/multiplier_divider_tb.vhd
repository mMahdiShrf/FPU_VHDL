LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY multiplier_divider_tb IS
END multiplier_divider_tb;
 
ARCHITECTURE behavior OF multiplier_divider_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplier_divider
    PORT(
         full_frac1 : IN  std_logic_vector(23 downto 0);
         full_frac2 : IN  std_logic_vector(23 downto 0);
         decision_bit : IN  std_logic;
         unnormalized_frac : OUT  std_logic_vector(47 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal full_frac1 : std_logic_vector(23 downto 0) := (others => '0');
   signal full_frac2 : std_logic_vector(23 downto 0) := (others => '0');
   signal decision_bit : std_logic := '0';

 	--Outputs
   signal unnormalized_frac : std_logic_vector(47 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplier_divider PORT MAP (
          full_frac1 => full_frac1,
          full_frac2 => full_frac2,
          decision_bit => decision_bit,
          unnormalized_frac => unnormalized_frac
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
			full_frac1 <= "100100110011001111010101";
			full_frac2 <= "100101001101010011010101";
			decision_bit <= '1';
			
			 wait for 100 ns;	
		
			full_frac1 <= "100100110011001111010101";
			full_frac2 <= "000101001101010011010101";
			decision_bit <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
