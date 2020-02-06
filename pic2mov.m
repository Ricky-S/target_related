%%Yk S
close all;
clear all;
clc;
for i = 1:148
    namein = ['target',num2str(i),'.jpg'];
    pic = imread(namein);
    im = double(pic);
    mov(i) = im2frame(uint8(im)); 
end 
aviname = ['1_14.37.42.avi.target_fps5.avi'];
movie2avi(mov , aviname , 'FPS' , 5 , 'COMPRESSION' , 'NONE' , 'quality',100);
