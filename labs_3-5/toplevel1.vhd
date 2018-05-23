library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity toplevel1 is
    Port ( clk: STD_LOGIC;
			  push : in  STD_LOGIC;
           pop : in  STD_LOGIC;
			  btn2 : IN std_logic;
           reset : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (7 downto 0);
			  dssenbl: out std_logic_vector(3 downto 0);
			  mux8output: out std_logic_vector(7 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0);
           StackOVF : out  STD_LOGIC);
end toplevel1;

architecture Behavioral of toplevel1 is

COMPONENT FSM1
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		Push : IN std_logic;
		Pop  : IN std_logic;
		Full_Stack : IN std_logic;
		Empty_Stack : IN std_logic;    
		WE : OUT std_logic_VECTOR(0 DOWNTO 0);
		counterEN : OUT std_logic;
		UDcontrol : OUT std_logic;
		stackovf : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT FSM2
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		ADD : IN std_logic;
		SUB : IN std_logic;          
		PUSHout : OUT std_logic;
		POPout : OUT std_logic;
		AddSub : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT FSM3
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		Usub : IN std_logic;
		xy : IN std_logic;          
		PUSHout : OUT std_logic;
		POPout : OUT std_logic;
		UxySEL : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT add_sub
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		AddSub : IN std_logic;          
		ASout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
