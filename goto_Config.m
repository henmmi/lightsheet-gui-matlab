function goto_Config()
if op_states == 1
    writeline(ConexCC, "1PW0\r\n");
    fprintf('Configuration\n');
    return
else
    goto_NotRef()
    writeline(ConexCC, "1PW0\r\n");
    fprintf('Configuration\n');
    op_states = 2;
end
end