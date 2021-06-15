LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;


ENTITY somador4b_b IS
    PORT(
        a, b: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END somador4b_b;


ARCHITECTURE arch OF somador4b_b IS

BEGIN
    s <= a + b;
END arch;