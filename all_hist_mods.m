function all_hist_mods(im)
    subplot(2,2,1);
    imshow(im);
    subplot(2,2,2);
    imshow(imadjust(im));
    subplot(2,2,3);
    imshow(histeq(im));
    subplot(2,2,4);
    imshow(adapthisteq(im));
end

