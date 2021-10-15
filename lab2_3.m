%% reload
close all, clc
square = boolean(imread("square.bmp"));
circle = boolean(imread("circle.bmp"));
%% show
figure(1)
imshow(square)
figure(2)
imshow(circle)
%% booleans
figure(3)
imshow(~circle)
figure(4)
imshow(square & circle)
figure(5)
imshow(square | circle)
figure(6)
imshow(xor(square, circle))