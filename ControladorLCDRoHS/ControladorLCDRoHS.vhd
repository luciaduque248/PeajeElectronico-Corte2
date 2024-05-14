library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControladorLCDRoHS is
    port (
        -- Entradas
        clk              : in std_logic;
        rst              : in std_logic;
        total_vehiculos  : in unsigned(13 downto 0);
        tiempo_ultimo    : in unsigned(13 downto 0);
        estado_sistema   : in std_logic_vector(2 downto 0);
        
        -- Salidas para control de la pantalla LCD
        lcd_data         : out std_logic_vector(7 downto 0);
        lcd_rs           : out std_logic;
        lcd_rw           : out std_logic;
        lcd_en           : out std_logic
    );
end entity ControladorLCDRoHS;

architecture ControladorLCDRoHS_arch of ControladorLCDRoHS is
    -- Señales internas
    signal estado_actual, estado_siguiente    : std_logic_vector(2 downto 0);
    signal contador_refresco                  : unsigned(19 downto 0) := (others => '0');
    signal dato_lcd                           : std_logic_vector(7 downto 0);
    
    -- Constantes para los estados del sistema
    constant ESTADO_NORMAL        : std_logic_vector(2 downto 0) := "000";
    constant CONGES_ENTRADA       : std_logic_vector(2 downto 0) := "001";
    constant CONGES_SALIDA        : std_logic_vector(2 downto 0) := "010";
    constant EMERGENCIA           : std_logic_vector(2 downto 0) := "011";
    
    -- Componente para controlar la pantalla LCD
    component PantallaLcd
        port (  
            clk      : in std_logic;
            rst      : in std_logic;
            data     : in std_logic_vector(7 downto 0);
            rs       : out std_logic;
            rw       : out std_logic;
            en       : out std_logic;
            lcd_data : out std_logic_vector(7 downto 0)
        );
    end component PantallaLcd;
    
    -- Instancia del componente ControladorLCD
    signal lcd_rs_int    : std_logic;
    signal lcd_rw_int    : std_logic;
    signal lcd_en_int    : std_logic;
    signal lcd_data_int  : std_logic_vector(7 downto 0);
begin
    -- Instancia del componente ControladorLCD
    inst_PantallaLcd: PantallaLcd
        port map (
            clk      => clk,
            rst      => rst,
            data     => dato_lcd,
            rs       => lcd_rs_int,
            rw       => lcd_rw_int,
            en       => lcd_en_int,
            lcd_data => lcd_data_int
        );

    -- Asignación de las señales de control y datos de la pantalla LCD
    lcd_rs   <= lcd_rs_int;
    lcd_rw   <= lcd_rw_int;
    lcd_en   <= lcd_en_int;
    lcd_data <= lcd_data_int;

    -- Proceso para controlar el refresco de la pantalla LCD
    proceso_refresco_lcd : process(clk, rst)
    begin
        if rst = '1' then
            estado_actual <= ESTADO_NORMAL;
            contador_refresco <= (others => '0');
        elsif rising_edge(clk) then
            estado_actual <= estado_siguiente;
            
            -- Incrementar el contador de refresco
            contador_refresco <= contador_refresco + 1;
            
            -- Actualizar el dato para la pantalla LCD
            case estado_actual is
                when ESTADO_NORMAL =>
                    if contador_refresco = 0 then
                        dato_lcd <= std_logic_vector(resize(unsigned(total_vehiculos(7 downto 0)), 8));
                    elsif contador_refresco = 1 then
                        dato_lcd <= std_logic_vector(resize(unsigned(total_vehiculos(13 downto 8)), 8));
                    elsif contador_refresco = 2 then
                        dato_lcd <= std_logic_vector(resize(unsigned(tiempo_ultimo(7 downto 0)), 8));
                    else
                        dato_lcd <= std_logic_vector(resize(unsigned(tiempo_ultimo(13 downto 8)), 8));
                    end if;
                when CONGES_ENTRADA =>
                    dato_lcd <= X"43"; -- Carácter 'C'
                when CONGES_SALIDA =>
                    dato_lcd <= X"53"; -- Carácter 'S'
                when EMERGENCIA =>
                    dato_lcd <= X"45"; -- Carácter 'E'
                when others =>
                    dato_lcd <= (others => '0');
            end case;
            
            -- Actualizar el estado siguiente
            if contador_refresco = 3 then
                contador_refresco <= (others => '0');
                estado_siguiente <= estado_sistema;
            else
                estado_siguiente <= estado_actual;
            end if;
        end if;
    end process proceso_refresco_lcd;
end architecture ControladorLCDRoHS_arch;
