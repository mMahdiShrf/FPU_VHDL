
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sign is
    Port ( sign1 : in  STD_LOGIC;
           sign2 : in  STD_LOGIC;
           sign_final : out  STD_LOGIC);
end sign;

architecture Behavioral of sign is

begin

-- deremining the result sign
sign_final <= sign1 xor sign2;

end Behavioral;

