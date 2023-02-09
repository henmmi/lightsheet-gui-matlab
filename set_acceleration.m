function set_acceleration(n, serial_device)
    writeline(serial_device,"1AC"+n+"\n\r");
    pause(1);
end