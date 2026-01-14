
I1 = imread('../images/1.jpg');
I2= imread('../images/control.jpg');
A = rgb2gray(I1);
B = rgb2gray(I2);
corners1 = detectSURFFeatures(A);
corners2 = detectSURFFeatures(B);
imshow(A); hold on;
plot(corners1.selectStrongest(20));
figure;
imshow(B); hold on;
plot(corners2.selectStrongest(10));




