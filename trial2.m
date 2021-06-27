A=double(imread('baloon2.jpg'));
A=A/255;
A=imresize(A,[512,512]);
I=rgb2gray(A);
figure
imshow(I)
size(I)
T=rasterscanandnmf(I,512,512,16,1,5);
S=sortOnBin2(T,497);
size(S);
%pkg load image;
