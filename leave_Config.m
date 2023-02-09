function state = leave_Config(serial_device)
writeline(serial_device, "1PW0\r\n");
state = 1;
pause(0.5);
end