function absolute_move(n,serial_device)
    writeline(serial_device,"1PA"+n+"\n\r");
    fprintf("Move "+n+" from starting position\n");
end