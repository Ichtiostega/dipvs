%% loads
close all, clc;
lena = imread("lenaRGB.bmp");
lake = imread("lake.jpg");
%% lena with hists
figure(1);
show_rgb_w_hists(lena);
%% heqd lena
lena_eq = lena;
lena_eq(:,:,1) = histeq(lena_eq(:,:,1));
lena_eq(:,:,2) = histeq(lena_eq(:,:,2));
lena_eq(:,:,3) = histeq(lena_eq(:,:,3));
figure(2);
show_rgb_w_hists(lena_eq);
%% heq with hsv
hsv_lena = rgb2hsv(lena);
figure(3);
show_rgb_w_hists(hsv_lena);
hsv_lena(:,:,3) = histeq(hsv_lena(:,:,3));
hsv_lena_eq = hsv2rgb(hsv_lena);
figure(4);
show_rgb_w_hists(hsv_lena_eq);
%% heq with hsv lake
figure(5);
show_rgb_w_hists(lake);
hsv_lake = rgb2hsv(lake);
figure(6);
show_rgb_w_hists(hsv_lake);
hsv_lake(:,:,3) = histeq(hsv_lake(:,:,3));
hsv_lake_eq = hsv2rgb(hsv_lake);
figure(7);
show_rgb_w_hists(hsv_lake_eq);