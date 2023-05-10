
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity multiplier_divider is
    Port ( full_frac1 : in  STD_LOGIC_VECTOR (23 downto 0);
           full_frac2 : in  STD_LOGIC_VECTOR (23 downto 0);
			  decision_bit : in STD_LOGIC;
           unnormalized_frac : out  STD_LOGIC_VECTOR (47 downto 0));
end multiplier_divider;

architecture Behavioral of multiplier_divider is


signal unnormalized_frac_temp : std_logic_vector (47 downto 0);

begin


-- multipling or dividing fractions according to decision_bit
with decision_bit select
unnormalized_frac_temp <=  STD_LOGIC_VECTOR(unsigned(full_frac1 & "000000000000000000000000"	) / unsigned(full_frac2))     when '1',
							 STD_LOGIC_VECTOR(unsigned(full_frac1) * unsigned(full_frac2))					 when others;
							 
unnormalized_frac <= unnormalized_frac_temp;

					 
end Behavioral;

