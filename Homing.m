function state = Homing(curr_state, serial_device)
disp(curr_state)

% Check if current state if NR
% If not switch to NR
if curr_state ~= 1
    goto_NotRef(serial_device);
end

fprintf('Homing\n');

% Sends HOMING command twice
for i=1:2
    writeline(serial_device,"1OR\r\n");
    pause(2)
end

state = 3;
end