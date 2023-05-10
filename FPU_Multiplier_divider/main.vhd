
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity main is
    Port ( num1 : in  STD_LOGIC_VECTOR (31 downto 0);
           num2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  clk : in STD_LOGIC;
           decision_bit : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (31 downto 0)
--			  s1 : out std_logic;
--			  s2 : out std_logic;
--			  f1 : out std_logic_vector (22 downto 0);
--			  f2 : out std_logic_vector (22 downto 0);
--			  e1 : out std_logic_vector ( 7 downto 0);
--			  e2 : out std_logic_vector (7 downto 0);
--			  exp_out1 : out STD_LOGIC_VECTOR (7 downto 0);
--           frac_out1 : out  STD_LOGIC_VECTOR (23 downto 0);
--			  exp_out2 : out STD_LOGIC_VECTOR (7 downto 0);
--           frac_out2 : out  STD_LOGIC_VECTOR (23 downto 0);
--			  u_exp : out  STD_LOGIC_VECTOR (7 downto 0);
--			  u_frac : out  STD_LOGIC_VECTOR (47 downto 0);
--			  n_exp : out  STD_LOGIC_VECTOR (7 downto 0);
--           n_frac : out  STD_LOGIC_VECTOR (46 downto 0);
--			  exp_co : out  STD_LOGIC_VECTOR (7 downto 0);
--           sum_co : out  STD_LOGIC_VECTOR (24 downto 0);
--			  sign_co : out std_logic
			  );
end main;

architecture Behavioral of main is

	COMPONENT sef
	PORT(
		num : IN std_logic_vector(31 downto 0);          
		sign : OUT std_logic;
		exp : OUT std_logic_vector(7 downto 0);
		frac : OUT std_logic_vector(22 downto 0)
		);
	END COMPONENT;
	
	COMPONENT chbf
	PORT(
		frac : IN std_logic_vector(22 downto 0);
		exp : IN std_logic_vector(7 downto 0);          
		exp_out : OUT std_logic_vector(7 downto 0);
		full_frac : OUT std_logic_vector(23 downto 0)
		);
	END COMPONENT;
	
	COMPONENT exp_calc
	PORT(
		exp1 : IN std_logic_vector(7 downto 0);
		exp2 : IN std_logic_vector(7 downto 0);
		decision_bit : IN std_logic;          
		unnormalized_exp : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT multiplier_divider
	PORT(
		full_frac1 : IN std_logic_vector(23 downto 0);
		full_frac2 : IN std_logic_vector(23 downto 0);
		decision_bit : IN std_logic;          
		unnormalized_frac : OUT std_logic_vector(47 downto 0)
		);
	END COMPONENT;
	
	COMPONENT normalizer
	PORT(
		unnormalized_exp : IN std_logic_vector(7 downto 0);
		unnormalized_frac : IN std_logic_vector(47 downto 0);
		clk : IN std_logic;
		decision_bit : IN std_logic;          
		normalized_exp : OUT std_logic_vector(7 downto 0);
		normalized_frac : OUT std_logic_vector(46 downto 0)
		);
	END COMPONENT;
	
		COMPONENT normalizer2
	PORT(
		unnormalized_frac : IN std_logic_vector(47 downto 0);
		unnormalized_exp : IN std_logic_vector(7 downto 0);          
		normalized_frac : OUT std_logic_vector(46 downto 0);
		normalized_exp : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT round
	PORT(
		exp_corrected : IN std_logic_vector(7 downto 0);
		sum_shifted : IN std_logic_vector(46 downto 0);          
		exp_co : OUT std_logic_vector(7 downto 0);
		sum_co : OUT std_logic_vector(24 downto 0)
		);
	END COMPONENT;
	
	COMPONENT sign
	PORT(
		sign1 : IN std_logic;
		sign2 : IN std_logic;          
		sign_final : OUT std_logic
		);
	END COMPONENT;
	
	
signal sign1, sign2, final_sign : STD_LOGIC;
signal exp1, exp2, full_exp1, full_exp2, unnormalized_exp, normalized_exp,normalized_exp1,normalized_exp2, final_exp : STD_LOGIC_VECTOR ( 7 downto 0);
signal frac1, frac2:  STD_LOGIC_VECTOR ( 22 downto 0);
signal full_frac1, full_frac2:  STD_LOGIC_VECTOR ( 23 downto 0);
signal unnormalized_frac: STD_LOGIC_VECTOR (47 downto 0);
signal normalized_frac,normalized_frac1,normalized_frac2: STD_LOGIC_VECTOR (46 downto 0);
signal final_frac :STD_LOGIC_VECTOR (24 downto 0);




begin

----------------------------------extracing different parts of numbers

sef1 : sef port map(num1,sign1,exp1,frac1);
sef2 : sef port map(num2,sign2,exp2,frac2);

----------------------------------
---------------------------------- concat hidden bit with fractions

chbf1 : chbf port map (frac1,exp1,full_exp1,full_frac1);
chbf2: chbf port map (frac2,exp2,full_exp2,full_frac2);

---------------------------------- calculatin the exp and fraction of result

exp : exp_calc port map(full_exp1,full_exp2,decision_bit,unnormalized_exp);
frac : multiplier_divider port map(full_frac1,full_frac2,decision_bit,unnormalized_frac);

---------------------------------- 
---------------------------------- normalizing exp and fraction


normalize2 :normalizer2 port map (unnormalized_frac,unnormalized_exp,normalized_frac1,normalized_exp1);
normalize1 : normalizer port map(unnormalized_exp,unnormalized_frac,clk,decision_bit,normalized_exp2,normalized_frac2);

with unnormalized_frac(47 downto 46) select 
normalized_frac <= normalized_frac2 when "00",
						 normalized_frac1 when others;
						 
with unnormalized_frac(47 downto 46) select 
normalized_exp <= normalized_exp2 when "00",
						 normalized_exp1 when others;						 

----------------------------------
---------------------------------- rounding and sign calculating

rounding : round port map (normalized_exp,normalized_frac,final_exp,final_frac);
result_sign : sign port map(sign1,sign2,final_sign);

----------------------------------
---------------------------------- defining outputs

----------------------------------------------------------------- debug
--			  s1 <=sign1;
--			  s2 <= sign2;
--			  f1 <= frac1;
--			  f2 <= frac2;
--			  e1 <= exp1;
--			  e2 <= exp2;
--			  exp_out1 <= full_exp1;
--           frac_out1 <= full_frac1;
--			  exp_out2 <=full_exp2;
--           frac_out2 <= full_frac2;
--			  u_exp <=unnormalized_exp;
--			  u_frac <= unnormalized_frac;
--			  n_exp <= normalized_exp;
--           n_frac <= normalized_frac;
--			  exp_co <= final_exp;
--           sum_co <= final_frac;
--			  sign_co <= final_sign;
------------------------------------------------------------------



result <= final_sign & final_exp & final_frac( 22 downto 0 );

end Behavioral;

