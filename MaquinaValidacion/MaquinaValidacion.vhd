library ieee;
use ieee.std_logic_1164.all;

entity MaquinaValidacion is
    port (
        -- Entradas
        identificacion: in std_logic_vector(4 downto 0); -- Identificación TAG REID/NFC del vehículo
        -- Salidas
        identificacion_valida: out std_logic;
        categoria_vehiculo: out std_logic_vector(1 downto 0)
    );
end entity MaquinaValidacion;

architecture MaquinaValidacion_arch of MaquinaValidacion is
    -- Definición de los estados de la submáquina de estado de validación
    type estado_validacion is (inicio, esperando_identificacion, validacion_exitosa, validacion_fallida);
    signal estado_actual, estado_siguiente: estado_validacion;

begin
    -- Proceso de la submáquina de estado de validación
    proceso_validacion : process(identificacion)
    begin
        case estado_actual is
            when inicio =>
                estado_siguiente <= esperando_identificacion;
            when esperando_identificacion =>
                -- Lógica de validación para patrones reales
                if identificacion = "00000" then -- Identificación válida para coche
                    estado_siguiente <= validacion_exitosa;
                    categoria_vehiculo <= "00";
                elsif identificacion = "00001" then -- Identificación válida para camioneta
                    estado_siguiente <= validacion_exitosa;
                    categoria_vehiculo <= "01";
                elsif identificacion = "00010" then -- Identificación válida para autobús
                    estado_siguiente <= validacion_exitosa;
                    categoria_vehiculo <= "10";
                elsif identificacion = "00011" then -- Identificación válida para camión
                    estado_siguiente <= validacion_exitosa;
                    categoria_vehiculo <= "11";
                else
                    estado_siguiente <= validacion_fallida;
                    categoria_vehiculo <= "00"; -- Categoría de vehículo inválida
                end if;
            when validacion_exitosa =>
                identificacion_valida <= '1';
                estado_siguiente <= inicio; -- Reiniciar la submáquina
            when validacion_fallida =>
                identificacion_valida <= '0';
                estado_siguiente <= inicio; -- Reiniciar la submáquina
        end case;

        -- Actualización del estado actual
        estado_actual <= estado_siguiente;
    end process proceso_validacion;
end architecture MaquinaValidacion_arch;