function avg_sizes(og)
subplot(1,5,1);
mask = fspecial('average', 3);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
subplot(1,5,2);
mask = fspecial('average', 5);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
subplot(1,5,3);
mask = fspecial('average', 9);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
subplot(1,5,4);
mask = fspecial('average', 15);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
subplot(1,5,5);
mask = fspecial('average', 35);
board_avg = conv2(og, mask, 'same');
board_avg = uint8(board_avg);
imshow(board_avg);
end

