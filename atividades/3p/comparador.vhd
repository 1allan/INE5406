LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparador IS 
    GENERIC (N: INTEGER := 8); 
    PORT (
        a, b: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        aigualb, amaiorb, amenorb: OUT STD_LOGIC := '0'
    );
END comparador;

ARCHITECTURE comportamento OF comparador IS
BEGIN

    aigualb <= '1' WHEN a = b ELSE '0';
    amaiorb <= '1' WHEN a > b ELSE '0';
    amenorb <= '1' WHEN a < b ELSE '0';
END comportamento;