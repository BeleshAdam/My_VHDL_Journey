library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FlipFlop is
port
    (
    clk     : in std_logic;
    nRst    : in std_logic;
    Input   : in std_logic;
    Output  : out std_logic
    );

end entity;

architecture rlt of FlipFlop is

begin

    process(clk, nRst) is
    begin
        if nRst = '0' then
            Output <= '0';
        elsif rising_edge(clk) then
            Output <= Input;
        end if;
    end process;

end architecture;
