
-- VHDL Instantiation Created from source file normalizer.vhd -- 18:43:07 11/29/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_normalizer: normalizer PORT MAP(
		unnormalized_exp => ,
		unnormalized_frac => ,
		clk => ,
		decision_bit => ,
		normalized_exp => ,
		normalized_frac => 
	);


