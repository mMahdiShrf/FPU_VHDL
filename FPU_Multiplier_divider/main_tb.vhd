-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY main_tb IS
  END main_tb;

  ARCHITECTURE behavior OF main_tb IS 

  -- Component Declaration
          COMPONENT main
          PORT(

		num1 : IN std_logic_vector(31 downto 0);
		num2 : IN std_logic_vector(31 downto 0);
		clk : IN std_logic;
		decision_bit : IN std_logic;          
		result : OUT std_logic_vector(31 downto 0)
--		s1 : OUT std_logic;
--		s2 : OUT std_logic;
--		f1 : OUT std_logic_vector(22 downto 0);
--		f2 : OUT std_logic_vector(22 downto 0);
--		e1 : OUT std_logic_vector(7 downto 0);
--		e2 : OUT std_logic_vector(7 downto 0);
--		exp_out1 : OUT std_logic_vector(7 downto 0);
--		frac_out1 : OUT std_logic_vector(23 downto 0);
--		exp_out2 : OUT std_logic_vector(7 downto 0);
--		frac_out2 : OUT std_logic_vector(23 downto 0);
--		u_exp : OUT std_logic_vector(7 downto 0);
--		u_frac : OUT std_logic_vector(47 downto 0);
--		n_exp : OUT std_logic_vector(7 downto 0);
--		n_frac : OUT std_logic_vector(46 downto 0);
--		exp_co : OUT std_logic_vector(7 downto 0);
--		sum_co : OUT std_logic_vector(24 downto 0);
--		sign_co : OUT std_logic
		);

          END COMPONENT;
			 
				
signal		num1 :std_logic_vector(31 downto 0);
signal		num2 : std_logic_vector(31 downto 0);
signal		clk : std_logic;
signal		decision_bit : std_logic;          
signal		result : std_logic_vector(31 downto 0);

	

          --
			 constant clk_period : time := 40 ns;

  BEGIN
	
	uut: main port map(
			num1 => num1,
			num2 => num2,
			clk => clk,
			decision_bit => decision_bit,
			result => result
	);


		clk_process : process 
		begin 
			clk <= '0';
			wait for clk_period/2; 
			clk <= '1';
			wait for clk_period/2;
		end process;

     tb : PROCESS
     BEGIN

        wait for 200 ns; -- wait until global set/reset completes
--		  
--		  --two normalized multipication +
--        num1 <= "01000100000000110110100000000000";--525.625
--		  num2 <= "01000001101000011100011010101000";--20.222
--		  decision_bit <= '0';								
--	
--		  wait for 100 ns;
		  
--		  	--two normalized division +
--		  num1 <= "01000100000000110110100000000000";--525.625 
--		  num2 <= "01000001101000011100011010101000";--20.222
--		  decision_bit <= '1';								
--		   
--        wait for 200 ns;	

		  --one normalized one denormalized multipication +
--		  num1 <= "01100101001111101001110111000101";--5.526e22
--		  num2 <= "00000000000000000001110010010011";--1.025e-41
--		  decision_bit <= '0';								--00100001001010100011010110110001
--		   
--        wait for 100 ns;	
--
--		  --one normalized one denormalized devision +
--		  num1 <= "00011100001001110000001101011011";--5.526e-22
--		  num2 <= "00000000000000000001110010010011";--1.025e-41
--		  decision_bit <= '1';							
--		   
--			
--				wait for 100 ns;	
--
		  --two denormalized multipication +
--		  num1 <= "00000000010010010010010001001010";--6.71700928227e-39 
--		  num2 <= "00000000000100100100000001001000";--1.67609869837e-39
--		  decision_bit <= '0';								--00000000000000000000000000000000		   
--        wait for 100 ns;
--
--		  --two denormalized division +
--		  num1 <= "00000000010010010010010001001010";--6.71700928227e-39 
--		  num2 <= "00000000000100100100000001001000";--1.67609869837e-39
--		  decision_bit <= '1';								
--        wait for 100 ns;	


        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
