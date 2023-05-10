
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;



entity round is
    Port ( exp_corrected : in  STD_LOGIC_VECTOR (7 downto 0);
           sum_shifted : in  STD_LOGIC_VECTOR (46 downto 0);
           exp_co : out  STD_LOGIC_VECTOR (7 downto 0);
           sum_co : out  STD_LOGIC_VECTOR (24 downto 0));
end round;

architecture Behavioral of round is

signal G,R,S,sel : STD_LOGIC;
signal sum_plus : STD_LOGIC_VECTOR(24 downto 0);

begin

-- no changes to exponent when rounding
exp_co <= exp_corrected;

-- extracting Sticky bits (S) , Round bit (R) , Guard Bit (G
S <= sum_shifted(0) or sum_shifted(1) or  sum_shifted(2) or  sum_shifted(3) or sum_shifted(4) or sum_shifted(5) or sum_shifted(6) or sum_shifted(7) or sum_shifted(8) or sum_shifted(9) or sum_shifted(10) or sum_shifted(11) or sum_shifted(12) or sum_shifted(13) or sum_shifted(14) or sum_shifted(15) or sum_shifted(16) or sum_shifted(17) or sum_shifted(18) or sum_shifted(19);
R <= sum_shifted(20);
G <= sum_shifted(21);

-- A measure of when to add one to Guard for rounding
	sel <= (R and S) or (R and G);

-- Rounded by adding one to Guard (32 is equivalant to 100000 , adds one to guard bit)
sum_plus <= (sum_shifted(46 downto 22) + 1);

-- Deciding whether to choose the rounded version or the sumsm itself
with sel select
		sum_co <= sum_shifted(46 downto 22) when '0',
					sum_plus when others;

end Behavioral;


