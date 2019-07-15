library ieee;
use ieee.std_logic_1164.all;
entity parity is
port( a: in std_logic_vector (15 downto 0);
y: out std_logic
);
end entity parity;
architecture parity_bhv of parity is
begin
process (a) is
variable even: std_logic;
begin
even:='0';
for i in a'range loop
if a(i)='1' then
even := not even;
end if;
end loop;
y<= even;
end process;
end architecture ;