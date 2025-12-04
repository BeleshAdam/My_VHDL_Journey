entity ifTB is
end entity;

-- This experiment shows that:
-- How you would use "if, elsif, else" in VHDL

architecture sim of ifTB is

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

    if countUp > countDown then
        report "countUp is larger.";
    elsif countUp < countDown then
        report "countDown is larger";
    else
        report "They are equal";
    end if;

        wait on countUp, countDown;

    end process;

end architecture;
