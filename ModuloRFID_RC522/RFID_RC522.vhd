library ieee;
use ieee.std_logic_1164.all;

entity RFID_RC522 is
    port (
        clk: in std_logic;
        rst: in std_logic;
        sda: inout std_logic;
        sck: out std_logic;
        mosi: out std_logic;
        miso: in std_logic;
        irq: in std_logic;
        datos_in: in std_logic_vector(31 downto 0); -- Señal de entrada para los datos recibidos
        id_vehiculo: out std_logic_vector(31 downto 0)
    );
end entity RFID_RC522;

architecture RFID_RC522_arch of RFID_RC522 is
    -- Señales internas
    signal estado_actual, estado_siguiente: std_logic_vector(2 downto 0);
    signal contador_baudios: integer range 0 to 10000 := 0;
    signal id_temporal: std_logic_vector(31 downto 0);
    signal id_leida: std_logic := '0';
    signal datos_recibidos: std_logic_vector(31 downto 0);

begin
    -- Proceso para controlar la comunicación con la tarjeta RFID
    proceso_comunicacion: process(clk, rst)
    begin
        if rst = '1' then
            estado_actual <= "000"; -- Estado inicial
            id_temporal <= (others => '0');
            id_leida <= '0';
            datos_recibidos <= (others => '0');
        elsif rising_edge(clk) then
            estado_actual <= estado_siguiente;
            case estado_actual is
                when "000" => -- Estado de reposo
                    if irq = '1' then -- Señal de interrupción de la tarjeta RFID
                        estado_siguiente <= "001";
                    else
                        estado_siguiente <= "000";
                    end if;
                when "001" => -- Iniciar comunicación SPI
                    -- Lógica para iniciar la comunicación SPI con la tarjeta RFID
                    -- ...
                    estado_siguiente <= "010";
                when "010" => -- Recibir datos de la tarjeta RFID
                    -- Asignar los datos recibidos a datos_recibidos
                    datos_recibidos <= datos_in;
                    estado_siguiente <= "011";
                when "011" => -- Finalizar comunicación SPI
                    -- Lógica para finalizar la comunicación SPI con la tarjeta RFID
                    -- ...
                    id_temporal <= datos_recibidos; -- Usar la señal datos_recibidos
                    id_leida <= '1';
                    estado_siguiente <= "000";
                when others =>
                    estado_siguiente <= "000";
            end case;
        end if;
    end process proceso_comunicacion;

    -- Asignar la identificación del vehículo a la salida
    id_vehiculo <= id_temporal when id_leida = '1' else (others => '0');
end architecture RFID_RC522_arch;