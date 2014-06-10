robot
=====

Repository containing code to drive the "Rampaging Chariots" robot platform.

Relies on erlang-serial to drive the serial port.

Example usage from Erlang shell (open serial port and squirt bytes in the appropriate form to the robot):

SP = serial:start([{speed,9600},{open,"/dev/ttyUSB0"}]).

robot:drive(SP2, 127, 127).

