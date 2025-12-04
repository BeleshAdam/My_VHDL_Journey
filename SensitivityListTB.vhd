entity SensitivityListTB is
end entity;

-- This experiment shows that:
-- How you would use "if, elsif, else" in VHDL

architecture sim of SensitivityListTB is

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

        if countDown = countUp then
            report "Process A: Jackpot!";
        end if;

        wait on countUp, countDown;

    end process;

    process (countUp, countDown) is
    begin

        if countUp = countDown then
            report " Process B: Jackpot!";

    end process;

end architecture;
