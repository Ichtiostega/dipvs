%% load
close all; clc;
squares = imread('squares.bmp');
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
squares_comb = (C1.^2 + C2.^2)^(1/2);
imshow(squares_comb, []);