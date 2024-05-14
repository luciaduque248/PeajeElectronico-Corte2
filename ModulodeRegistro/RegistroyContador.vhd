library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegistroyContador is
    port (
        -- Señal de reloj
        clk: in std_logic;
        -- Reset asincrónico
        rst: in std_logic;
        -- Señal que indica el paso de un vehículo
        vehiculo_pasado: in std_logic;
        -- Salida para el número total de vehículos que han pasado
        total_vehiculos: out unsigned(13 downto 0); -- Rango de 0 a 9999 (14 bits)
        -- Salida para el tiempo de paso del último vehículo
        tiempo_paso_ultimo_vehiculo: out unsigned(13 downto 0) -- Rango de 0 a 9999 (14 bits)
    );
end entity RegistroyContador;

architecture RegistroyContador_arch of RegistroyContador is
    -- Definición de los estados de la máquina de estados
    type estado_t is (esperando_vehiculo, contando_tiempo_paso);
    signal estado_actual, estado_siguiente: estado_t;

    -- Contadores para el número total de vehículos y el tiempo de paso del último vehículo
    signal contador_total_vehiculos: unsigned(13 downto 0) := (others => '0');
    signal contador_tiempo_paso_ultimo_vehiculo: unsigned(13 downto 0) := (others => '0');
begin
    -- Proceso para la máquina de estados
    proceso_maquina_estados: process(clk, rst)
    begin
        if rst = '1' then
            -- Estado inicial después del reset
            estado_actual <= esperando_vehiculo;
            contador_total_vehiculos <= (others => '0');
            contador_tiempo_paso_ultimo_vehiculo <= (others => '0');
        elsif rising_edge(clk) then
            -- Actualizar el estado actual
            estado_actual <= estado_siguiente;

            -- Lógica de la máquina de estados
            case estado_actual is
                when esperando_vehiculo =>
                    if vehiculo_pasado = '1' then
                        -- Cambiar al estado de conteo de tiempo de paso
                        estado_siguiente <= contando_tiempo_paso;
                    end if;
                when contando_tiempo_paso =>
                    -- Incrementar el contador de tiempo de paso si un vehículo ha pasado
                    contador_tiempo_paso_ultimo_vehiculo <= contador_tiempo_paso_ultimo_vehiculo + 1;
                    -- Incrementar el contador total de vehículos si un vehículo ha pasado
                    contador_total_vehiculos <= contador_total_vehiculos + 1;
                    -- Volver al estado de espera de vehículo
                    estado_siguiente <= esperando_vehiculo;
            end case;
        end if;
    end process proceso_maquina_estados;

    -- Asignar los valores de los contadores a las salidas
    total_vehiculos <= contador_total_vehiculos;
    tiempo_paso_ultimo_vehiculo <= contador_tiempo_paso_ultimo_vehiculo;
end architecture RegistroyContador_arch;
