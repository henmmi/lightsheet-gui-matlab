function current_pos = get_position(serial_device)
writeline(serial_device, "1TP\r\n");
current_pos = readline(serial_device);
disp(current_pos);
end