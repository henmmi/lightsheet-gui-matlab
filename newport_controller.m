close all
clc
clear ConexCC

op_states = 1;

% COM_dev = input('Specify the COM port: \n');
% COM_port = "COM" + string(COM_dev);
% baudrate_dev = input ('Specify the baudrate: \n');

ConexCC = serialport("COM10",921600);
configureTerminator(ConexCC,"CR/LF");

op_states = goto_NotRef(ConexCC);
op_states = goto_Config(op_states, ConexCC);
wait_config(ConexCC);
set_acceleration(1,ConexCC);


clear ConexCC
   


