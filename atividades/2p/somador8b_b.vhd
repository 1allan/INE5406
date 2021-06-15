LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;


ENTITY somador8b_b IS
    PORT(
        a, b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END somador8b_b;


ARCHITECTURE arch OF somador8b_b IS

BEGIN
    s <= a + b;
END arch;