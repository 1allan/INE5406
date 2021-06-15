LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
 
ENTITY johnsoncounter IS
    GENERIC (N: INTEGER := 4);
    PORT ( 
        clk: in STD_LOGIC;
        reset: in STD_LOGIC;
        enable: in STD_LOGIC;
        q: out STD_LOGIC_VECTOR (N-1 downto 0)
    );
END johnsoncounter;
 
ARCHITECTURE behavioral OF johnsoncounter IS
    SIGNAL currentstate, nextstate: std_logic_vector(N-1 DOWNTO 0);
BEGIN
    PROCESS(clk, reset)
    BEGIN
        IF (clk = '1' AND clk'EVENT) THEN
            IF (reset = '1') THEN
                currentstate <= (0 => '1', OTHERS =>'0');
            ELSIF (enable = '1') THEN
                currentstate <= nextstate;
            END IF;
        END IF;
    END process;
    nextstate <= currentstate(0) & currentstate(N-1 DOWNTO 1);
    q <= currentstate;
END behavioral;