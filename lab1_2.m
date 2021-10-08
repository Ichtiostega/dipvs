clc;
lb = "lena.bmp";
lena = imread(lb);

show_channels(lena, 1);

hsv_lena = rgb2hsv(lena);
show_channels(hsv_lena, 2);

ycbcr_lena = rgb2ycbcr(lena);
show_channels(ycbcr_lena, 3);

lab_lena = rgb2lab(lena);
show_channels(lab_lena, 4);