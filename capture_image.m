function capture_image(camera_object, folder_name, specified_file_name)
%Determine if designated folder exists
%If not create a new folder
destination_folder = strcat(pwd,'\',string(folder_name)) ;

img = snapshot(camera_object);
file_name = strcat(string(specified_file_name), '_', string(datetime('now','Format', "yyyy-MM-dd-HH-mm-ss")),'.png');
full_file_name = fullfile(destination_folder,file_name);
imwrite(img, full_file_name);
end