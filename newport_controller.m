close all
clc
clear ConexCC

op_states = 1;

% COM_dev = input('Specify the COM port: \n');
% COM_port = "COM" + string(COM_dev);
% baudrate_dev = input ('Specify the baudrate: \n');

ConexCC = serialport("COM10",921600);
configureTerminator(ConexCC,"CR/LF");

goto_NotRef(ConexCC);
op_states = goto_Ready(op_states,ConexCC);
wait_ready(ConexCC);
absolute_move(10,ConexCC);
wait_ready(ConexCC);
relative_move(5,ConexCC);
wait_ready(ConexCC);

clear ConexCC


%% Changes Operating States 

switch op_states
    case 1
        disp('Not Referenced')
    case 2
        disp('Config')
    case 3
        disp('Homing')
    case 4
        disp('Ready')
    case 5
        disp('Not Ready')
    otherwise
        disp('Waiting')
end        


