%% loads
close all, clc;
lena1 = imread("lena1.bmp");
lena2 = imread("lena2.bmp");
lena3 = imread("lena3.bmp");
lena4 = imread("lena4.bmp");
hist1 = imread("hist1.bmp");
hist2 = imread("hist2.bmp");
hist3 = imread("hist3.bmp");
hist4 = imread("hist4.bmp");
%% lena hist
figure(1);
subplot(2,4,1);
imshow(lena1);
subplot(2,4,2);
imshow(lena2);
subplot(2,4,3);
imshow(lena3);
subplot(2,4,4);
imshow(lena4);
subplot(2,4,5);
imhist(lena1, 256);
subplot(2,4,6);
imhist(lena2, 256);
subplot(2,4,7);
imhist(lena3, 256);
subplot(2,4,8);
imhist(lena4, 256);
%% hist1
figure(2);
show_w_hist(hist1);
%% imadjust
hist1adj = imadjust(hist1);
figure(3);
show_w_hist(hist1adj);
%% eq
[H, cH, x] = cum_hist(hist1);
figure(4);
plot(x, H);
hold on
plot(x, cH);
hold off
lut = 255 * cH / (max(cH));
figure(5);
plot(x, lut);
LUT = uint8(lut);
hist1_eq = intlut(hist1, LUT);
figure(6);
show_w_hist(hist1_eq);
%% Test histeqs
heq = histeq(hist1);
aheq = adapthisteq(hist1);
figure(7);
show_w_hist(heq);
figure(8);
show_w_hist(aheq);
%% histogram ops tests
figure(9);
all_hist_mods(hist1);
figure(10);
all_hist_mods(hist3);
figure(11);
all_hist_mods(hist4);
figure(12);
all_hist_mods(hist2);