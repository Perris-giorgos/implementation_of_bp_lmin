library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.my_types_pkg.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register3bit is
	port(d : in std_logic_vector(2 downto 0);
		  load : in std_logic;
		   clk : in std_logic;
			clr : in std_logic;
			q : out std_logic_vector(2 downto 0));
end register3bit;

architecture Behavioral of register3bit is
begin
process (clk)
begin
if (clk'event and clk='1')then
	if (clr = '1')then
		q <= (others =>'0');
	elsif load = '1' then
		q <= d;
	end if;
end if;
end process;


end Behavioral;

