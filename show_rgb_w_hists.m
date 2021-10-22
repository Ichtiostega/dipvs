function show_rgb_w_hists(im)
    subplot(2,3,(1:3));
    imshow(im);
    subplot(2,3,4);
    imhist(im(:,:,1));
    subplot(2,3,5);
    imhist(im(:,:,2));
    subplot(2,3,6);
    imhist(im(:,:,3));
end

