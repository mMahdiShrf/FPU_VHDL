
-- VHDL Instantiation Created from source file main.vhd -- 20:55:11 11/28/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT main
	PORT(
		num1 : IN std_logic_vector(31 downto 0);
		num2 : IN std_logic_vector(31 downto 0);
		clk : IN std_logic;
		decision_bit : IN std_logic;          
		result : OUT std_logic_vector(31 downto 0);
		s1 : OUT std_logic;
		s2 : OUT std_logic;
		f1 : OUT std_logic_vector(22 downto 0);
		f2 : OUT std_logic_vector(22 downto 0);
		e1 : OUT std_logic_vector(7 downto 0);
		e2 : OUT std_logic_vector(7 downto 0);
		exp_out1 : OUT std_logic_vector(7 downto 0);
		frac_out1 : OUT std_logic_vector(23 downto 0);
		exp_out2 : OUT std_logic_vector(7 downto 0);
		frac_out2 : OUT std_logic_vector(23 downto 0);
		u_exp : OUT std_logic_vector(7 downto 0);
		u_frac : OUT std_logic_vector(47 downto 0);
		n_exp : OUT std_logic_vector(7 downto 0);
		n_frac : OUT std_logic_vector(46 downto 0);
		exp_co : OUT std_logic_vector(7 downto 0);
		sum_co : OUT std_logic_vector(23 downto 0);
		sign_co : OUT std_logic
		);
	END COMPONENT;

	Inst_main: main PORT MAP(
		num1 => ,
		num2 => ,
		clk => ,
		decision_bit => ,
		result => ,
		s1 => ,
		s2 => ,
		f1 => ,
		f2 => ,
		e1 => ,
		e2 => ,
		exp_out1 => ,
		frac_out1 => ,
		exp_out2 => ,
		frac_out2 => ,
		u_exp => ,
		u_frac => ,
		n_exp => ,
		n_frac => ,
		exp_co => ,
		sum_co => ,
		sign_co => 
	);


