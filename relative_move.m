function relative_move(n,serial_device)
    writeline(serial_device,"1PR"+n+"\n\r");
    fprintf("Move "+n+" from starting position\n");
%     pause(1)
end