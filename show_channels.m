function[] = show_channels(im, fig)
R = im(:,:, 1), G = im(:,:, 2), B = im(:,:, 3);
figure (fig);
subplot (2,2,1), imshow (im), title ('Original');
subplot (2,2,2), imshow (R), title ('Channel 1');
subplot (2,2,3), imshow (G), title ('Channel 2');
subplot (2,2,4), imshow (B), title ('Channel 3');