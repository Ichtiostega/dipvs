function [outputArg1,outputArg2] = gauss_deviations(og)
subplot(1,3,1);
mask = fspecial('gaussian', 5, 0.1);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
subplot(1,3,2);
mask = fspecial('gaussian', 5, 0.5);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
subplot(1,3,3);
mask = fspecial('gaussian', 5, 0.9);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
end

