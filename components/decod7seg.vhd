library ieee;
use ieee.std_logic_1164.all;


entity decod7seg is
    port (
        E: in std_logic_vector(3 downto 0);
        S: out std_logic_vector(6 downto 0)
    );
end decod7seg;

architecture arch of decod7seg is
begin
    S <= "0111111" when E = "0000" else
        "0000110" when E = "0001" else
        "1011011" when E = "0010" else
        "1001111" when E = "0011" else
        "1100110" when E = "0100" else
        "1101101" when E = "0101" else
        "1111101" when E = "0110" else
        "0000111" when E = "0111" else
        "1111111" when E = "1000" else
        "1100111" when E = "1001" else
        "1110111" when E = "1010" else
        "1111100" when E = "1011" else
        "0111001" when E = "1100" else
        "1011110" when E = "1101" else
        "1111001" when E = "1110" else
        "1110001";
end arch;