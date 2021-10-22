function show_w_hist(im)
    [H, cH, x] = cum_hist(im);
    subplot(3,1,1);
    imshow(im);
    subplot(3,1,2);
    imhist(im, 256);
    subplot(3,1,3);
    plot(x, cH);
end

