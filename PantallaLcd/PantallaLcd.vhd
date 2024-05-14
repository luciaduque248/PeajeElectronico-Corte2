library ieee;
use ieee.std_logic_1164.all;

entity PantallaLcd is
    port (
        clk : in std_logic;
        rst : in std_logic;
        data : in std_logic_vector(7 downto 0);
        rs : out std_logic;
        rw : out std_logic;
        en : out std_logic;
        lcd_data : out std_logic_vector(7 downto 0)
    );
end entity PantallaLcd;

architecture PantallaLcd_arch of PantallaLcd is
    -- Señales internas para el control de la pantalla LCD
    signal lcd_rs_int : std_logic := '0';
    signal lcd_rw_int : std_logic := '0';
    signal lcd_en_int : std_logic := '0';
    signal lcd_data_int : std_logic_vector(7 downto 0) := (others => '0');
    signal estado : std_logic_vector(1 downto 0) := "00";
    signal contador : integer range 0 to 50000 := 0;

begin
    -- Asignación de las señales de control y datos de la pantalla LCD
    rs <= lcd_rs_int;
    rw <= lcd_rw_int;
    en <= lcd_en_int;
    lcd_data <= lcd_data_int;

    -- Proceso para controlar la pantalla LCD
    proceso_control_lcd : process(clk, rst)
    begin
        if rst = '1' then
            -- Inicialización de la pantalla LCD en caso de reset
            lcd_rs_int <= '0';
            lcd_rw_int <= '0';
            lcd_en_int <= '0';
            lcd_data_int <= (others => '0');
            estado <= "00";
            contador <= 0;
        elsif rising_edge(clk) then
            case estado is
                when "00" =>  -- Inicialización
                    lcd_data_int <= "00111000";  -- Función de set
                    lcd_en_int <= '1';
                    contador <= contador + 1;
                    if contador = 50000 then
                        contador <= 0;
                        estado <= "01";
                    end if;
                when "01" =>  -- Encender pantalla
                    lcd_data_int <= "00001111";  -- Display on/off control
                    lcd_en_int <= '1';
                    contador <= contador + 1;
                    if contador = 50000 then
                        contador <= 0;
                        estado <= "10";
                    end if;
                when "10" =>  -- Modo de escritura
                    lcd_rs_int <= '1';  -- Modo de datos
                    lcd_data_int <= data;
                    lcd_en_int <= '1';
                    contador <= contador + 1;
                    if contador = 50000 then
                        contador <= 0;
                        estado <= "10";
                    end if;
                when others => null;
            end case;
        end if;
    end process proceso_control_lcd;
end architecture PantallaLcd_arch;