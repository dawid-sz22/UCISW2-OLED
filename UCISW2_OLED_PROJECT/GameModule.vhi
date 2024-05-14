
-- VHDL Instantiation Created from source file GameModule.vhd -- 12:00:21 05/14/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT GameModule
	PORT(
		Data_IN : IN std_logic_vector(7 downto 0);
		Clk : IN std_logic;          
		Addr : OUT std_logic_vector(9 downto 0);
		EnableWrite : OUT std_logic;
		Data_OUT : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_GameModule: GameModule PORT MAP(
		Data_IN => ,
		Addr => ,
		EnableWrite => ,
		Clk => ,
		Data_OUT => 
	);


