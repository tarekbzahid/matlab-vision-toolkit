A=imread('AAA.jpg');
A = rgb2gray(A);
corners = detectSURFFeatures(A);
imshow(A); hold on;
plot(corners.selectStrongest(20));
