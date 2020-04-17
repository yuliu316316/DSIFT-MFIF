close all;
clear all;
clc;

A=imread('sourceimages/flower_1.tif');
B=imread('sourceimages/flower_2.tif');

if size(A)~=size(B)
    error('two images are not the same size.');
end

figure,imshow(A);figure,imshow(B);

%key parameters
scale=48;
blocksize=8;
matching=1;

tic;
F=DSIFT_Fusion(A,B,scale,blocksize,matching);
toc;

figure,imshow(F);
imwrite(F,'results\fused_dsift.tif');