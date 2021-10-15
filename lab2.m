%% Reload
close all, clc
load('functionsLUT.mat')
luts(:, :, 1) = log;
luts(:, :, 2) = square;
luts(:, :, 3) = invlog;
luts(:, :, 4) = inverse;
luts(:, :, 5) = squareroot;
luts(:, :, 6) = saw;
luts(:, :, 7) = exponential;
%% Plot of square
figure(1)
plot(square)
%% image load
im = imread("jet.bmp")
figure(2)
imshow(im)
%% first lut
im_square = intlut(im, square)
figure(3)
imshow(im_square)
%% fun check
i = 4;
for r = 1:7
    figure(4+r);
    lut(im, luts(:, :, r));
end
%% 
