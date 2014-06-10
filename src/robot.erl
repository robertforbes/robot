-module(robot).
-export([drive/2, drive/3]).

-include("robot.hrl").

drive(SerialPort, #raw_drive{speed = Speed, direction = Direction}) ->
    drive(SerialPort, Speed, Direction).

drive(SerialPort, Speed, Direction) ->
    SerialPort ! {send, [Speed, Direction]}.
