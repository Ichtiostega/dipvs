function [tmp] = mean_sauvola(im, w, s)
    tmp = im;
    k = 0.15;
    R = 128;
    [X, Y] = size(im);
    for i = 1:X
       for j = 1:Y
           mean = meanLT(i, j, w, im, X, Y);
           if strcmp(s, 'plus')
               sauvola = mean*(1 + k * (stddevLT(i, j, w, im, mean, X, Y)/R - 1));
           else
               sauvola = mean*(1 - k * (stddevLT(i, j, w, im, mean, X, Y)/R - 1));
           end
           if im(i, j) > sauvola 
               tmp(i, j) = 255;
           else
               tmp(i, j) = 0;
           end
       end
    end
end

