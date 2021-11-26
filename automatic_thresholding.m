function automatic_thresholding(im, manual)
    im_bw = im2bw(im, manual/255);
    im_t = graythresh(im);
    subplot(3,2,1);
    imshow(im);
    title("input");
    subplot(3,2,2);
    imhist(im);
    title("histogram");
    subplot(3,2,3);
    imshow(im_bw);
    title("Manual " + num2str(manual));
    subplot(3,2,4);
    imshow(im2bw(im, im_t));
    title("Otsu " + num2str(im_t*255));
    subplot(3,2,5);
    ck = clusterKittler(im);
    imshow(im2bw(im, ck/255));
    title("Kittler " + num2str(ck));
    subplot(3,2,6);
    ey = entropyYen(im);
    imshow(im2bw(im, ey/255));
    title("Yen " + num2str(ey));
end

