--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY chbf_tb IS
END chbf_tb;
 
ARCHITECTURE behavior OF chbf_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT chbf
    PORT(
         frac : IN  std_logic_vector(22 downto 0);
         exp : IN  std_logic_vector(7 downto 0);
         exp_out : OUT  std_logic_vector(7 downto 0);
         full_frac : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal frac : std_logic_vector(22 downto 0) := (others => '0');
   signal exp : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal exp_out : std_logic_vector(7 downto 0);
   signal full_frac : std_logic_vector(23 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: chbf PORT MAP (
          frac => frac,
          exp => exp,
          exp_out => exp_out,
          full_frac => full_frac
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

    frac <= "10101100110011001111010";
	 exp <= "00000000";

      -- insert stimulus here 

      wait;
   end process;

END;
