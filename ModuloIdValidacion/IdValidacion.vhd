library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IdValidacion is
    port (
        clk: in std_logic;
        rst: in std_logic;
        identificacion_tag: in std_logic_vector(31 downto 0);
        identificacion_valida: out std_logic;
        categoria_vehiculo: out std_logic_vector(3 downto 0)
    );
end entity IdValidacion;

architecture IdValidacion_arch of IdValidacion is
    -- Tipos de datos para la categoría del vehículo
    type categoria_vehiculo_t is (
        coche,
        camioneta,
        autobus,
        camion
    );

    -- Constantes para los patrones de identificación válidos
    constant ID_VALIDO_COCHE: std_logic_vector(31 downto 0) := X"0000FFFF";
    constant ID_VALIDO_CAMIONETA: std_logic_vector(31 downto 0) := X"0000AAAA";
    constant ID_VALIDO_AUTOBUS: std_logic_vector(31 downto 0) := X"0000BBBB";
    constant ID_VALIDO_CAMION: std_logic_vector(31 downto 0) := X"0000CCCC";

begin
    proceso_validacion: process(clk, rst)
    begin
        if rst = '1' then
            identificacion_valida <= '0';
            categoria_vehiculo <= (others => '0');
        elsif rising_edge(clk) then
            if identificacion_tag = ID_VALIDO_COCHE then
                identificacion_valida <= '1';
                categoria_vehiculo <= "0000";
            elsif identificacion_tag = ID_VALIDO_CAMIONETA then
                identificacion_valida <= '1';
                categoria_vehiculo <= "0001";
            elsif identificacion_tag = ID_VALIDO_AUTOBUS then
                identificacion_valida <= '1';
                categoria_vehiculo <= "0010";
            elsif identificacion_tag = ID_VALIDO_CAMION then
                identificacion_valida <= '1';
                categoria_vehiculo <= "0011";
            else
                identificacion_valida <= '0';
                categoria_vehiculo <= (others => '0');
            end if;
        end if;
    end process proceso_validacion;
end architecture IdValidacion_arch;