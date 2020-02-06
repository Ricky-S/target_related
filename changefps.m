%% change fps
%% Yk S
close all;
clear all;
clc;
% get the file name and read it.
video_file = '1_14.35.42.avi';
% read the avi
M = aviread(video_file);
%%%%%%%%%%%%%%% define new fps
fps = 25;
% function: change the fps
movie2avi(M,[video_file,'_fps',num2str(fps),'.avi'],'compression', 'None','FPS',fps);
