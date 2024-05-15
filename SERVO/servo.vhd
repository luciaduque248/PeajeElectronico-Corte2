library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity servo is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           input_signal : in STD_LOGIC; -- Entrada para controlar el ángulo del servo (1 o 0)
           pwm_out : out STD_LOGIC -- Salida PWM para controlar el servo
          );
end servo;

architecture Behavioral of servo is
    constant PWM_PERIOD : integer := 100; -- Período del PWM (en ciclos de reloj)
    constant PWM_HIGH : integer := 10; -- Ciclos de reloj durante los cuales la señal PWM está alta (ajusta esto según tus necesidades)
    
    signal counter : integer range 0 to PWM_PERIOD-1 := 0;
    signal pwm_signal : STD_LOGIC := '0';
begin

    process (clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            pwm_signal <= '0';
        elsif rising_edge(clk) then
            if counter = PWM_PERIOD-1 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
            
            if counter < PWM_HIGH then
                pwm_signal <= '1';
            else
                pwm_signal <= '0';
            end if;
        end if;
    end process;

    pwm_out <= pwm_signal when reset = '0' else '0'; -- La salida PWM se detiene durante el reset

end Behavioral;
