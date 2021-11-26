%% load
close all; clc;
coins = imread('coins.png');
s1 = imread('shape1.png');
s2 = imread('shape2.png');
s3 = imread('shape3.png');
s4 = imread('shape4.png');
rice = imread('rice.png');
text = imread('text.bmp');
objects = imread('objects.bmp');
catalogue = imread('catalogue.bmp');
%% display
figure(1);
subplot(1,2,1);
imshow(coins);
subplot(1,2,2);
imhist(coins);
%% first bin
coins_bw = im2bw(coins, 80/255);
figure(2);
imshow(coins_bw);
%% shapes
figure(3);
subplot(1,4,1);
imshow(s1);
subplot(1,4,2);
imshow(s2);
subplot(1,4,3);
imshow(s3);
subplot(1,4,4);
imshow(s4);
figure(4);
subplot(1,4,1);
imhist(s1);
subplot(1,4,2);
imhist(s2);
subplot(1,4,3);
imhist(s3);
subplot(1,4,4);
imhist(s4);
%% otsu kittler yen manual
figure(5);
automatic_thresholding(coins, 80);
%% test for other
figure(6);
automatic_thresholding(rice, 150);
figure(7);
automatic_thresholding(text, 160);
figure(8);
automatic_thresholding(objects, 170);
figure(9);
automatic_thresholding(catalogue, 170);
