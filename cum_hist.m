function [H, cH, x] = cum_hist(im)
    [rH, rx] = imhist(im);
    cum_h = cumsum(rH);
    max_h = max(rH);
    max_ch = max(cum_h);
    k = max_ch / max_h;
    H = rH;
    cH = cum_h/k;
    x = rx;
end

