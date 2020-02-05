%% change fps
%% Yk S
close all;
clear all;
clc;
video_file = '1_14.35.42.avi';
M = aviread(video_file);
%%%%%%%%%%%%%%% change fps
fps = 25;
movie2avi(M,[video_file,'_fps',num2str(fps),'.avi'],'compression', 'None','FPS',fps);
