ctr=rgb2gray(imread('1.jpg')); %control image
s1=rgb2gray(imread('2.jpg'));


%ctrvec=reshape(ctr,[],[]); %converting into 1xN arrays
%s1vec=reshape(s1,[],[]);
%s2vec=reshape(s2,1,[]);
%s3vec=reshape(s3,1,[]);
%s4vec=reshape(s4,1,[]);

C = normxcorr2(ctr, s1);
surf(C);