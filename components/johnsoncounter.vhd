LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
 
ENTITY johnsoncounter IS
    GENERIC (N: INTEGER := 4);
    PORT ( 
        clk: in STD_LOGIC;
        reset: in STD_LOGIC;
        q: out STD_LOGIC_VECTOR (N-1 downto 0)
    );
END johnsoncounter;
 
ARCHITECTURE behavioral OF johnsoncounter IS
    SIGNAL temp: std_logic_vector(N-1 DOWNTO 0) := (OTHERS => '0');
BEGIN
    PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            temp <= (OTHERS => '0');
        ELSIF clk = '1' AND clk'EVENT THEN
            temp <= temp (N-2 DOWNTO 0) & NOT(temp(N-1)); 
        END IF;
    END PROCESS;
    q <= temp;
END behavioral;