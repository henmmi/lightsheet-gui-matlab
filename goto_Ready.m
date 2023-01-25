function state = goto_Ready(curr_state,serial_device)
if curr_state == 5
    writeline(serial_device,"MM1\n\r");
    fprintf('Ready\n');
    state = 4;
    return
else
    goto_NotRef(serial_device);
    Homing(curr_state, serial_device);
    fprintf('End of Ready\n');
    state = 4;
end
end