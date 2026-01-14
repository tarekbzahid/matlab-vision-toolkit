psf=fspecial('gaussian',10,1);
input=im2double(imread('dog.png'));
output=conv2(input,psf);
imshow(input);
figure(2);
imshow(output);
