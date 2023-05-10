
-- VHDL Instantiation Created from source file normalizer2.vhd -- 21:23:27 11/30/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT normalizer2
	PORT(
		unnormalized_frac : IN std_logic_vector(47 downto 0);
		unnormalized_exp : IN std_logic_vector(7 downto 0);          
		normalized_frac : OUT std_logic_vector(47 downto 0);
		normalized_exp : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_normalizer2: normalizer2 PORT MAP(
		unnormalized_frac => ,
		normalized_frac => ,
		unnormalized_exp => ,
		normalized_exp => 
	);


