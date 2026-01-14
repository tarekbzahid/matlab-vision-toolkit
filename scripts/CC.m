function CC
ctr=rgb2gray(imread('../images/A.png')); %control image
s1=rgb2gray(imread('../images/abc.png'));
% s2=rgb2gray(imread('c2.jpg'));
% s4=rgb2gray(imread('c4.jpg'));
% s3=rgb2gray(imread('c3.jpg'));
% s5=rgb2gray(imread('c5.jpg'));
% s6=rgb2gray(imread('c6.jpg'));
% s7=rgb2gray(imread('c7.jpg'));

ctrvec=reshape(ctr,1,[]); %converting into 1xN arrays
s1vec=reshape(s1,1,[]);
% s2vec=reshape(s2,1,[]);
% s3vec=reshape(s3,1,[]);
% s4vec=reshape(s4,1,[]);
% s5vec=reshape(s5,1,[]);
% s6vec=reshape(s6,1,[]);
% s7vec=reshape(s7,1,[]);

[XCF,lags]=crosscorr(ctrvec,s1vec,5000);
plot(lags,XCF);
ylabel('XC function');
xlabel('lags');





end

