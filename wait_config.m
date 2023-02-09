function wait_config(serial_device)
%Error code for NOT REF
x = 16;
%Loop while error code is below 0x14 (CONFIG)
while x < 20
    writeline(serial_device, "1TS\r\n");
    x = readline(serial_device);
    x = char(x);
    x = x(end-1:end);
    disp(x)
    x = hex2dec(x);
    pause(0.1)
end
end