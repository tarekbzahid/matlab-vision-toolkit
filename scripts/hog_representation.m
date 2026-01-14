img=imread('1.jpg');
[featureVector, hogVisualization] = extractHOGFeatures(img);
figure;
imshow(img); hold on;
plot(hogVisualization);