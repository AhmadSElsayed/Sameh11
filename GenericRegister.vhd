---------------------------------------------
-- GenericRegister Module
--
-- Info:
-- Master-Slave
--
-- ToDo:
-- Implement
--
-- Testing:
-- A testing bus may be required
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------
entity GenericRegister is
    generic(Size : integer := 32);
    port(
        D : in std_logic_vector(Size downto 0);
        Q : out std_logic_vector(Size downto 0);
        Clk : std_logic
    );
end entity GenericRegister;
---------------------------------------------
architecture default of GenericRegister is
begin
    --ToDo
end default;
---------------------------------------------