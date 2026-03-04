----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2026 12:19:26
-- Design Name: 
-- Module Name: switches_to_byte - Behavioral
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

entity switches_to_byte is
    Port ( SW_0 : in STD_LOGIC;
           SW_1 : in STD_LOGIC;
           SW_2 : in STD_LOGIC;
           SW_3 : in STD_LOGIC;
           SW_4 : in STD_LOGIC;
           SW_5 : in STD_LOGIC;
           SW_6 : in STD_LOGIC;
           SW_7 : in STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (7 downto 0));
end switches_to_byte;

architecture Behavioral of switches_to_byte is

begin

DATA <= SW_7 & SW_6 & SW_5 & SW_4 & SW_3 & SW_2 & SW_1 & SW_0;

end Behavioral;
