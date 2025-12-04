library ieee;
use ieee.std_logic_1164.all;
use iee.numeric_std.all;

entity signedUnsignedTB is
end entity;

architecture sim of signedUnsignedTB is

    signal UC : unsigned(7 downto 0) := (others => '0'); --unsigned counter
    signal SC : signed(7 downto 0) := (others => '0'); --signed counter

    signal US4 : unsigned(3 downto 0) := "1000";
    signal SS4 : signed(3 downto 0) := "1000";

    signal US8 : unsigned(3 downto 0) := (others => '0');
    signal SS8 : signed(3 downto 0) := (others => '0');

begin

    process is
    begin
-- wrapping counter
        wait for 10 ns;
        UC <= UC + 1;
        SC <= SC + 1;
-- adding signals
        US8 <= US8 + US4;
        SS8 <= SS8 + SS4;

    end process;


end architecture;
