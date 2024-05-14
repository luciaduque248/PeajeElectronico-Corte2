library ieee;
use ieee.std_logic_1164.all;

entity MaquinaEstados is
    port (
        -- Entradas
        clk: in std_logic;
        reset: in std_logic;
        vehiculo_detectado: in std_logic;
        identificacion_valida: in std_logic;
        vehiculo_ingresado: in std_logic;
        tiempo_pasado: in std_logic;
        peaje_pagado: in std_logic;

        -- Salidas
        talanquera_abierta: out std_logic;
        semaforo_estado: out std_logic;
        activar_cobro_peaje: out std_logic
    );
end entity MaquinaEstados;

architecture MaquinaEstados_arch of MaquinaEstados is
    -- Definición de los estados de la máquina de estado principal
    type estado_principal is (inicio, deteccion_vehiculo, validacion_identificacion, cobro_peaje, paso_vehiculo, finalizacion);
    signal estado_actual, estado_siguiente: estado_principal;

begin
    -- Proceso de la máquina de estado principal
    proceso_estado : process(clk, reset)
    begin
        if reset = '1' then
            estado_actual <= inicio; -- Estado inicial
        elsif rising_edge(clk) then
            estado_actual <= estado_siguiente; -- Actualización del estado actual
        end if;
    end process proceso_estado;

    -- Lógica de transición entre estados
    proceso_transiciones : process(clk) -- Agregar el reloj a la lista de sensibilidad
    begin
        if rising_edge(clk) then -- Espera a un flanco de subida del reloj
            -- Por defecto, el siguiente estado es igual al estado actual
            estado_siguiente <= estado_actual;

            -- Transiciones entre estados
            case estado_actual is
                when inicio =>
                    if vehiculo_detectado = '1' then
                        estado_siguiente <= deteccion_vehiculo;
                    end if;
                when deteccion_vehiculo =>
                    if identificacion_valida = '1' then
                        estado_siguiente <= validacion_identificacion;
                    end if;
                when validacion_identificacion =>
                    if vehiculo_ingresado = '1' then
                        estado_siguiente <= cobro_peaje;
                    end if;
                when cobro_peaje =>
                    if peaje_pagado = '1' then
                        estado_siguiente <= paso_vehiculo;
                    end if;
                when paso_vehiculo =>
                    if tiempo_pasado = '1' then
                        estado_siguiente <= finalizacion;
                    end if;
                when finalizacion =>
                    estado_siguiente <= inicio; -- Reiniciar el proceso
            end case;
        end if;
    end process proceso_transiciones;

    -- Lógica de salida
    with estado_actual select
        talanquera_abierta <= '1' when paso_vehiculo,
                               '0' when others;

    -- Si el semáforo está en '1' significa que el semáforo de salida está verde y el usuario puede salir del peaje.
    with estado_actual select
        semaforo_estado <= '1' when paso_vehiculo,
                            '0' when others;

    -- Señal de activación para el cobro del peaje
    activar_cobro_peaje <= '1' when estado_actual = cobro_peaje else '0';

end architecture MaquinaEstados_arch;