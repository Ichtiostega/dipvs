clc;
%1:5
%[1 2; 3 4]
%1:0.1:5
%zeros(3,5)
%ones(3,5)
%[1 2; 3 4]*[5 6; 7 8]
%a = [1 2; 3 4].*[5 6; 7 8]
%a(2, 1:2)
%a(1, [2, 1])
%subplot(2,1,1)
%plot(0:0.1:10, sin(0:0.1:10))
%subplot(2,1,2)
%plot(0:0.1:10, cos(0:0.1:10))
%hold on
%plot(0:0.1:10, tan(0:0.1:10))

lb = "lena.bmp"
lj = "lena.jpg"
lg = "gray_lena.bmp"

imfinfo(lb)
imfinfo(lj)

%% read

im = imread(lb);

%% show
figure(1);
imshow(im);

%% to greyscale
figure(2);
gim = rgb2gray(im);
imshow(gim);

%% save
imwrite(gim, lg);
imfinfo(lg)

%% to mesh
figure(3);
lm = double(gim);
mesh(lm);

%% slice
figure(4);
plot(lm(10, :));

%% slice along column

figure(5);
plot(lm(:, 10));

%% create indexed

figure(6);
[imi, cmap] = gray2ind(gim, 256);
imshow(imi, cmap);
figure(7);
n_cmap = colormap(summer);
imshow(imi, n_cmap);




