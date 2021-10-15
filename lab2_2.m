%% reload
close all, clc
jet = imread("jet.bmp");
lena = imread("lena.bmp");
circle = imread("circle.bmp");
%% imadd
jena = imadd(jet, lena, "uint16");
figure(1)
imshow(jena, [])
%% imlincomb
proportions(:, 1) = [0.2 0.8];
proportions(:, 2) = [0.5 0.5];
proportions(:, 3) = [0.7 0.3];
figure(2)
for i = 1:3
   subplot(1,3,i)
   imshow(imlincomb(proportions(1, i),jet,proportions(2, i),lena));
end
%% subtract
f16 = int16(jet);
lena16 = int16(lena);
figure(3)
imshow(imsubtract(f16, lena16), [])
figure(4)
imshow(imabsdiff(jet, lena))
%% Multiplication
figure(5)
imshow(immultiply(lena, 0.5))
figure(6)
imshow(immultiply(lena, boolean(circle)))
%% Negation
figure(7)
imshow(imcomplement(jet))