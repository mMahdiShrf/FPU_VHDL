--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:49:28 11/27/2022
-- Design Name:   
-- Module Name:   F:/UNIVERCITY/term 5/computer architecture/FPU project/fpu_modules/sef_tb.vhd
-- Project Name:  fpu_modules
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sef
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sef_tb IS
END sef_tb;
 
ARCHITECTURE behavior OF sef_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sef
    PORT(
         num : IN  std_logic_vector(31 downto 0);
         sign : OUT  std_logic;
         exp : OUT  std_logic_vector(7 downto 0);
         frac : OUT  std_logic_vector(22 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal num : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal sign : std_logic;
   signal exp : std_logic_vector(7 downto 0);
   signal frac : std_logic_vector(22 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sef PORT MAP (
          num => num,
          sign => sign,
          exp => exp,
          frac => frac
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
			num <= "10101100011110001010100011010111";


      -- insert stimulus here 

      wait;
   end process;

END;
