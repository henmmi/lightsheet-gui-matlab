imaqreset
imaqhwinfo('gige')

camera_object = gigecam('169.254.223.33');
video_width = camera_object.Width;
video_height = camera_object.Height;
disp(camera_object.Width);
disp(camera_object.Height);
