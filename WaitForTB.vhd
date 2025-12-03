entity WaitForTB is
end entity;

architecture sim of WaitForTB is
begin

    process is
    begin
        -- process starts here

        report "Boo";

        wait for 10 ns;
        -- and loops back here
    end process;

end architecture;