COMPONENT register8bit
	PORT(
		D : IN std_logic_vector(7 downto 0);
		Enable : IN std_logic;
		Clk : IN std_logic;          
		Q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
COMPONENT unary
	PORT(
		A : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
COMPONENT counter
	PORT(
		Clock : IN std_logic;
		reset : IN std_logic;
		enable : IN std_logic;
		load : IN std_logic;
		UD : IN std_logic;          
		outcount : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
COMPONENT mem32x8
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
 END COMPONENT;
  
COMPONENT Comparator
	PORT(
		A : IN std_logic_vector(4 downto 0);
		B : IN std_logic_vector(4 downto 0);          
		C : OUT std_logic		);
END COMPONENT;

COMPONENT mux_2X1
	PORT(
		SEL : IN std_logic_VECTOR(0 DOWNTO 0);
		A : IN std_logic_vector(4 downto 0);
		B : IN std_logic_vector(4 downto 0);          
		X : OUT std_logic_vector(4 downto 0)
		);
END COMPONENT;

COMPONENT ssdFSM
	PORT(
		CLK : IN std_logic;
		counter_done : IN std_logic;
		empty : IN std_logic;
		full : IN std_logic;
		s_ovf : IN std_logic;
		reset : IN std_logic;          
		rstcount : OUT std_logic;
		ssd_ctrl : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;

COMPONENT ssdFSM1
	PORT(
		CLK : IN std_logic;
		counter_done : IN std_logic;
		Add : IN std_logic;
		Sub : IN std_logic;
		reset : IN std_logic;          
		rstcount : OUT std_logic;
		ssd_ctrl : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;

COMPONENT ssdFSM2
	PORT(
		CLK : IN std_logic;
		counter_done : IN std_logic;
		UnSub : IN std_logic;
		xy : IN std_logic;
		reset : IN std_logic;          
		rstcount : OUT std_logic;
		ssd_ctrl : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;

COMPONENT ssdFsmFull
	PORT(
		CLK : IN std_logic;
		BTN0 : IN std_logic;
		BTN1 : IN std_logic;
		BTN2 : IN std_logic;
		reset : IN std_logic;
		ssd_ctrl0 : IN std_logic_vector(3 downto 0);
		ssd_ctrl1 : IN std_logic_vector(3 downto 0);
		ssd_ctrl2 : IN std_logic_vector(3 downto 0);          
		ssd_ctrl_OUT : OUT std_logic_vector(3 downto 0);
		mode_control : OUT std_logic_vector(1 downto 0);
		OUT_IN : OUT std_logic_vector(1 downto 0)
		);
END COMPONENT;

COMPONENT selEncoder
	PORT(
		fsm2out : IN std_logic_vector(3 downto 0);          
		sel_out : OUT std_logic_vector(1 downto 0)
		);
END COMPONENT;

COMPONENT counter125000
	PORT(
		clock : IN std_logic;
		clear : IN std_logic;
		count : IN std_logic;          
		done : OUT std_logic;
		Q : OUT std_logic_vector(16 downto 0)
		);
END COMPONENT;

COMPONENT Mux4x2_8bit
	PORT(
		SEL : IN std_logic_vector(1 downto 0);
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		C : IN std_logic_vector(7 downto 0);
		D : IN std_logic_vector(7 downto 0);          
		X : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT Mux4x1_1bit
	PORT(
		SEL : IN std_logic_vector(1 downto 0);
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;
		D : IN std_logic;          
		X : OUT std_logic
		);
END COMPONENT;

COMPONENT mux2X1_mode
	PORT(
		SEL : IN std_logic;
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		X : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

COMPONENT Decoder
PORT(
		counter_state : IN std_logic_vector(4 downto 0);
		enable : IN std_logic;          
		dout1 : OUT std_logic_vector(7 downto 0);
		dout2 : OUT std_logic_vector(7 downto 0);
		dout3 : OUT std_logic_vector(7 downto 0);
		dout4 : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT Decoder1
PORT(
	in1 : IN std_logic_vector(1 downto 0);
	enable : IN std_logic;          
	dout1 : OUT std_logic_vector(7 downto 0);
	dout2 : OUT std_logic_vector(7 downto 0);
	dout3 : OUT std_logic_vector(7 downto 0);
	dout4 : OUT std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT Decoder2
PORT(
	in1 : IN std_logic_vector(1 downto 0);
	enable : IN std_logic;          
	dout1 : OUT std_logic_vector(7 downto 0);
	dout2 : OUT std_logic_vector(7 downto 0);
	dout3 : OUT std_logic_vector(7 downto 0);
	dout4 : OUT std_logic_vector(7 downto 0)
	);
END COMPONENT;
	
signal en, en2, ud, fsmen: STD_LOGIC;
signal cout1, cout2: STD_LOGIC_VECTOR(4 downto 0);
signal cr1, cr2: STD_LOGIC;
signal muxout: STD_LOGIC_VECTOR(4 downto 0);
signal wen: STD_LOGIC_VECTOR(0 downto 0);
signal cdone,creset,creset1,creset2,creset3,ovf_sign:std_logic;
signal dec1,dec2,dec3,dec4,mux,mux1,mux2: std_logic_vector(7 downto 0);
signal dec11,dec12,dec13,dec14: std_logic_vector(7 downto 0);
signal dec21,dec22,dec23,dec24: std_logic_vector(7 downto 0);
signal mux8sel, mux8selall, oi:std_logic_vector(1 downto 0);
signal dssenab, dssenab1, dssenab2, dssenabout: std_logic_vector(3 downto 0);
signal tmpq:std_logic_vector(16 downto 0);
-------------------------------------------------------------------------------
--lab5-------------------------------------------------------------------------
signal btnpush, btnpop, fsm2sel, fsm3sel :STD_LOGIC;
signal push2, push3, pop2, pop3 :STD_LOGIC;
signal memin, memin3, addsubmemin :STD_LOGIC_VECTOR(7 downto 0);
signal dout, reg1, reg2, reg3, un4:STD_LOGIC_VECTOR(7 downto 0);

begin

en2<= en and (not cr2);

Inst_FSM1: FSM1 PORT MAP(
		clk => clk,
		rst => reset,
		Push => btnpush,
		Pop => btnpop,
		Full_Stack => cr1,
		Empty_Stack => cr2,
		WE => wen,
		counterEN => en,
		UDcontrol => ud,
		stackovf => ovf_sign
	);
	
-----------------------------------------------------

Inst_FSM2: FSM2 PORT MAP(
		clk => clk,
		rst => reset,
		ADD => push,
		SUB => pop,
		PUSHout => push2,
		POPout => pop2,
		AddSub => fsm2sel
	);
	
Inst_FSM3: FSM3 PORT MAP(
		clk => clk,
		rst => reset,
		Usub => push,
		xy => pop,
		PUSHout => push3,
		POPout => pop3,
		UxySEL => fsm3sel
	);
	
	Inst_add_sub: add_sub PORT MAP(
		A => reg1,
		B => reg2,
		AddSub => fsm2sel,
		ASout => addsubmemin
	);
	
	Inst_register8bit1: register8bit PORT MAP(
		D => dout,
		Enable => '1',
		Clk => clk,
		Q => reg1
	);
	
	Inst_register8bit2: register8bit PORT MAP(
		D => reg1,
		Enable => '1',
		Clk => clk,
		Q => reg2
	);
	
	Inst_register8bit3: register8bit PORT MAP(
		D => reg1,
		Enable => '1',
		Clk => clk,
		Q => reg3
	);
	
	Inst_unary: unary PORT MAP(
		A => dout,
		S => un4
	);
	
	Inst_mux2X1_mode: mux2X1_mode PORT MAP(
		SEL => fsm3sel,
		A => un4,
		B => reg3,
		X => memin3
	);
	
	Inst_Mux4x2_8bitmem: Mux4x2_8bit PORT MAP(
		SEL => mux8selall,
		A => datain,
		B => addsubmemin,
		C => memin3,
		D => memin3,
		X => memin
	);
	
	Inst_Mux4x1_1bitfsmpush: Mux4x1_1bit PORT MAP(
		SEL => mux8selall,
		A => push,
		B => push2,
		C => push3,
		D => push3,
		X => btnpush
	);
	Inst_Mux4x1_1bitfsmpop: Mux4x1_1bit PORT MAP(
		SEL => mux8selall,
		A => pop,
		B => pop2,
		C => pop3,
		D => pop3,
		X => btnpop
	);

---------------------------------------------------------

Inst_counter1: counter PORT MAP(
		Clock => clk ,
		reset => reset,
		enable => en,
		load => '0',
		UD => ud,
		outcount => cout1
	);
	
Inst_counter2: counter PORT MAP(
		Clock => clk,
		reset => reset,
		enable => en2,
		load => '0',
		UD => ud,
		outcount => cout2
	);



Inst_Comparator1: Comparator PORT MAP(
		A => cout1 ,
		B => "11111",
		C => cr1
	);
	
Inst_Comparator2: Comparator PORT MAP(
		A => cout1,
		B => "00000",
		C => cr2
	);
	
Memory: mem32x8
  PORT MAP (
    clka => clk,
    wea => wen,
    addra => muxout,
    dina => datain,
    douta => dout
  );

Inst_mux_2X1: mux_2X1 PORT MAP(
		SEL => wen,
		B => cout1,
		A => cout2,
		X => muxout
	);
	
	Inst_ssdFSM: ssdFSM PORT MAP(
		CLK => clk,
		counter_done => cdone ,
		empty => cr2 ,
		full => cr1,
		s_ovf => ovf_sign,
		reset => reset,
		rstcount => creset1,
		ssd_ctrl => dssenab
	);
	
	Inst_ssdFSM1: ssdFSM1 PORT MAP(
		CLK => clk,
		counter_done => cdone,
		Add => push,
		Sub => pop,
		reset => reset,
		rstcount => creset2,
		ssd_ctrl => dssenab1
	);
	
	Inst_ssdFSM2: ssdFSM2 PORT MAP(
		CLK => clk,
		counter_done => cdone,
		UnSub => push,
		xy => pop,
		reset => reset,
		rstcount => creset3,
		ssd_ctrl => dssenab2
	);
	
	Inst_ssdFsmFull: ssdFsmFull PORT MAP(
		CLK => clk,
		BTN0 => push,
		BTN1 => pop,
		BTN2 => btn2,
		reset => reset,
		ssd_ctrl0 => dssenab,
		ssd_ctrl1 => dssenab1,
		ssd_ctrl2 => dssenab2,
		ssd_ctrl_OUT => dssenabout,
		mode_control => mux8selall,
		OUT_IN => oi
	);
	
		Inst_selEncoder: selEncoder PORT MAP(
		fsm2out => dssenabout,
		sel_out => mux8sel
	);
	
		Inst_counter125000: counter125000 PORT MAP(
		clock => clk,
		clear => creset,
		count => '1',
		done => cdone,
		Q => tmpQ
	);
	
	Inst_Decoder: Decoder PORT MAP(
		counter_state => cout1,
		dout1 => dec1,
		dout2 => dec2,
		dout3 => dec3,
		dout4 => dec4,
		enable => ovf_sign
	);
	
	Inst_Decoder1: Decoder1 PORT MAP(
		in1 => oi,
		dout1 => dec11,
		dout2 => dec12,
		dout3 => dec13,
		dout4 => dec14,
		enable => '1'
		);
	
		Inst_Decoder2: Decoder2 PORT MAP(
		in1 => oi,
		dout1 => dec21,
		dout2 => dec22,
		dout3 => dec23,
		dout4 => dec24,
		enable => '1'
	);
	
		Inst_Mux4x2_8bit: Mux4x2_8bit PORT MAP(
		SEL => mux8sel,
		A => dec1,
		B => dec2,
		C => dec3,
		D => dec4,
		X => mux
	);
	
	Inst_Mux4x2_8bit1: Mux4x2_8bit PORT MAP(
		SEL => mux8sel,
		A => dec11,
		B => dec12,
		C => dec13,
		D => dec14,
		X => mux1
	);
	
	Inst_Mux4x2_8bit2: Mux4x2_8bit PORT MAP(
		SEL => mux8sel,
		A => dec21,
		B => dec22,
		C => dec23,
		D => dec24,
		X => mux2
	);
	
	Inst_Mux4x2_8bit_full: Mux4x2_8bit PORT MAP(
		SEL => mux8selall,
		A => mux,
		B => mux1,
		C => mux2,
		D => mux2,
		X => mux8output
	);
	
		
	Inst_Mux4x1_1bit: Mux4x1_1bit PORT MAP(
		SEL => mux8selall,
		A => creset1,
		B => creset2,
		C => creset3,
		D => creset3,
		X => creset	);
		

	dssenbl<=dssenabout;
	stackovf<=ovf_sign;
	dataout<=dout;
end Behavioral;

