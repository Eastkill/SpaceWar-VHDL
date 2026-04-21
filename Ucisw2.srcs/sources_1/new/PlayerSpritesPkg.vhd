----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2026 23:59:47
-- Design Name: 
-- Module Name: PlayerSpritesPkg - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package PlayerSpritesPkg is

    type sprite_rom_type is array (0 to 255) of std_logic_vector(7 downto 0);
    
    constant SHIP_UP : sprite_rom_type := (
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"D9", x"49", x"49", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"74", x"74", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"00", x"74", x"74", x"00", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"74", x"7B", x"7B", x"74", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"7B", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF"
    );
    
    constant SHIP_HALF_ANGLE : sprite_rom_type := (
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"49", x"49", x"49", x"FF", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"49", x"49", x"49", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"74", x"74", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"74", x"74", x"00", x"74", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"7B", x"00", x"7B", x"7B", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"74", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF"
    );
    
    constant SHIP_ANGLE_1 : sprite_rom_type := (
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"74", x"74", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"00", x"74", x"74", x"00", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"74", x"7B", x"7B", x"74", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"7B", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF"
    );
    
    constant SHIP_ANGLE_2 : sprite_rom_type := (
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"49", x"49", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"74", x"74", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"74", x"74", x"00", x"74", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"7B", x"00", x"7B", x"7B", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"74", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF"
    );
    
    constant SHIP_ANGLE_3 : sprite_rom_type := (
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"49", x"49", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"49", x"49", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"74", x"74", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"74", x"74", x"00", x"74", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"92", x"49", x"49", x"7B", x"00", x"7B", x"7B", x"49", x"49", x"92", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"D9", x"92", x"49", x"7B", x"74", x"7B", x"7B", x"49", x"92", x"D9", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"92", x"49", x"49", x"49", x"49", x"49", x"49", x"92", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"49", x"49", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"D9", x"92", x"92", x"D9", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", 
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF"
    );

end PlayerSpritesPkg;