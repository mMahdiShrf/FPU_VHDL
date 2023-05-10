
-- VHDL Instantiation Created from source file round.vhd -- 15:38:32 11/28/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT round
	PORT(
		exp_corrected : IN std_logic_vector(7 downto 0);
		sum_shifted : IN std_logic_vector(47 downto 0);          
		exp_co : OUT std_logic_vector(7 downto 0);
		sum_co : OUT std_logic_vector(23 downto 0)
		);
	END COMPONENT;

	Inst_round: round PORT MAP(
		exp_corrected => ,
		sum_shifted => ,
		exp_co => ,
		sum_co => 
	);


