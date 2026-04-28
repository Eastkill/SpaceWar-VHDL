----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2026 21:13:10
-- Design Name: 
-- Module Name: GameControler - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use work.GameTypesPkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GameControler is
--  Port ( );
    Port ( 
           -- INPUTY (Sygnały ze świata / z innych modułów)
           Clk         : in STD_LOGIC;  -- Główny zegar
           RstN        : in STD_LOGIC;  -- Reset
           -- W przyszłości dodasz tu np. przycisk strzału: 
           -- Shoot_Btn : in STD_LOGIC; 
           
           -- OUTPUTY (Wysyłanie danych o grze do wyświetlacza)
           EnemiesData : out enemy_array_t -- Cała tablica wrogów wysyłana jednym portem!
         );
end GameControler;

architecture Behavioral of GameControler is

begin


end Behavioral;
