LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY somador4b_h IS
	PORT(
		a, b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		cin: IN STD_LOGIC;
		s: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		cout: OUT STD_LOGIC
	);
END somador4b_h;


ARCHITECTURE arch OF somador4b_h IS
	COMPONENT SomadorCompleto
		PORT(
			a, b, cin: IN STD_LOGIC;
			s, cout: OUT STD_LOGIC
		);
	END COMPONENT;
    
	SIGNAL cout0, cout1, cout2, cout3, cout4, cout5, cout6: STD_LOGIC;

BEGIN
    SC0: SomadorCompleto PORT MAP
		(a => a(0), b => b(0), cin => cin, s => s(0), cout => cout0);
    SC1: SomadorCompleto PORT MAP
		(a => a(1), b => b(1), cin => cout0, s => s(1), cout => cout1);
    SC2: SomadorCompleto PORT MAP
		(a => a(2), b => b(2), cin => cout1, s => s(2), cout => cout2);
    SC3: SomadorCompleto PORT MAP
		(a => a(3), b => b(3), cin => cout2, s => s(3), cout => cout3);
    SC4: SomadorCompleto PORT MAP
		(a => a(4), b => b(4), cin => cout3, s => s(4), cout => cout4);
    SC5: SomadorCompleto PORT MAP
		(a => a(5), b => b(5), cin => cout4, s => s(5), cout => cout5);
    SC6: SomadorCompleto PORT MAP
		(a => a(6), b => b(6), cin => cout5, s => s(6), cout => cout6);
    SC7: SomadorCompleto PORT MAP
		(a => a(7), b => b(7), cin => cout6, s => s(7), cout => cout);
END arch;