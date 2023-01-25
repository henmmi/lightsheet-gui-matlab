function wait_ready(serial_device)
%Error code for MOVING
x = 28;
%Loop while error code is below 0x32 (READY)
while x < 50
    writeline(serial_device, "1TS\r\n");
    x = readline(serial_device);
    x = char(x);
    x = x(end-1:end);
%     disp(x)
    x = hex2dec(x);
    pause(0.1)
end
end