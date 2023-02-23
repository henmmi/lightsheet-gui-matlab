function wait_ready(serial_device)

%Error code for MOVING
MOVE_error = hex2dec('1C');
%Error code for READY
READY_error = hex2dec('32');

%Loop while error code is below 0x32 (READY)
while MOVE_error < READY_error
    writeline(serial_device, "1TS\r\n");
    MOVE_error = readline(serial_device);
    
    MOVE_error = char(MOVE_error);
    MOVE_error = MOVE_error(end-1:end);
    MOVE_error = hex2dec(MOVE_error);
    pause(0.1)
end
end