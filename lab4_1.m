%% load
close all; clc;
lenon = imread("lenaNoise.bmp");
lena = imread("lena.bmp");
%% median
lenon_med = medfilt2(lenon, [3,3]);
figure(1);
display_diff(lenon, lenon_med);
%% median and avg
mask = fspecial('average', 3);
lena_avg = conv2(lena, mask, 'same');
lena_avg = uint8(lena_avg);
lena_med = medfilt2(lena, [3,3]);
figure(2);
display_diff(lena, lena_avg);
figure(3);
display_diff(lena, lena_med);
%% a lot of medians
lena_med = lena;
for i = [1:11]
    lena_med = medfilt2(lena_med, [5,5]);
end
figure(4);
display_diff(lena, lena_med);
