library ieee;
use ieee.std_logic_1164.all;

entity std_logicTB is
end entity;

-- This experiment shows that:
-- standard logic and how you might use them
-- std_logic is used more often then the integer in VHDL

architecture sim of std_logicTB is

    -- std_logic can have any one of these values "1, 0, Z, W, L, H, -, U, X"
    signal S1   : std_logic := '0';
    signal S2   : std_logic;
    signal S3   : std_logic;

begin

    process is
    begin

        wait for 10 ns;
        S1 <= not S1; -- not is used for inverting the value

    end process;

    --Driver A
    process is
    begin

        S2 <= 'z';
        S3 <= '0';
        wait;

    end process;

    --Driver B
    process(S1) is
    begin

        if S1 = '0' then
            S2 <= 'z';
            S3 <= 'z';
        else
            S2 <= '1';
            S3 <= '1';
        end if;

    end process;

end architecture;
