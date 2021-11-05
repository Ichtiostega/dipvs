function display_diff(og,mod)
    subplot(1,3,1);
    imshow(og);
    subplot(1,3,2);
    imshow(mod);
    subplot(1,3,3);
    imshow(imabsdiff(og, mod), []);
end

