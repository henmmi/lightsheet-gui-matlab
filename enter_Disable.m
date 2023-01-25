function enter_Disable()
if op_states == 4
    writeline(ConexCC, "MM0\n\r");
    fprintf('Disable\n');
    op_states = 5;
    return
else
    goto_NotRef();
    goto_Ready();
    writeline(ConexCC, "MM0\n\r");
    fprintf('Disable\n'); 
    op_states = 5;
end
end