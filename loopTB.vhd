entity LoopTB is
end entity;

architecture sim of LoopTB is
begin

    process
        variable x : integer := 0;
    begin

        report  "Start!";

        loop
            report "Boo";
            wait for 10 ns;
            x := x + 1;
            if x = 9 then -- stops at 10th boo
                exit; -- exits the loop
            end if;
        end loop;

        report "End!";
        wait;

    end process;

end architecture;
