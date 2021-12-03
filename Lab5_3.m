%% load
close all; clc;
bart = imread('bart.bmp');
%% hist
figure(1);
subplot(1,2,1);
imshow(bart);
subplot(1,2,2);
imhist(bart);
%% dual bin
bart_bw = bart >= 190 & bart <= 208;
bart_bw = uint8(bart_bw);
figure(2);
imshow(bart_bw, []);