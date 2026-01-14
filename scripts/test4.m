A=imread('A.png');
abc=imread('abc1.png');
A=rgb2gray(A);
abc=rgb2gray(abc);
c = normxcorr2(A,abc);
figure, surf(c), shading flat 
figure;
imshow(abc);
pmatch=length(find(c>.95));
msgbox(sprintf('Number of positive matches: %d',pmatch));