%% load
close all; clc;
moon = imread('moon.png');
%% laplace
mask = [0 1 0; 1 -4 1; 0 1 0];
mask = mask./9
figure(1);
laplace_norm(moon, mask);
%% laplace premade
mask = fspecial('laplacian', 0)
figure(2);
laplace_norm(moon, mask);
