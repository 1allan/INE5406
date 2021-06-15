LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY SomadorCompleto IS
    PORT(
        a, b, cin: IN STD_LOGIC;
        s, cout: OUT STD_LOGIC
    );
END SomadorCompleto;


ARCHITECTURE arch OF SomadorCompleto IS

BEGIN
    s <= a XOR b XOR cin;
    cout <= (a AND b) or (b AND cin) or (a AND cin);
END arch;