library ieee;
use ieee.std_logic_1164.all;

entity OLED is
    port (
        clk: in std_logic;
        rst: in std_logic;
        sda: buffer std_logic;  -- Cambiado de out a buffer
        scl: buffer std_logic  -- Cambiado de out a buffer
    );
end entity OLED;

architecture OLED_arch of OLED is
    -- Declaración de constantes para la configuración del protocolo I2C
    constant DELAY_COUNT: integer := 100;  -- Contador de retardo para el protocolo I2C
    constant I2C_DELAY: integer := 10;     -- Retardo entre pulsos de reloj para el protocolo I2C

    -- Señales internas
    signal i2c_delay_counter: integer range 0 to DELAY_COUNT := 0;

begin
    -- Proceso para generar la señal de reloj para el protocolo I2C
    i2c_clock_process: process(clk)
    begin
        if rising_edge(clk) then
            if i2c_delay_counter = I2C_DELAY then
                i2c_delay_counter <= 0;
                scl <= '1';  -- Mantener la línea SCL en alto cuando no se esté transmitiendo
            else
                i2c_delay_counter <= i2c_delay_counter + 1;
                scl <= '0';  -- Cambiar a bajo durante la transmisión I2C
            end if;
        end if;
    end process i2c_clock_process;

    -- Proceso de reinicio
    reset_process: process(clk, rst)
    begin
        if rst = '1' then
            -- Reiniciar las señales y los contadores en caso de un pulso de reset
            i2c_delay_counter <= 0;
            sda <= '1';  -- Inicialmente, el pin SDA se establece en alto durante el reinicio
            scl <= '1';  -- Inicialmente, el pin SCL se establece en alto durante el reinicio
        elsif rising_edge(clk) then
            -- Mantener las señales en sus estados actuales durante el reinicio
            scl <= '1';
        end if;
    end process reset_process;

end architecture OLED_arch;
