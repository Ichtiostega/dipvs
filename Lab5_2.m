%% load
close all; clc;
rice = imread('rice.png');
catalogue = imread('catalogue.bmp');
%% local bin
for i = 1:255
   for j = 1:255
       rice[i;j] = meanLT(i, j, 7, rice, 255, 255);
   end
end
