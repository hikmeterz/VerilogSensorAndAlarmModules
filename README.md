﻿# VerilogSensorAndAlarmModules
## Project Description
This repository contains a collection of Verilog modules designed to simulate different systems, including smoke sensors, doorbells, floor alarms, and vote counters. Each module is well-documented and demonstrates a specific functionality or algorithm.

## Files
- `duman_sensoru.v`: Verilog module for simulating a smoke sensor.
- `kapi_zili.v`: Verilog module for simulating a doorbell system.
- `kat_alarmi.v`: Verilog module for simulating a floor alarm system.
- `oy_sayaci.v`: Verilog module for simulating a vote counter.

## Module Descriptions

### Module Usage
```verilog
// duman_sensoru.v
module duman_sensoru(input clk, input reset, input smoke_detected, output alarm);
// Module implementation
endmodule

// kapi_zili.v
module kapi_zili(input clk, input button_press, output doorbell_sound);
// Module implementation
endmodule

// kat_alarmi.v
module kat_alarmi(input clk, input reset, input [3:0] floor, output alarm);
// Module implementation
endmodule

// oy_sayaci.v
module oy_sayaci(input clk, input reset, input vote_cast, output [7:0] vote_count);
// Module implementation
endmodule
