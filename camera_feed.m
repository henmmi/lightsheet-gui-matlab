camera_object = webcam('Integrated Camera');
preview(camera_object);
folder_name = 'Images';
destination_folder = strcat(pwd,'/',folder_name) ;
if ~exist(destination_folder, 'dir')
    mkdir(destination_folder);
end

for i = 1:2
    img = snapshot(camera_object);
    file_name = strcat(sprintf('Image%d_', i), string(datetime('now','Format', "yyyy-MM-dd-HH-mm-ss")),'.png');
    full_file_name = fullfile('Images/',file_name);
    imwrite(img, full_file_name);
    pause(2)
    endls
    