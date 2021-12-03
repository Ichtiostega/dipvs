function [tmp] = mean_bin(im, w)
    tmp = im;
    [X, Y] = size(im);
    for i = 1:X
       for j = 1:Y
           if im(i, j) > meanLT(i, j, w, im, X, Y) 
               tmp(i, j) = 255;
           else
               tmp(i, j) = 0;
           end
       end
    end
end

