----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2026 13:58:21
-- Design Name: 
-- Module Name: GameTypesPkg - Behavioral
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

package GameTypesPkg is
type enemy_t is record
        is_active : std_logic;
        x_pos     : integer range 0 to 639;
        y_pos     : integer range 0 to 479;
--        dx        : integer range -5 to 5; 
--        dy        : integer range -5 to 5;
    end record;

    -- Tablica 8 przeciwników
    type enemy_array_t is array(0 to 7) of enemy_t;

end GameTypesPkg;