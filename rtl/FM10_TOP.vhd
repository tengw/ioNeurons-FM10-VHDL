
--========================================================================--
--  Sentto Labs Inc.
--  Project         : Max 10 FPGA SG ESC Development Board
--  Description     :
--  Prerequisites   : None
--  Reference       : None
--  Authors         : Teng Wang, project init.
--                  : Hua Chang, BLDC motor controller
--  Version         : 1.0, Feb 20, 2017
--
--========================================================================--

Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--use ieee.fixed_pkg.all;
--use ieee.math_real.all;

----------------------------------------------------------------------------

ENTITY FM10_TOP is port(

    clock_50Mhz: in std_logic;
    led: out std_logic;

    -- ALL USER INTERFACE, VOLTAGE RANGE IS 0~3.3V. NO VOLTAGE HIGHER THAN 3.3V IS ALLOWED
    -- SPI User Interface, can be used as GPIO.
    pin6: inout std_logic;
    pin7: inout std_logic;
    pin8: inout std_logic;
    pin10: inout std_logic;
    pin11: inout std_logic;
    pin12: inout std_logic;
    pin13: inout std_logic;
    pin14: inout std_logic;
    pin17: inout std_logic;
    pin21: inout std_logic;
    pin22: inout std_logic;
    pin24: inout std_logic;
    pin25: inout std_logic;
    pin26: inout std_logic;
    pin27: inout std_logic;
    pin29: inout std_logic



);
END FM10_TOP;

ARCHITECTURE rtl OF FM10_TOP IS

-----------------------------------------------------------------------------------------
-- Selection of the architecture for the components
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- Signals/variable type declarations
-----------------------------------------------------------------------------------------

signal counter : integer := 0;
signal counter2: integer := 0;

BEGIN


--led<='0';

--process (clock_50Mhz)
--begin
--    if(clock_50Mhz = '1' AND clock_50Mhz'event) then
--        if(counter2 < 5000) then
--            counter2 <= counter2 + 1;
--            m2_u_high <= '0';
--        elsif (counter2 <10000) then
--            counter2 <= counter2 + 1;
--            m2_u_high <= '1';
--        else
--            counter2 <=0;
--            m2_u_high <= '0';
--        end if;
--    end if;
--end process;
--
--process (clock_50Mhz)
--begin
--    if(clock_50Mhz = '1' AND clock_50Mhz'event) then
--        if(counter2 < 500) then
--            m2_u_low <= '0';
--        elsif(counter2 < 4500) then
--            m2_u_low <= '1';
--        elsif (counter2 <10000) then
--            m2_u_low <= '0';
--        else
--            m2_u_low <= '0';
--        end if;
--    end if;
--end process;




process (clock_50Mhz)
begin
    if (clock_50Mhz = '1' AND clock_50Mhz'event) then
	     if (counter <5000000) then 
		      counter <= counter + 1;
				led <= '1';
		  elsif (counter <10000000) then
		      counter <= counter + 1;
				led <= '0';
		  else
		      counter <= 0;
        end if;
    end if;
end process;



END rtl;
