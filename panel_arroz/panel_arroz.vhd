library ieee;
use ieee.std_logic_1164.all;

entity panel_arroz is
    port (
        a, b : in std_logic;  -- 1 (100%), 0 (25%)
        c, d, e : out std_logic  --Luces (c, d) y alarma (e)
    );
end panel_arroz;

architecture arch_panel_arroz of panel_arroz is
begin
    -- Si al menos un silo está a <=25%, prende la luz de advertencia (c)
    --c <= '1' when (a = '0' or b = '0') else '0';

    -- Si ambos silos están a <=25%, prende la luz de advertencia (d)
    --d <= '1' when (a = '0' and b = '0') else '0';

    -- Si los dos silos están al <=25%, activa la alarma (e)
    --e <= '1' when (a = '0' and b = '0') else '0';
	LUZ: process (a,b)
	begin 
		if a='0' or b='0' then 
			c <= '1';
		else 
			c <= '0';
		end if;
	end process;
	
	LUCES: process (a,b)
	begin
		if a='0' and b='0' then 
			d<= '1';
			e<= '1';
		else
			d<='0';
			e<='0';
		end if;
	end process;
	
end arch_panel_arroz;