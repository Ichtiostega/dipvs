function laplace_norm(og, mask)
    og_lap = conv2(og, mask, 'same');
    og_lap_128 = og_lap+128;
    og_lap_abs = abs(og_lap);
    og_lap_128 = uint8(og_lap_128);
    og_lap_abs = uint8(og_lap_abs);
    subplot(1,5,1);
    imshow(og, []);
    subplot(1,5,2);
    imshow(og_lap_128, []);
    subplot(1,5,3);
    imshow(og_lap_abs, []);
    subplot(1,5,4);
    imshow(og + og_lap_abs, []);
    subplot(1,5,5);
    imshow(og - og_lap_abs, []);
end

