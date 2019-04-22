--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : and_gate.vhf
-- /___/   /\     Timestamp : 01/31/2018 18:58:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Robert Yee/Desktop/X 120a/Lab3/and_gate.vhf" -w "C:/Users/Robert Yee/Desktop/X 120a/Lab3/and_gate.sch"
--Design Name: and_gate
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity and_gate is
   port ( i1 : in    std_logic; 
          i2 : in    std_logic; 
          d  : out   std_logic);
end and_gate;

architecture BEHAVIORAL of and_gate is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>i2,
                I1=>i1,
                O=>d);
   
end BEHAVIORAL;


