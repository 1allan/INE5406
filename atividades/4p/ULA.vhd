LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


ENTITY ULA IS
    GENERIC(size: integer := 4);
    PORT(
		a, b: IN STD_LOGIC_VECTOR(size-1 DOWNTO 0);
		ULAop: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		cin: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0);
		n, z, o: OUT STD_LOGIC
    );
END ULA;

ARCHITECTURE arch OF ULA IS
	SIGNAL temp: STD_LOGIC_VECTOR(size-1 DOWNTO 0);
BEGIN
	PROCESS (a, b, cin, ULAop) 
	BEGIN
		CASE ULAop IS
			WHEN "00" =>
				temp <= a AND b;
			WHEN "01" =>
				temp <= a OR b;
			WHEN "10" =>
				temp <= a + b;
			WHEN OTHERS =>
				temp <= "XXXX";
		END CASE;
	END PROCESS;
	s <= temp;
	n <= '1' WHEN temp(size-1) = '1' ELSE '0';
	z <= '1' WHEN temp = "0000" ELSE '0';
	o <= ((NOT a(size-1)) AND (NOT b(size-1)) AND temp(size-1)) OR (a(size-1) AND b(size-1) AND (NOT temp(size-1)));
END arch;