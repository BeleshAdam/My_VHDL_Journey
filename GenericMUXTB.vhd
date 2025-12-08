library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GenericMUXTB is
end entity;

architecture sim of GenericMUXTB is

    constant DataWidth : integer := 8;

    signal S1 : unsigned(DataWidth -1 downto 0) := x"AA";
    signal S2 : unsigned(DataWidth -1 downto 0) := x"BB";
    signal S3 : unsigned(DataWidth -1 downto 0) := x"CC";
    signal S4 : unsigned(DataWidth -1 downto 0) := x"DD";

    signal Sel : unsigned(1 downto 0) := (others => '0');

    signal Output : unsigned(DataWidth -1 downto 0);

begin

    -- an instance of GenericMUXTB with architecture rtl
    i_Mux1 : entity work.GenericMUX(rtl)
    generic map(DataWidth => DataWidth);
    port map(
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
