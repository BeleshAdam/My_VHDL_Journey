library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX is
port (

    --inputs
    S1 : in unsigned(7 downto 0);
    S2 : in unsigned(7 downto 0);
    S3 : in unsigned(7 downto 0);
    S4 : in unsigned(7 downto 0);

    Sel : in unsigned(1 downto 0);

    --outputs
    Output : out unsigned(7 downto 0);

    )
end entity;

architecture rtl of MUX is -- rtl stands for Regiter-Transfer Level
begin

    -- MUX using when
    process(Sel, S1, S2, S3, S4) is
    begin

        case Sel is
            when "00" =>
                Output <= S1;
            when "01" =>
                Output <= S2;
            when "10" =>
                Output <= S3;
            when "11" =>
                Output <= S4;
            when others =>
                Output <= (others => 'x');
        end case;

    end process;

end architecture;
