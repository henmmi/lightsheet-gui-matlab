ConexCC = serialport("COM10",912600);
configureTerminator(ConexCC,"CR/LF");

%Switches between Operating States
fprintf('Not Referenced\n')
% writeline(ConexCC,"1PW1\n\r");
% 
% fprintf('Configuration\n')
% writeline(ConexCC, "1PW0\r\n");
% fprintf('Not Referenced\n')

fprintf('Homing\n')
writeline(ConexCC,"1OR\r\n");

fprintf('Ready\n');
pause(3);
fprintf('Moving\n');
writeline(ConexCC,"1PR1\n\r");
pause(3);
fprintf("Returning\n");
writeline(ConexCC,"1PR1\n\r");


writeline(ConexCC,"MM0\n\r");
fprintf('Disable\n')


writeline(ConexCC,"MM1\n\r");
fprintf('Ready\n')

fprintf('Not Referenced\n')
writeline(ConexCC,"1RS\n\r");

clear ConexCC