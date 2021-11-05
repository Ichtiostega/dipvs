%% load
close all; clc;
board = imread("board.png");
lena = imread("lena.bmp");
%% avg
mask = fspecial('average', 3);
board_avg = conv2(board, mask, 'same');
board_avg = uint8(board_avg);
figure(1);
display_diff(board, board_avg);
%% different avg sizes
figure(2);
avg_sizes(board);
%% lena
mask = fspecial('average', 3);
lena_avg = conv2(lena, mask, 'same');
lena_avg = uint8(lena_avg);
figure(3);
display_diff(lena, lena_avg);
figure(4);
avg_sizes(lena);
%% own avg
mask = [1 2 1; 2 4 2; 1 2 1];
mask = mask/sum(sum(mask));
lena_avg = conv2(lena, mask, 'same');
lena_avg = uint8(lena_avg);
figure(5);
display_diff(lena, lena_avg);
%% gaussian
mask = fspecial('gaussian', 5, 0.5);
lena_gauss = conv2(lena, mask, 'same');
lena_gauss = uint8(lena_gauss);
figure(6);
display_diff(lena, lena_avg);
figure(7);
gauss_deviations(lena);
figure(8);
gauss_deviations(board);