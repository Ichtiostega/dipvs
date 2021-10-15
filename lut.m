function lut(image,reencoding)
    subplot(2,2,1:2)
    plot(reencoding)
    title("Lookup Table")
    subplot(2,2,3)
    imshow(image)
    title("Original")
    subplot(2,2,4)
    imshow(intlut(image, reencoding))
    title("Output")
end

