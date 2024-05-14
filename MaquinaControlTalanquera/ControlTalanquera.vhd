library ieee;
use ieee.std_logic_1164.all;

entity ControlTalanquera is
    port (
        -- Entradas
        clk: in std_logic; -- Señal de reloj
        vehiculo_det: in std_logic; -- Señal que indica la detección de un vehículo en el carril
        identificacion_valida: in std_logic; -- Señal que indica si la identificación del vehículo es válida
        vehiculo_ingresado: in std_logic; -- Señal que indica si el vehículo ha ingresado al peaje
        tiempo_pasado: in std_logic; -- Señal que indica si el vehículo ha pasado el tiempo límite en el carril
        -- Salidas
        talanquera_entrada: out std_logic; -- Señal que controla la barrera de entrada
        talanquera_salida: out std_logic; -- Señal que controla la barrera de salida
        semaforo_entrada_verde: out std_logic; -- Semáforo de entrada en verde
        semaforo_entrada_rojo: out std_logic; -- Semáforo de entrada en rojo
        semaforo_salida_verde: out std_logic; -- Semáforo de salida en verde
        semaforo_salida_rojo: out std_logic; -- Semáforo de salida en rojo
        led_entrada_verde: out std_logic; -- LED de entrada en verde
        led_entrada_rojo: out std_logic; -- LED de entrada en rojo
        led_salida_verde: out std_logic; -- LED de salida en verde
        led_salida_rojo: out std_logic -- LED de salida en rojo
    );
end entity ControlTalanquera;

architecture ControlTalanquera_arch of ControlTalanquera is
    -- Definición de los estados de la submáquina de estado de control de barreras y semáforos
    type estado_control_barreras is (esperando_vehiculo, validando_identificacion, abriendo_barrera_entrada, esperando_paso, cerrando_barrera_entrada, abriendo_barrera_salida, esperando_salida);
    signal estado_actual, estado_siguiente: estado_control_barreras;

begin
    -- Proceso de la submáquina de estado del control de barreras y semáforos
    proceso_control_barreras : process(clk)
    begin
        if rising_edge(clk) then
            -- Transiciones entre estados
            case estado_actual is
                when esperando_vehiculo =>
                    if vehiculo_det = '1' then
                        estado_siguiente <= validando_identificacion;
                    else
                        estado_siguiente <= esperando_vehiculo;
                    end if;
                when validando_identificacion =>
                    if identificacion_valida = '1' then
                        estado_siguiente <= abriendo_barrera_entrada;
                    else
                        estado_siguiente <= esperando_vehiculo;
                    end if;
                when abriendo_barrera_entrada =>
                    if vehiculo_ingresado = '1' then
                        estado_siguiente <= esperando_paso;
                    else
                        estado_siguiente <= abriendo_barrera_entrada;
                    end if;
                when esperando_paso =>
                    if tiempo_pasado = '1' then
                        estado_siguiente <= cerrando_barrera_entrada;
                    else
                        estado_siguiente <= esperando_paso;
                    end if;
                when cerrando_barrera_entrada =>
                    estado_siguiente <= abriendo_barrera_salida;
                when abriendo_barrera_salida =>
                    estado_siguiente <= esperando_salida;
                when esperando_salida =>
                    if vehiculo_det /= '1' then
                        estado_siguiente <= esperando_vehiculo;
                    else
                        estado_siguiente <= esperando_salida;
                    end if;
            end case;

            -- Control de las barreras de entrada y salida según el estado
            case estado_actual is
                when abriendo_barrera_entrada | cerrando_barrera_entrada =>
                    talanquera_entrada <= '1';
                when others =>
                    talanquera_entrada <= '0';
            end case;

            -- Control de los semáforos de entrada y salida según el estado
            case estado_actual is
                when abriendo_barrera_entrada =>
                    semaforo_entrada_verde <= '1';
                    semaforo_entrada_rojo <= '0';
                    led_entrada_verde <= '1'; -- Activar LED de entrada verde
                    led_entrada_rojo <= '0'; -- Desactivar LED de entrada rojo
                when others =>
                    semaforo_entrada_verde <= '0';
                    semaforo_entrada_rojo <= '1';
                    led_entrada_verde <= '0'; -- Desactivar LED de entrada verde
                    led_entrada_rojo <= '1'; -- Activar LED de entrada rojo
            end case;

            case estado_actual is
                when esperando_salida =>
                    semaforo_salida_verde <= '1';
                    semaforo_salida_rojo <= '0';
                    led_salida_verde <= '1'; -- Activar LED de salida verde
                    led_salida_rojo <= '0'; -- Desactivar LED de salida rojo
                when others =>
                    semaforo_salida_verde <= '0';
                    semaforo_salida_rojo <= '1';
                    led_salida_verde <= '0'; -- Desactivar LED de salida verde
                    led_salida_rojo <= '1'; -- Activar LED de salida rojo
            end case;

            -- Actualización del estado actual
            estado_actual <= estado_siguiente;
        end if;
    end process proceso_control_barreras;

end architecture ControlTalanquera_arch;
