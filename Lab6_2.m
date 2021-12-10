%% loads
clc; close all;
print = imread("fingerprint.bmp");
bone = imread("bone.bmp");
text = imread("text.bmp");
f = 1;
%% thin
figure(f);
f = f + 1;
subplot(2,2,1);
imshow(print);
subplot(2,2,2);
imshow(bwmorph(print, 'thin'));
subplot(2,2,3);
imshow(bwmorph(print, 'thin', 1));
subplot(2,2,4);
imshow(bwmorph(print, 'thin', 'inf'));
%% spooky scary skeletons
figure(f);
f = f + 1;
subplot(1,2,1);
imshow(bone);
subplot(1,2,2);
imshow(bwmorph(bone, 'skel', 'inf'));
%% open rec
SE = ones(51, 1);
text_o = imopen(text, SE);
text_r = imreconstruct(text_o, text);
figure(f);
f = f + 1;
subplot(1,3,1);
imshow(text);
subplot(1,3,2);
imshow(text_o);
subplot(1,3,3);
imshow(text_r);
%% fill holes
figure(f);
f = f + 1;
subplot(1,2,1);
imshow(text);
subplot(1,2,2);
imshow(imfill(text, 'holes'));
%% clear border
figure(f);
f = f + 1;
subplot(1,2,1);
imshow(text);
subplot(1,2,2);
imshow(imclearborder(text));
