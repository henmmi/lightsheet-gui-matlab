
function run_acquire(serial_device, start_position, end_position, num_images)

distance = start_position - end_position;
d = distance/num_images;
wait_ready(serial_device);
absolute_move(start_position, serial_device);
wait_ready(serial_device);

for i = 1:num_images
    relative_move(d,serial_device);
    wait_ready(serial_device);
    fprintf("Printing\n");
end
end