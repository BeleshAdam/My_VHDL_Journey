entity SignalTB is
end entity;

-- This experiment shows that:
-- Variables are updated immediately
-- Signals are updated only when the process suspends

architecture sim of SignalTB is

    signal MySignal : integer := 0;

begin

    process is
        variable MyVariable : integer := 0;
    begin
        MyVariable  := MyVariable + 1;
        MySignal    <= MySignal + 1 ;

        report "MyVariable=" & integer'image(MyVariable) &
            ", MySignal="& integer'image(MySignal);
        wait for 10 ns;
    end process;

end architecture;
