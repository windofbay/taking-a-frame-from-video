%eksperiman A1
%memilih 1 frames dari banyak gambar
% video 1 detik akan menghasilkan 25 frames
% untuk mengambil gambar paling depan nilai mod(i,sampling_rate)==1
% untuk mengambil gambar paling akhir maka nilai mod(i,sampling_rate) == 0
% untuk mengambil gambar tengah maka nilai mod(i,sampling_rate) == 750
% Read the video file
video = VideoReader('E:\movie\What if\[Movieku.cc] What If... (2021) Eps-01 360p WebDL.mp4'); %sumber video
output_folder = 'E:\movie\What if\frames videos'; %folder tujuan
% Define the sampling rate (Menit)
fps = 25;
sampling_rate = 60*fps;

% Loop through the frames in the video
i = 0;
while hasFrame(video)
    % Get the current frame
    frame = readFrame(video);
    
    % Save the frame if it is at the specified sampling rate
    if mod(i,sampling_rate) == 1
        new_filename = sprintf('whatif01_%03d.jpg', i); %ganti nama sesuai yang diinginkan
        imwrite(frame, fullfile(output_folder, new_filename));
    end
    
    i = i + 1;
end