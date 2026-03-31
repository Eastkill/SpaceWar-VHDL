--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Tue Mar 24 18:01:21 2026
--Host        : DESKTOP-S4GO11J running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_100mhz_clk_n : in STD_LOGIC;
    clk_100mhz_clk_p : in STD_LOGIC;
    ROT_A : in STD_LOGIC;
    ROT_B : in STD_LOGIC;
    PL_USER_PB3 : in STD_LOGIC;
    PL_USER_LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PL_USER_SW0 : in STD_LOGIC;
    PL_USER_SW1 : in STD_LOGIC;
    PL_USER_SW2 : in STD_LOGIC;
    PL_USER_SW3 : in STD_LOGIC;
    PL_USER_SW4 : in STD_LOGIC;
    PL_USER_SW5 : in STD_LOGIC;
    PL_USER_SW6 : in STD_LOGIC;
    PL_USER_SW7 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      PL_USER_LED(7 downto 0) => PL_USER_LED(7 downto 0),
      PL_USER_PB3 => PL_USER_PB3,
      PL_USER_SW0 => PL_USER_SW0,
      PL_USER_SW1 => PL_USER_SW1,
      PL_USER_SW2 => PL_USER_SW2,
      PL_USER_SW3 => PL_USER_SW3,
      PL_USER_SW4 => PL_USER_SW4,
      PL_USER_SW5 => PL_USER_SW5,
      PL_USER_SW6 => PL_USER_SW6,
      PL_USER_SW7 => PL_USER_SW7,
      ROT_A => ROT_A,
      ROT_B => ROT_B,
      clk_100mhz_clk_n => clk_100mhz_clk_n,
      clk_100mhz_clk_p => clk_100mhz_clk_p
    );
end STRUCTURE;
