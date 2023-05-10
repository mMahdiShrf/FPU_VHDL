
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


-- normalizer for 48's or 47's bit of unnormalized fraction equal to 1
entity normalizer2 is
    Port ( unnormalized_frac : in  STD_LOGIC_VECTOR (47 downto 0);
           normalized_frac : out  STD_LOGIC_VECTOR (46 downto 0);
           unnormalized_exp : in  STD_LOGIC_VECTOR (7 downto 0);
           normalized_exp : out  STD_LOGIC_VECTOR (7 downto 0));
end normalizer2;

architecture Behavioral of normalizer2 is

begin

-- determining normalized exponent according to 48's bit of unnormalized_fraction
with unnormalized_frac(47) select
normalized_exp<= STD_LOGIC_VECTOR(unsigned(unnormalized_exp) + "00000001") when '1',
						unnormalized_exp when others;
						
-- determining normalized fraction according to 48's bit of unnormalized fraction 
with unnormalized_frac(47) select				
normalized_frac <= '0' & unnormalized_frac(46 downto 1) when '1',
						 unnormalized_frac(47 downto 1) when others;



end Behavioral;

