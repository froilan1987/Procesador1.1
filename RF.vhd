----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:22 04/10/2017 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rsd : in  STD_LOGIC_VECTOR (4 downto 0);
           dwr : in  STD_LOGIC_VECTOR (31 downto 0);
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC);
end RF;

architecture Behavioral of RF is
	type ram is array (0 to 39) of std_logic_vector (31 downto 0);                 
    signal registro : ram := (others =>"00000000000000000000000000000000"); 
begin
	process(rs1,rs2,rsd,dwr,rst)
			begin	
					if(rst = '1')then
						crs1 <= (others => '0');
						crs2 <= (others => '0');
						registro <=(others =>"00000000000000000000000000000000");
					else
						crs1 <= registro(conv_integer(rs1));
						crs2 <= registro(conv_integer(rs2));
						if (rsd /= "00000")then
								registro(conv_integer(rsd))<= dwr;
						end if;
					end if;
		end process;
end Behavioral;

