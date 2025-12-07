library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- here we will create a multiplexer (MUX)

entity CuncorrentProcs is
end entity;

architecture sim of CuncorrentProcs is

    signal S1 : unsigned(7 downto 0) := x"AA";
    signal S2 : unsigned(7 downto 0) := x"BB";
    signal S3 : unsigned(7 downto 0) := x"CC";
    signal S4 : unsigned(7 downto 0) := x"DD";

    signal Sel : unsigned(1 downto 0) := (others => '0');

    signal Output1 : unsigned(7 downto 0);
    signal Output2 : unsigned(7 downto 0);

begin

    process is
    begin

        wait for 10 ns;
        Sel <= Sel +1;
        wait for 10 ns;
        Sel <= Sel +1;
        wait for 10 ns;
        Sel <= Sel +1;
        wait for 10 ns;
        Sel <= Sel +1;
        wait for 10 ns;
        Sel <= "00";
        wait;
    end process;
    -- MUX using if-else-then
    process(Sel, S1, S2, S3, S4) is
    begin

        if Sel = "00" then
            Output1 <= S1;
        elsif Sel = "01" then
            Output1 <= S2;
        elsif Sel = "10" then
            Output1 <= S3;
        elsif Sel = "11" then
            Output1 <= S4;
        else -- all other values that are not binary.
            Output1 <= (others => 'x');
        end if;
    end process;

    -- MUX using when
    process(Sel, S1, S2, S3, S4) is
    begin

        case Sel is
            when "00" =>
                Output2 <= S1;
            when "01" =>
                Output2 <= S2;
            when "10" =>
                Output2 <= S3;
            when "11" =>
                Output2 <= S4;
            when others =>
                Output2 <= (others => 'x');
        end case;

    end process;

end architecture;
