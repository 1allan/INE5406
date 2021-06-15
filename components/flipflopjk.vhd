LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;

ENTITY flipflopjk IS
   PORT( 
		j,k: IN  STD_LOGIC;
		reset: IN STD_LOGIC;
		enable: IN STD_LOGIC;
		clock: IN STD_LOGIC;
		output: OUT STD_LOGIC
	);
END flipflopjk;

ARCHITECTURE behavior OF flipflopjk IS
    SIGNAL temp: STD_LOGIC;
BEGIN
    PROCESS (clock) 
    BEGIN
        IF rising_edge(clock) THEN                 
            IF reset = '1' THEN   
                temp <= '0';
            ELSIF enable ='1' THEN
                IF (j = '0' AND k = '0') THEN
                    temp <= temp;
                ELSIF (j = '0' AND k = '1') THEN
                    temp <= '0';
                ELSIF (j = '1' AND k = '0') THEN
                    temp <= '1';
                ELSIF (j = '1' AND k = '1') THEN
                    temp <= not (temp);
                END IF;
            END IF;
        END IF;
    END process;
    output <= temp;
END behavior;
