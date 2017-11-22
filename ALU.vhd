---------------------------------------------
-- ALU Module
--
-- Info:
-- a,b are inputs
-- z is output
-- flags 3:Zero 2:OverFlow 1:Negative 0:Carry
--
-- ToDo:
-- Please set opcode width to best fit your operations
--
-- Testing:
-- No testing required here
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------
entity ALU is
    generic(size : integer := 32);
    port(
        a,b : in std_logic_vector(size downto 0);
        z : out std_logic_vector(size downto 0);
        flags : out std_logic(3 downto 0);
        opcode : in std_logic(4 downto 0)
    );
end entity ALU;
---------------------------------------------
architecture default of ALU is
begin
    --ToDo Implement multiplexer with output
end default;
---------------------------------------------