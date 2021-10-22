%% loads
close all, clc;
phobos = imread("phobos.bmp");
figure(1);
all_hist_mods(phobos);
%% matching
load("desiredHistogram.mat");
figure(2);
plot(desiredHistogram);
peq = histeq(phobos, desiredHistogram);
figure(3);
subplot(1,2,1)
imshow(peq);
subplot(1,2,2)
imhist(peq);
