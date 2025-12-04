entity WaitOnWaitUntil is
end entity;

-- This experiment shows that:
-- wait on will triger when the value of signals change
-- wait until trigers when the value of the signals are the same

architecture sim of WaitOnWaitUntil is

    signal countUp      : integer := 0;
    signal countDown    : integer := 10;

begin

    process is
    begin

        countUp     <= countUp + 1;
        countDown   <= countDown + 1;
        wait for 10 ns;

    end process;

    process is
    begin

        wait on countUp, countDown;
        report "countUp=" & integer'image(countUp) & ", countDown=" & integer'image(countDown);

    end process;

    process is
    begin

        wait until countUp = countDown;
        report "!!!!!Jackpot!!!!!";

    end process;

end architecture;
