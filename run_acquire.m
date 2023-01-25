function run_acquire(distance, num_images)
d = distance/num_images;

op_states = 1;

ConexCC = serialport("COM10",921600);
configureTerminator(ConexCC,"CR/LF");

goto_NotRef(ConexCC);
op_states = goto_Ready(op_states,ConexCC);
wait_ready(ConexCC);

for i = 1:num_images
    relative_move(d,ConexCC);
    wait_ready(ConexCC);
    fprintf("Printing\n");
end

% for i = 1:num_images
%     relative_move(d, serial_device)
%     fprintf("Printing");
% end
end