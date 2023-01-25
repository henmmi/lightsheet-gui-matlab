function state = goto_NotRef(serial_device)
% Restarts device, to NR state
writeline(serial_device,"1RS\n\r");
fprintf('Not Referenced\n');
state = 1;
end