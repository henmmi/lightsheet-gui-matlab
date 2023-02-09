
function run_acquire(serial_device, distance, num_images)

d = distance/num_images;
wait_ready(serial_device);

for i = 1:num_images
    relative_move(d,serial_device);
    wait_ready(serial_device);
    fprintf("Printing\n");
end
end