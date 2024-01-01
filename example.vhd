LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SecondTry IS
END ENTITY;

ARCHITECTURE sim OF SecondTry IS
    SIGNAL a : STD_LOGIC := '0';
    SIGNAL b : STD_LOGIC;
    SIGNAL c : STD_LOGIC := 'Z';
BEGIN
    PROCESS IS
    BEGIN
        a <= NOT a;
        WAIT FOR 10 ns;

    END PROCESS;
    --Driver A
    PROCESS IS
    BEGIN
        b <= 'Z';
        c <= '0';
        WAIT;
    END PROCESS;
    PROCESS (a) IS
    BEGIN
        IF a = '1' THEN
            b <= 'Z';
            c <= 'Z';
        ELSE
            b <= '1';
            c <= '1';
        END IF;
    END PROCESS;
END ARCHITECTURE;