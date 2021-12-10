%% loads
clc; close all;
ertka = imread('ertka.bmp');
circles = imread('circles.bmp');
island = imread('island.bmp');
face = imread('face.bmp');
hom = imread('hom.bmp');
%% face
SE = [0 0 1; 0 1 0; 1 0 0];
face_er = imerode(face, SE);
figure(4);
subplot(1,2,1);
imshow(face);
subplot(1,2,2);
imshow(face_er);
%% ertka
basic_morph(ertka);
%% circles
basic_morph(circles);
%% island
basic_morph(island);
%% mini_task
n_ertka = imopen(ertka, strel('square', 3));
n_ertka = imclose(n_ertka, strel('square', 3));
imshow(n_ertka);
%% hitmiss
S1 = [0 1 0; 1 1 1; 0 1 0];
S2 = (S1 - 1) * (-1);
figure(10);
subplot(1,2,1);
imshow(hom);
subplot(1,2,2);
imshow(bwhitmiss(hom, S1, S2));