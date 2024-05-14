library ieee;
use ieee.std_logic_1164.all;

entity ControlTalanquera_Semaforo is
    port (
        -- Señal de reloj
        clk: in std_logic;
        -- Señal de reinicio
        rst: in std_logic;
        -- Estado del sistema
        estado_sistema: in std_logic_vector(1 downto 0);
        -- Condiciones de tráfico
        trafico: in std_logic_vector(1 downto 0);
        -- Salidas para controlar las barreras de entrada y salida
        barrera_entrada: out std_logic;
        barrera_salida: out std_logic;
        -- Salidas para controlar los semáforos de entrada y salida
        semaforo_entrada: out std_logic;
        semaforo_salida: out std_logic
    );
end entity ControlTalanquera_Semaforo;

architecture ControlTalanquera_Semaforo_arch of ControlTalanquera_Semaforo is
    -- Definición de los estados del sistema
    type estado_sistema_t is (
        estado_normal,
        congestion_entrada,
        congestion_salida,
        emergencia
    );

    -- Estado actual y siguiente del sistema
    signal estado_actual, estado_siguiente: estado_sistema_t;

    -- Definición de los estados de tráfico
    type estado_trafico_t is (
        trafico_ligero,
        trafico_denso,
        trafico_congestionado
    );

    -- Estado actual del tráfico
    signal trafico_actual: estado_trafico_t;

    -- Parámetros de configuración
    constant TIEMPO_CONGESTION: natural := 10; -- Número de ciclos de reloj para considerar congestionado el tráfico

begin
    -- Proceso para el control de las barreras y semáforos
    proceso_control : process(clk, rst)
    begin
        if rst = '1' then
            -- Reiniciar estado del sistema y tráfico
            estado_actual <= estado_normal;
            trafico_actual <= trafico_ligero;
        elsif rising_edge(clk) then
            -- Actualizar estado del sistema
            estado_actual <= estado_siguiente;

            -- Determinar el estado siguiente del sistema
            case estado_actual is
                when estado_normal =>
                    if trafico_actual = trafico_congestionado then
                        if trafico = "00" then
                            estado_siguiente <= congestion_entrada;
                        elsif trafico = "01" then
                            estado_siguiente <= congestion_salida;
                        else
                            estado_siguiente <= emergencia;
                        end if;
                    end if;
                when congestion_entrada =>
                    if trafico_actual /= trafico_congestionado then
                        estado_siguiente <= estado_normal;
                    end if;
                when congestion_salida =>
                    if trafico_actual /= trafico_congestionado then
                        estado_siguiente <= estado_normal;
                    end if;
                when emergencia =>
                    -- Aquí se podrían agregar condiciones de salida de emergencia
                    estado_siguiente <= estado_normal;
            end case;

            -- Control de las barreras de entrada y salida
            case estado_actual is
                when congestion_entrada | emergencia =>
                    barrera_entrada <= '1';
                when others =>
                    barrera_entrada <= '0';
            end case;

            case estado_actual is
                when congestion_salida | emergencia =>
                    barrera_salida <= '1';
                when others =>
                    barrera_salida <= '0';
            end case;

            -- Control de los semáforos de entrada y salida
            case estado_actual is
                when congestion_entrada | congestion_salida =>
                    semaforo_entrada <= '1';
                when others =>
                    semaforo_entrada <= '0';
            end case;

            case estado_actual is
                when congestion_entrada | congestion_salida =>
                    semaforo_salida <= '1';
                when others =>
                    semaforo_salida <= '0';
            end case;
        end if;
    end process proceso_control;
end architecture ControlTalanquera_Semaforo_arch;
