library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Maq_estados is
    port (clk, front_sensor, back_sensor, cobrar, reset, si: in std_logic;
        cat: in std_logic_vector(1 downto 0);
        id: in std_logic_vector(2 downto 0);
        tala_ini, tala_fin, alar_son, led, sema_verde1, sema_rojo1,sema_verde2,sema_rojo2, cont_vehiculo: out std_logic;
        contador: buffer integer range 0 to 1
    );
end Maq_estados;

architecture arch_Maq_estados of Maq_estados is
    type state_type is (inicio, identificador, cobro, salida, incorrecto, intento1, intento2);
    signal next_state : state_type;
    signal current_state : state_type;
    signal x: std_logic;
    constant frec : integer := 100000000;
    constant retra : integer := 500;
    signal counter : integer range 0 to (frec / 1000 * retra);

begin
    STATE_MEMORY : process (clk, reset)
    begin
        if (reset = '1') then
            current_state <= inicio;
        elsif (clk'event and clk = '1') then
            current_state <= next_state;
        end if;
    end process;

    Next_state_logic: process (current_state,front_sensor, back_sensor, cobrar, si )
    begin
      next_state <= current_state;
        case current_state is
            when inicio =>
                if (front_sensor = '0') then
                 
                    next_state <= identificador;
                else
                    next_state <= inicio;
                end if;

            when identificador =>
                if (cat = "11") then
                    next_state <= incorrecto;
elsif
(Cat/= "11" and si='1')then
                else
next_state <= cobro;
                end if;

            when incorrecto =>
                if (cat = "11"  and si ='1') then
next_state <= intento1;
elsif (Cat/= "11" and si='1')then
next_state <= cobro;
                end if;

when intento1 =>
if (cat = "11" and si='0') then
next_state <= intento2;
elsif (Cat/= "11" and si='1')then
next_state <= cobro;
end if;
when intento2 =>
if(cat="11" and si ='1') then
next_state <= salida;
elsif (Cat/= "11" and si='1')then
next_state <= cobro;
end if;
            when cobro =>
                if (cobrar = '1') then
                   
                    next_state <= salida;
                else
                    next_state <= cobro;
                end if;

            when salida =>
                if (back_sensor = '0') then
                   
                    next_state <= inicio;
                else
                    next_state <= salida;
                end if;

            when others =>
                next_state <= inicio;

        end case;
    end process;

    OUTPUT_LOGIC: process (front_sensor, back_sensor, cobrar, reset, cat, id)
    begin
        tala_ini <= '0';
        tala_fin <= '0';
        alar_son <= '0';
        led <= '0';
        sema_verde1 <= '0';
        sema_rojo1 <= '0';
        cont_vehiculo <= '0';                                                      

        case current_state is
            when inicio =>
                tala_ini <= '1';
                sema_verde1 <= '1';
					 sema_rojo1 <='0';
					 sema_rojo2 <= '1';
					 sema_verde2 <='0';
                cont_vehiculo <= '0'; --como le pongo para que siga sumando
led <= '0';

            when identificador =>
				
                tala_ini <= '0';
                sema_verde1 <= '0';
					 sema_rojo1 <='1';
					 sema_verde2 <='0';
					 sema_rojo2 <='1';
	led <= '1';

            when incorrecto =>
                tala_ini <= '0';
          
					led <='1';
					alar_son <='1';
					sema_verde1 <= '0';
					 sema_rojo1 <='1';
					 sema_verde2 <='0';
					 sema_rojo2 <='1';
               
                --if contador = 2 then alar_son <= '1'; --como ponerlo para despues de los 3 intentos y de la misma manera que se apagen los leds en cada intento
                    -- si es de aplicarle una funcion para el contador de intentos( para que la alarma se active al 3 inteto) como se hace?
                   
             when intento1 =>
led <='0';
alar_son <='1';
sema_verde1 <= '0';
					 sema_rojo1 <='1';
					 sema_verde2 <='0';
					 sema_rojo2 <='1';

--contador <= 0                                                                  ;
when intento2 =>
led <='0';
sema_verde1 <= '0';
					 sema_rojo1 <='1';
					 sema_verde2 <='0';
					 sema_rojo2 <='1';
--contador  <= 0;
alar_son <='1';

when cobro =>
                tala_ini <= '0';
                sema_verde1 <= '0';
					 sema_verde2 <= '0';
					  sema_rojo1 <='1';
				
					 sema_rojo2 <='1';
led <='1';
alar_son <= '0';


            when salida =>
                sema_verde2 <= '1';
					 sema_rojo2 <= '0';
					 sema_verde1 <='0';
					 sema_rojo1 <='1';
                tala_fin <= '1';
                cont_vehiculo <= '1';
led <= '0';
alar_son <= '0';
        end case;
    end process;
end arch_Maq_estados;