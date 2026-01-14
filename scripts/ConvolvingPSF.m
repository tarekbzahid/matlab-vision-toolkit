img=imread('BvS.png');
figure,imshow(img); 
title('initial image')
img_blur = imgaussfilt(gn,5) ;
subplot(1,2,1)
imshow(gn)
imshow(img_blur)
title('PSF applied')
