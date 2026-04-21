----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.03.2026 18:24:40
-- Design Name: 
-- Module Name: DisplayGen - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.PlayerSpritesPkg.all; 
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DisplayGen is
    Port ( 
           Clk  : in STD_LOGIC;
           RstN : in STD_LOGIC;
           PosX : in  STD_LOGIC_VECTOR (9 downto 0);
           PosY : in  STD_LOGIC_VECTOR (9 downto 0);
           ANG : in STD_LOGIC_VECTOR (7 downto 0);
           EnemiesNum : in STD_LOGIC_VECTOR (3 downto 0);
           R : out STD_LOGIC_VECTOR (7 downto 0);
           G : out STD_LOGIC_VECTOR (7 downto 0);
           B : out STD_LOGIC_VECTOR (7 downto 0));
end DisplayGen;

architecture Behavioral of DisplayGen is

constant SPRITE_ORIG_SIZE  : integer := 16;
constant SCALE_FACTOR : integer := 4;
constant SPRITE_SCR_SIZE  : integer := SPRITE_ORIG_SIZE * SCALE_FACTOR;

constant PLAYER_X_POS : integer := 320 - (SPRITE_SCR_SIZE / 2);
constant PLAYER_Y_POS : integer := 240 - (SPRITE_SCR_SIZE / 2);

signal x_local, y_local : integer range 0 to 15; -- Pozycja piksela wewnątrz kwadratu statku na ekranie
signal rom_x, rom_y     : integer range 0 to 15; -- Pozycja piksela, o którą zapytamy naszą pamięć ROM
signal rom_addr         : integer range 0 to 255;
signal sprite_data      : std_logic_vector(7 downto 0);
signal in_player_box    : std_logic;
signal ship_dir         : std_logic_vector(1 downto 0);

begin

in_player_box <= '1' when (unsigned(PosX) >= PLAYER_X_POS and unsigned(PosX) < PLAYER_X_POS + SPRITE_SCR_SIZE) and
                          (unsigned(PosY) >= PLAYER_Y_POS and unsigned(PosY) < PLAYER_Y_POS + SPRITE_SCR_SIZE) else '0';
ship_dir <= ANG(7 downto 0);




end Behavioral;
