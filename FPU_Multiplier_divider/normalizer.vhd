
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- normalizer for all conditions normalizer2 can't support
entity normalizer is
    Port ( unnormalized_exp : in  STD_LOGIC_VECTOR (7 downto 0);
           unnormalized_frac : in  STD_LOGIC_VECTOR (47 downto 0);
			  clk : in STD_LOGIC ;
			  decision_bit : in STD_LOGIC;
           normalized_exp : out  STD_LOGIC_VECTOR (7 downto 0);
           normalized_frac : out  STD_LOGIC_VECTOR (46 downto 0));
			  
end normalizer;

architecture Behavioral of normalizer is

signal temp_exp : STD_LOGIC_VECTOR ( 8 downto 0 );
signal temp_frac : STD_LOGIC_VECTOR ( 47 downto 0 );
signal shift_amount : INTEGER range 0 to 45 ;
signal shift_direction : std_logic;
signal output_bits :std_logic_vector (1 downto 0);


begin

-- determining the 1 in MSB (the most left 1 in given fraction)
-- dtermaing direction of shift and amount of it according to leading 1 from the left
process (clk)

variable ind:INTEGER range 1 to 48 :=48;
variable break:STD_LOGIC :='0';

begin

if rising_edge(clk) and break ='0' then
		ind:= ind - 1;
		if  unnormalized_frac(ind)='1' then
				break :='1';
				if decision_bit = '1' then
					if ind > 24 then
						shift_amount <= ind - 24;
						shift_direction <= '1';
					else
						shift_amount <= 24 - ind;
						shift_direction <= '0';
					end if;
				else
					if ind > 46 then
						shift_amount <= ind - 46;
						shift_direction <= '1';
					else
						shift_amount <= 46 - ind;
						shift_direction <= '0';
					end if;
				end if;
		end if;
end if;
end process;	

-- shfifting unnormalized fraction according to shift direction and amount
temp_frac <= STD_LOGIC_VECTOR(shift_right(unsigned(unnormalized_frac), shift_amount))  when shift_direction = '1' else
				 STD_LOGIC_VECTOR(shift_left(unsigned(unnormalized_frac), shift_amount))	when shift_direction ='0';
			
-- increase or decrease exponent according to shift direction and amount
with shift_direction select
temp_exp <= STD_LOGIC_VECTOR(unsigned('0' & unnormalized_exp) + to_unsigned(shift_amount,9) )  when '1',
				 STD_LOGIC_VECTOR(unsigned('0' & unnormalized_exp) - to_unsigned(shift_amount,9) )	when others;
				 
-- cheak normalized exponent does'nt under flow
with temp_exp(8)  select
normalized_exp <= temp_exp(7 downto 0) when '0',
						"00000000" when others;
						
output_bits <= (temp_exp(8) & decision_bit);

-- determining the output accordign to performing multiply or division and underflow of exponent
with output_bits select
normalized_frac <=  '0' & temp_frac(24 downto 0) & "000000000000000000000"  when "01",
							temp_frac (47 downto 1) when "00",
						 "00000000000000000000000000000000000000000000000" when others;

end Behavioral;

