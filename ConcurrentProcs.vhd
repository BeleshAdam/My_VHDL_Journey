library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity CuncorrentProcs is
end entity;

architecture sim of CuncorrentProcs is

    signal Uns : unsigned(5 downto 0) := (others => '0');
    signal Mull : unsigned(7 downto 0);
    signal Mull2 : unsigned(7 downto 0);
    signal Mull3 : unsigned(7 downto 0);

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

    process(Uns) is
    begin

        Mull2 <= Uns & "00";

    end process;

    Mull3 <= Uns & "00";

end architecture;
