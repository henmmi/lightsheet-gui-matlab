
function run_acquire(serial_device, start_position, end_position, num_images)

distance = end_position - start_position;
d = distance/num_images;
wait_ready(serial_device);
absolute_move(start_position, serial_device);
wait_ready(serial_device);

for i = 1:num_images
    relative_move(d,serial_device);
    wait_ready(serial_device);
    %img = snapshot();
end
end