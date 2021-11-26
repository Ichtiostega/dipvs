%% load
close all; clc;
%squares = imread('squares.bmp');
squares = imread('jet.bmp');
load('masks');
%% Roberts
figure(1);
laplace_norm(squares, R1);
figure(2);
laplace_norm(squares, R2);
%% Prewitt
figure(3);
laplace_norm(squares, P1);
figure(4);
laplace_norm(squares, P2);
%% Sobel
figure(5);
laplace_norm(squares, S1);
figure(6);
laplace_norm(squares, S2);
%% combined filter
C1 = conv2(squares, S1, 'same');
C2 = conv2(squares, S2, 'same');
squares_comb = sqrt((C1.^2 + C2.^2));
sum_comb = abs(C1) + abs(C2);
figure(7);
subplot(1,3,1);
imshow(squares);
subplot(1,3,2);
imshow(squares_comb, []);
subplot(1,3,3);
imshow(sum_comb, []);
