function state = goto_Config(curr_state, serial_device)
% Check if current state is NR
if curr_state ~= 1
    goto_NotRef(serial_device);
end
%Changes state to CONFIG
    writeline(serial_device, "1PW1\r\n");
    fprintf('Configuration\n');
    state = 2;
end
%             op_states = goto_Config(op_states, ConexCC);
%             wait_config(ConexCC);
%             writeline(ConexCC, "1AC20\r\n");
%             op_states = leave_Config(ConexCC);