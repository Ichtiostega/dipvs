%% load
close all; clc;
rice = imread('rice.png');
catalogue = imread('catalogue.bmp');
%% local bin
tmp = mean_bin(rice, 20);
figure(1);
imshow(tmp);
tmp = mean_bin(catalogue, 20);
figure(2);
imshow(tmp);
%% souvola
tmp = mean_sauvola(rice, 20, 'minus');
figure(3);
imshow(tmp);
tmp = mean_sauvola(catalogue, 20, 'plus');
figure(4);
imshow(tmp);
