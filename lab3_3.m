%% loads
close all, clc;
lena = imread("lenaRGB.bmp");
%% lena with hists
figure(1);
show_rgb_w_hists(lena);
%% heqd lena
lena_eq = lena;
lena_eq