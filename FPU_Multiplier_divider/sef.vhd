
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sef is
    Port ( num : in  STD_LOGIC_VECTOR (31 downto 0);
           sign : out  STD_LOGIC;
           exp : out  STD_LOGIC_VECTOR (7 downto 0);
           frac : out  STD_LOGIC_VECTOR (22 downto 0));
end sef;

architecture Behavioral of sef is



begin

-- extracing sign, fraction and exponent of input numbers
sign <= num(31);
exp <= num(30 downto 23);
frac <= num(22 downto 0);


end Behavioral;
