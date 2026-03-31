--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Tue Mar 24 18:01:21 2026
--Host        : DESKTOP-S4GO11J running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    PL_USER_LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PL_USER_PB3 : in STD_LOGIC;
    PL_USER_SW0 : in STD_LOGIC;
    PL_USER_SW1 : in STD_LOGIC;
    PL_USER_SW2 : in STD_LOGIC;
    PL_USER_SW3 : in STD_LOGIC;
    PL_USER_SW4 : in STD_LOGIC;
    PL_USER_SW5 : in STD_LOGIC;
    PL_USER_SW6 : in STD_LOGIC;
    PL_USER_SW7 : in STD_LOGIC;
    ROT_A : in STD_LOGIC;
    ROT_B : in STD_LOGIC;
    clk_100mhz_clk_n : in STD_LOGIC;
    clk_100mhz_clk_p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_angle_encoder_0_0 is
  port (
    ROT_L : in STD_LOGIC;
    ROT_R : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    ANG : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_angle_encoder_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_RotaryEnc_0_0 is
  port (
    ROT_A : in STD_LOGIC;
    ROT_B : in STD_LOGIC;
    Clk : in STD_LOGIC;
    RotL : out STD_LOGIC;
    RotR : out STD_LOGIC
  );
  end component design_1_RotaryEnc_0_0;
  component design_1_switches_to_byte_0_0 is
  port (
    SW_0 : in STD_LOGIC;
    SW_1 : in STD_LOGIC;
    SW_2 : in STD_LOGIC;
    SW_3 : in STD_LOGIC;
    SW_4 : in STD_LOGIC;
    SW_5 : in STD_LOGIC;
    SW_6 : in STD_LOGIC;
    SW_7 : in STD_LOGIC;
    DATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_switches_to_byte_0_0;
  signal RotaryEnc_0_RotL : STD_LOGIC;
  signal RotaryEnc_0_RotR : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal NLW_angle_encoder_0_ANG_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100mhz_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 clk_100mhz CLK_N";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk_100mhz_clk_n : signal is "Slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100mhz_clk_n : signal is "XIL_INTERFACENAME clk_100mhz, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of clk_100mhz_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 clk_100mhz CLK_P";
begin
RotaryEnc_0: component design_1_RotaryEnc_0_0
     port map (
      Clk => clk_wiz_0_clk_out1,
      ROT_A => ROT_A,
      ROT_B => ROT_B,
      RotL => RotaryEnc_0_RotL,
      RotR => RotaryEnc_0_RotR
    );
angle_encoder_0: component design_1_angle_encoder_0_0
     port map (
      ANG(7 downto 0) => NLW_angle_encoder_0_ANG_UNCONNECTED(7 downto 0),
      CLK => clk_wiz_0_clk_out1,
      ROT_L => RotaryEnc_0_RotL,
      ROT_R => RotaryEnc_0_RotR,
      RST => PL_USER_PB3
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1_n => clk_100mhz_clk_n,
      clk_in1_p => clk_100mhz_clk_p,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => '0'
    );
switches_to_byte_0: component design_1_switches_to_byte_0_0
     port map (
      DATA(7 downto 0) => PL_USER_LED(7 downto 0),
      SW_0 => PL_USER_SW0,
      SW_1 => PL_USER_SW1,
      SW_2 => PL_USER_SW2,
      SW_3 => PL_USER_SW3,
      SW_4 => PL_USER_SW4,
      SW_5 => PL_USER_SW5,
      SW_6 => PL_USER_SW6,
      SW_7 => PL_USER_SW7
    );
end STRUCTURE;
