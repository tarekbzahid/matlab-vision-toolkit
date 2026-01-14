BW = imread('3.jpg');

s = regionprops(BW,'filledimage');

%centroids = cat(1, s.Centroid);

imshow(s);
hold on
plot(centroids(:,1),centroids(:,2), 'b*')
hold off