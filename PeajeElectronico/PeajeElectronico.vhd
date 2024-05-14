library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PeajeElectronico is
    port (
        -- Entradas
        clk: in std_logic;
        rst: in std_logic;
        sensor_delantero: in std_logic;
        sensor_trasero: in std_logic;
        tag_identificacion: in std_logic;
        -- Salidas
        barrera_entrada: out std_logic;
        barrera_salida: out std_logic;
        semaforo_entrada_verde: out std_logic; -- Semáforo 1
        semaforo_entrada_rojo: out std_logic;
        semaforo_salida_verde: out std_logic;  -- Semáforo 2
        semaforo_salida_rojo: out std_logic;
        total_vehiculos: buffer unsigned(13 downto 0);
        tiempo_paso_ultimo_vehiculo: buffer unsigned(13 downto 0);
        -- Salidas para el display de 7 segmentos
        display_output: out std_logic_vector(6 downto 0); -- A-G
        -- Salidas para el control de la pantalla LCD
        lcd_data: out std_logic_vector(7 downto 0);
        lcd_rs: out std_logic;
        lcd_rw: out std_logic;
        lcd_en: out std_logic;
        -- Señal de identificación válida como entrada y salida
        identificacion_valida: inout std_logic;
        -- Salida para la categoría del vehículo identificado
        categoria_vehiculo: out std_logic_vector(3 downto 0)
    );
end entity PeajeElectronico;

architecture PeajeElectronico_arch of PeajeElectronico is
    -- Señales internas
    signal sensor_vehiculo_detectado: std_logic;
    signal categoria_vehiculo_int: std_logic_vector(3 downto 0);
    signal vehiculo_ingresado: std_logic;
    signal tiempo_pasado: std_logic;
    signal talanquera_abierta: std_logic;
    signal semaforo_estado: std_logic;
    signal vehiculo_pasado: std_logic;
    -- Señales para el control de la pantalla LCD
    signal lcd_data_int: std_logic_vector(7 downto 0);
    signal lcd_rs_int: std_logic;
    signal lcd_rw_int: std_logic;
    signal lcd_en_int: std_logic;
    
    -- Componentes
    component ControladorLCDRoHS is
        port (
            -- Entradas
            clk: in std_logic;
            rst: in std_logic;
            total_vehiculos: in unsigned(13 downto 0);
            tiempo_ultimo: in unsigned(13 downto 0);
            estado_sistema: in std_logic_vector(2 downto 0);
            -- Salidas para control de la pantalla LCD
            lcd_data: out std_logic_vector(7 downto 0);
            lcd_rs: out std_logic;
            lcd_rw: out std_logic;
            lcd_en: out std_logic
        );
    end component ControladorLCDRoHS;

    -- Instancias de componentes
    component DetectorVehicular is
        port (
            sensor_delantero: in std_logic;
            sensor_trasero: in std_logic;
            vehiculo_detectado: out std_logic
        );
    end component;

    component IdValidacion
        port (
            clk: in std_logic;
            rst: in std_logic;
            identificacion_tag: in std_logic_vector(31 downto 0);
            identificacion_valida: out std_logic;
            categoria_vehiculo: out std_logic_vector(3 downto 0)
        );
    end component;

    component ControlTalanquera is
        port (
            clk: in std_logic;
            vehiculo_det: in std_logic;
            identificacion_valida: in std_logic;
            vehiculo_ingresado: in std_logic;
            tiempo_pasado: in std_logic;
            talanquera_entrada: out std_logic;
            talanquera_salida: out std_logic;
            semaforo_entrada_verde: out std_logic;
            semaforo_entrada_rojo: out std_logic;
            semaforo_salida_verde: out std_logic;
            semaforo_salida_rojo: out std_logic
        );
    end component;

    component MaquinaTiempoPaso is
        port (
            clk: in std_logic;
            vehiculo_det: in std_logic;
            talanquera_abierta: out std_logic
        );
    end component;

    component RegistroyContador is
        port (
            clk: in std_logic;
            rst: in std_logic;
            vehiculo_pasado: in std_logic;
            total_vehiculos: buffer unsigned(13 downto 0);
            tiempo_paso_ultimo_vehiculo: buffer unsigned(13 downto 0)
        );
    end component;
    
    -- Máquina de estado principal para controlar el flujo del sistema y actualizar el display
    type estado_maquina is (esperando, detectado, validando);
    signal estado_actual, estado_siguiente: estado_maquina;
    
    -- Instancia del componente RFID-RC522
    component RFID_RC522
    port (
        clk: in std_logic;
        rst: in std_logic;
        sda: inout std_logic;
        sck: out std_logic;
        mosi: out std_logic;
        miso: in std_logic;
        irq: in std_logic;
        id_vehiculo: out std_logic_vector(31 downto 0)
        );
     end component;

    -- Señales para el componente RFID-RC522
    signal rfid_sda : std_logic;
    signal rfid_sck : std_logic;
    signal rfid_mosi : std_logic;
    signal rfid_miso : std_logic;
    signal rfid_irq : std_logic;
    signal identificacion_tag: std_logic_vector(31 downto 0);
        
