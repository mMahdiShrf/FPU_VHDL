
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY round_tb IS
END round_tb;
 
ARCHITECTURE behavior OF round_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT round
    PORT(
         exp_corrected : IN  std_logic_vector(7 downto 0);
         sum_shifted : IN  std_logic_vector(47 downto 0);
         exp_co : OUT  std_logic_vector(7 downto 0);
         sum_co : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal exp_corrected : std_logic_vector(7 downto 0) := (others => '0');
   signal sum_shifted : std_logic_vector(47 downto 0) := (others => '0');

 	--Outputs
   signal exp_co : std_logic_vector(7 downto 0);
   signal sum_co : std_logic_vector(23 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: round PORT MAP (
          exp_corrected => exp_corrected,
          sum_shifted => sum_shifted,
          exp_co => exp_co,
          sum_co => sum_co
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			exp_corrected <= "10101100";
			sum_shifted <= "101010101010101100110011110000011010101001010101";
     

      -- insert stimulus here 

      wait;
   end process;

END;
