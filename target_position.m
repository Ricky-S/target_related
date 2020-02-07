%% camera 
%% Yk S

close all;
clear all;
clc;
tic;
video_file='1_14.37.42.avi_fps25.avi';
video=VideoReader(video_file);
frame_number=floor(video.Duration * video.FrameRate); % video.numberofframes

for i=1:frame_number
    I = read(video,i);        %get image
    II=(rgb2gray(I));
    index = (II(:,:)>230);
    [x,y] = find(index == 1);
    xfinal(i) = mean(x);
    yfinal(i) = mean(y);
end
time = toc;
tim = video.Duration;
yfinal(frame_number+1) = time;
xfinal(frame_number+1) = tim;
A=[yfinal;xfinal]';
fid=fopen([video_file,'.txt'],'wt');
fprintf(fid,[repmat('%-6.4f ',1,size(A,2)),'\n'],A');
sta=fclose(fid); 
time
tim
