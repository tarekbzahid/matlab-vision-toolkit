nfunc=fspecial('gaussian',10,30);
imgray=rgb2gray(imread('pixelated-eyes.jpg'));
input=im2double(imgray);
output=conv2(input,nfunc);
imshow(input);
figure;
imshow(output);
