library ieee;
use ieee.std_logic_1164.all;

entity DetectorVehicular is
    port (
        -- Sensores delanteros y traseros para la detección de vehículos
        sensor_delantero: in std_logic;
        sensor_trasero: in std_logic;
        -- Salida para indicar la detección de un vehículo
        vehiculo_detectado: out std_logic
    );
end entity DetectorVehicular;

architecture DetectorVehicular_arch of DetectorVehicular is
    -- Definición de los estados de la submáquina de estado para la detección de vehículos
    type estado_deteccion is (esperando_vehiculo, vehiculo_detectado_estado);
    signal estado_actual, estado_siguiente: estado_deteccion;

    -- Definición de señales adicionales para medición de distancia entre vehículos
    signal distancia_actual: integer := 0;
    constant distancia_umbral: integer := 10; -- Umbral de distancia para considerar que dos vehículos están entrando juntos

begin
    -- Proceso de la submáquina de estado para la detección de vehículos
    proceso_deteccion : process(sensor_delantero, sensor_trasero)
    begin
        -- Transiciones entre estados
        case estado_actual is
            when esperando_vehiculo =>
                if sensor_delantero = '1' or sensor_trasero = '1' then
                    estado_siguiente <= vehiculo_detectado_estado;
                    distancia_actual <= 0; -- Reiniciar la distancia actual al detectar un vehículo
                else
                    estado_siguiente <= esperando_vehiculo;
                end if;
            when vehiculo_detectado_estado =>
                if sensor_delantero = '1' or sensor_trasero = '1' then
                    -- Incrementar la distancia actual mientras se detecte un vehículo
                    distancia_actual <= distancia_actual + 1;
                    if distancia_actual >= distancia_umbral then
                        estado_siguiente <= esperando_vehiculo; -- Volver al estado de espera si la distancia excede el umbral
                    else
                        estado_siguiente <= vehiculo_detectado_estado;
                    end if;
                else
                    estado_siguiente <= esperando_vehiculo; -- Volver al estado de espera si no se detecta un vehículo
                    distancia_actual <= 0; -- Reiniciar la distancia actual al no detectar un vehículo
                end if;
            end case;

        -- Actualización del estado actual
        estado_actual <= estado_siguiente;
    end process proceso_deteccion;

    -- Salida de detección de vehículo
    vehiculo_detectado <= '1' when estado_actual = vehiculo_detectado_estado else
                          '0';
end architecture DetectorVehicular_arch;