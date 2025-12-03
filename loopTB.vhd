entity LoopTB is
end entity;

architecture sim of LoopTB is
begin

    process is
    begin

        report  "Start!";

        loop
            report "Boo";
            wait for 10 ns;
        end loop;

        report "End!";
        wait;

    end process;

end architecture;
