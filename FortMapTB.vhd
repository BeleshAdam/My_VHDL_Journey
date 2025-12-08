library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FortMapTB is
end entity;

architecture sim of FortMapTB is

    signal S1 : unsigned(7 downto 0) := x"AA";
    signal S2 : unsigned(7 downto 0) := x"BB";
    signal S3 : unsigned(7 downto 0) := x"CC";
    signal S4 : unsigned(7 downto 0) := x"DD";

    signal Sel : unsigned(1 downto 0) := (others => '0');

    signal Output : unsigned(7 downto 0);

begin

    -- an instance of MUX with architecture rtl
    i_Mux1 : entity work.MUX(rtl) port map(
        Sel => Sel,
        S1 => S1,
        S2 => S2,
        S3 => S3,
        S4 => S4,
        Output => Output);

    -- TB (testbench) process
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

end architecture;
