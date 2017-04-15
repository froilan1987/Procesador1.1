----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:01:39 04/15/2017 
-- Design Name: 
-- Module Name:    IM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IM is
    Port ( entrada : in  STD_LOGIC_VECTOR (31 downto 0);
           salida : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : out  STD_LOGIC);
end IM;

architecture Behavioral of IM is

begin


end Behavioral;

