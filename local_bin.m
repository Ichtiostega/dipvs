function new_im = local_bin(im)
    [X, Y] = size(im);
    im_bw = im
    for i = 1:X
       for j = 1:Y
           if im[i;j] < meanLT(i, j, 7, im, 255, 255) im_bw[i;j] = 0, else im_bw[i;j] = 255, end
       end
    end
end

