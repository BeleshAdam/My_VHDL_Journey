library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockedProcess is
end entity;

architecture sim of ClockedProcess is

    constant ClockFrequency : integer   := 100000000;
    constant ClockPeriod    : time      := 1000 ms / ClockFrequency;

    signal clk : std_logic := '1';
    signal nRst   : std_logic := '0';
    signal Input  : std_logic := '0';
    signal Output : std_logic;



begin

    i_FlipFlop  : entity work.FlipFlop(rlt)
    port map
        (
        clk     => clk,
        nRst    => nRst,
        Input   => Input,
        Output  => Output
        );

    clk <= not clk after ClockPeriod/2;

    --TB sequence
    process is
    begin
        nRst <= '1';

        wait for 20 ns;
        Input <= '1';
        wait for 22 ns;
        Input <= '0';
        wait for 6 ns;
        Input <= '1';
        wait for 20 ns;

        nRst <= '0';

        wait;
    end process;

end architecture;
