library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity CuncorrentProcs is
end entity;

architecture sim of CuncorrentProcs is

    signal Uns : unsigned(5 downto 0) := (others => '0');
    signal Mull : unsigned(7 downto 0);

begin

    process is
    begin

        Uns <= Uns + 1;


        wait for 10 ns;

    end process;

    process is
    begin

        Mull <= Uns & "00";

        wait on Uns;

    end process;

end architecture;
