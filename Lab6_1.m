%% loads
clc; close all;
ertka = imread('ertka.bmp');
face = imread('face.bmp');
%% erode
SE = strel('square', 3);
ertka_er = imerode(ertka, SE);
figure(1);
subplot(1,2,1);
imshow(ertka);
subplot(1,2,2);
imshow(ertka_er);
%% different erodes
figure(2);
subplot(2,2,1);
imshow(ertka);
subplot(2,2,2);
imshow(imerode(ertka, strel('square', 3)));
subplot(2,2,3);
imshow(imerode(ertka, strel('diamond', 3)));
subplot(2,2,4);
imshow(imerode(ertka, strel('disk', 3)));
%% eroeroero
ertka_er = ertka;
figure(3);
subplot(2,2,1);
imshow(ertka);
subplot(2,2,2);
ertka_er = imerode(ertka_er, strel('square', 3));
imshow(ertka_er);
subplot(2,2,3);
ertka_er = imerode(ertka_er, strel('square', 3));
imshow(ertka_er);
subplot(2,2,4);
ertka_er = imerode(ertka_er, strel('square', 3));
imshow(ertka_er);
%% manual ero
SE = [0 0 1; 0 1 0; 1 0 0];
face_er = imerode(face, SE);
figure(3);
subplot(1,2,1);
imshow(face);
subplot(1,2,2);
imshow(face_er);
%% dilate
SE = strel('square', 3);
ertka_dl = imdilate(ertka, SE);
figure(4);
subplot(1,2,1);
imshow(ertka);
subplot(1,2,2);
imshow(ertka_dl);
