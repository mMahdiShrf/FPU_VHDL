library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity chbf is
    Port ( frac : in  STD_LOGIC_VECTOR (22 downto 0);
				exp: in  STD_LOGIC_VECTOR (7 downto 0);
				exp_out : out STD_LOGIC_VECTOR (7 downto 0);
           full_frac : out  STD_LOGIC_VECTOR (23 downto 0));
end chbf;

architecture Behavioral of chbf is

signal hidden_bit : STD_LOGIC;


begin

-- determining hidden_bit according to exponent
with exp select
	hidden_bit <= '0' when "00000000",
						'1' when others;


-- determining exponent according to hidden bit			
with hidden_bit select
	exp_out <= "00000001" when '0',
					exp when others;
					
full_frac <= hidden_bit & frac;			




end Behavioral;

