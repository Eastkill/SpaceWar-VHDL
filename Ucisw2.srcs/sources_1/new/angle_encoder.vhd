----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2026 10:49:50
-- Design Name: 
-- Module Name: angle_encoder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity angle_encoder is
    Port ( ROT_L : in STD_LOGIC;
           ROT_R : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           ANG : out STD_LOGIC_VECTOR (7 downto 0));
end angle_encoder;

architecture Behavioral of angle_encoder is
signal angle_reg : unsigned(7 downto 0);
signal rot_comb : STD_LOGIC_VECTOR(1 downto 0);

begin

rot_comb <= ROT_R & ROT_L;
angle_reg <= "0";

process(clk)
begin

if rising_edge(CLK) then
    if RST = '1' then
        angle_reg <= (others => '0');
    else
        case rot_comb is
            when "10" =>
                angle_reg <= angle_reg + 1;
            when "01" =>
                angle_reg <= angle_reg - 1;
            when others =>
               null;
        end case;
    end if;
 end if;
 
 end process;
 
ANG <= STD_LOGIC_VECTOR(angle_reg);
               

end Behavioral;
