
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity exp_calc is
    Port ( exp1 : in  STD_LOGIC_VECTOR (7 downto 0);
           exp2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  decision_bit : in STD_LOGIC;
           unnormalized_exp : out  STD_LOGIC_VECTOR (7 downto 0));
end exp_calc;

architecture Behavioral of exp_calc is

signal temp_exp : STD_LOGIC_VECTOR ( 8 downto 0);
signal under_flow : STD_LOGIC_VECTOR (8 downto 0);
signal detector : STD_LOGIC_VECTOR (1 downto 0);


begin


-- determining exponent according to decision_bit(multipling or dividing)
with decision_bit select
temp_exp <= STD_LOGIC_VECTOR(signed('0' & exp1) + signed('0' & exp2) - "001111111") when '0',
			   STD_LOGIC_VECTOR(signed('0' & exp1) - signed('0' & exp2) + "001111111") when others;
				
--  detection of underflow with comparison it with 1
under_flow <= STD_LOGIC_VECTOR(signed(temp_exp) - "000000001");

--- set exponent to 0 in case of underflow
with under_flow(8) select
unnormalized_exp <= temp_exp(7 downto 0) when '0',
					    "00000000" when others;
						  


end Behavioral;