begin
    -- Instancias de componentes
    inst_DetectorVehicular: DetectorVehicular
        port map (
            sensor_delantero => sensor_delantero,
            sensor_trasero => sensor_trasero,
            vehiculo_detectado => sensor_vehiculo_detectado
        );

    inst_IdValidacion: IdValidacion
        port map (
            clk => clk,
            rst => rst,
            identificacion_tag => identificacion_tag,
            identificacion_valida => identificacion_valida,
            categoria_vehiculo => categoria_vehiculo_int
        );

    inst_ControlTalanquera: ControlTalanquera
        port map (
            clk => clk,
            vehiculo_det => sensor_vehiculo_detectado,
            identificacion_valida => identificacion_valida,
            vehiculo_ingresado => vehiculo_ingresado,
            tiempo_pasado => tiempo_pasado,
            talanquera_entrada => barrera_entrada,
            talanquera_salida => barrera_salida,
            semaforo_entrada_verde => semaforo_entrada_verde,
            semaforo_entrada_rojo => semaforo_entrada_rojo,
            semaforo_salida_verde => semaforo_salida_verde,
            semaforo_salida_rojo => semaforo_salida_rojo
        );

    inst_MaquinaTiempoPaso: MaquinaTiempoPaso
        port map (
            clk => clk,
            vehiculo_det => sensor_vehiculo_detectado,
            talanquera_abierta => talanquera_abierta
        );

    inst_RegistroyContador: RegistroyContador
         port map (
              clk => clk,
              rst => rst,
              vehiculo_pasado => vehiculo_pasado,
              total_vehiculos => total_vehiculos,
              tiempo_paso_ultimo_vehiculo => tiempo_paso_ultimo_vehiculo
         );

     -- Instancia del controlador LCD
     inst_ControladorLCD: ControladorLCDRoHS
         port map (
              clk => clk,
              rst => rst,
              total_vehiculos => total_vehiculos,
              tiempo_ultimo => tiempo_paso_ultimo_vehiculo,
              estado_sistema => (others => '0'), -- Aquí debes especificar el estado del sistema
              lcd_data => lcd_data_int,
              lcd_rs => lcd_rs_int,
              lcd_rw => lcd_rw_int,
              lcd_en => lcd_en_int
         );

     -- Conexiones del controlador LCD
     lcd_data <= lcd_data_int;
     lcd_rs <= lcd_rs_int;
     lcd_rw <= lcd_rw_int;
     lcd_en <= lcd_en_int;

     -- Instancia del componente RFID-RC522
     inst_RFID_RC522: RFID_RC522
    port map (
        clk => clk,
        rst => rst,
        sda => rfid_sda,
        sck => rfid_sck,
        mosi => rfid_mosi,
        miso => rfid_miso,
        irq => rfid_irq,
        id_vehiculo => identificacion_tag
    );
     -- Lógica para actualizar el estado de la máquina y el valor del display
     proceso_maquina_estado : process(clk, rst)
     begin
         if rst = '1' then
              estado_actual <= esperando;
         elsif rising_edge(clk) then
              estado_actual <= estado_siguiente;
              
              -- Actualizar el valor del display en función del estado actual
              if estado_actual = esperando then
                    display_output <= "0000001"; -- Valor para esperando
              elsif estado_actual = detectado then
                    display_output <= "0000010"; -- Valor para detectado
              elsif estado_actual = validando then
                    display_output <= "0000100"; -- Valor para validando
              else
                    display_output <= "0000000"; -- Valor por defecto
              end if;
         end if;
    end process proceso_maquina_estado;

    -- Lógica para actualizar el estado siguiente
    proceso_siguiente_estado : process(sensor_vehiculo_detectado, identificacion_valida, estado_actual)
    begin
         case estado_actual is
              when esperando =>
                    if sensor_vehiculo_detectado = '1' then
                         estado_siguiente <= detectado;
                    else
                         estado_siguiente <= esperando;
                    end if;
              when detectado =>
                    if identificacion_valida = '1' then
                         estado_siguiente <= validando;
                    else
                         estado_siguiente <= esperando;
                    end if;
              when validando =>
                    -- Agrega la lógica para transitar a otros estados desde validando
                    estado_siguiente <= esperando; -- Por ahora, vuelve a esperando
              when others =>
                    estado_siguiente <= esperando;
         end case;
    end process proceso_siguiente_estado;

end architecture PeajeElectronico_arch;
