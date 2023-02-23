function capture_image(camera_object, folder_name, specified_file_name)
%Determine if designated folder exists
%If not create a new folder
destination_folder = strcat(pwd,'/',folder_name) ;
if ~exist(destination_folder, 'dir')
    mkdir(destination_folder);
end
img = snapshot(camera_object);
file_name = strcat(specified_file_name, string(datetime('now','Format', "yyyy-MM-dd-HH-mm-ss")),'.png');
full_file_name = fullfile(destination_folder,file_name);
imwrite(img, full_file_name);
end