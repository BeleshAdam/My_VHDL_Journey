library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockedProcess is
end entity;

architecture sim of ClockedProcess is

    constant ClockFrequency : integer   := 100e6;
    constant ClockPeriod    : time      := 1000 ms / ClockFrequency;

    singal clk : std_logic := '1';

begin

    clk <= not clk after ClockPeriod/2;


end architecture;
