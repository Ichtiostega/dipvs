function basic_morph(im)
    %% erode
    SE = strel('square', 3);
    im_er = imerode(im, SE);
    figure(1);
    subplot(1,2,1);
    imshow(im);
    subplot(1,2,2);
    imshow(im_er);
    %% different erodes
    figure(2);
    subplot(2,2,1);
    imshow(im);
    subplot(2,2,2);
    imshow(imerode(im, strel('square', 3)));
    subplot(2,2,3);
    imshow(imerode(im, strel('diamond', 3)));
    subplot(2,2,4);
    imshow(imerode(im, strel('disk', 3)));
    %% eroeroero
    im_er = im;
    figure(3);
    subplot(2,2,1);
    imshow(im);
    subplot(2,2,2);
    im_er = imerode(im_er, strel('square', 3));
    imshow(im_er);
    subplot(2,2,3);
    im_er = imerode(im_er, strel('square', 3));
    imshow(im_er);
    subplot(2,2,4);
    im_er = imerode(im_er, strel('square', 3));
    imshow(im_er);
    %% dilate
    SE = strel('square', 3);
    im_dl = imdilate(im, SE);
    figure(5);
    subplot(1,2,1);
    imshow(im);
    subplot(1,2,2);
    imshow(im_dl);
    %% multi
    figure(6);
    subplot(1,5,1);
    imshow(im);
    subplot(1,5,2);
    im_er = imerode(im, strel('square', 3));
    imshow(im_er);
    subplot(1,5,3);
    im_er = imdilate(im, strel('square', 3));
    imshow(im_er);
    subplot(1,5,4);
    im_er = imopen(im, strel('square', 3));
    imshow(im_er);
    subplot(1,5,5);
    im_er = imclose(im, strel('square', 3));
    imshow(im_er);
end

