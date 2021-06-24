A=double(imread('baloon2.jpg'));
%pkg load image;
A=A/255;
A=imresize(A,[512,512]);
flag=[1,208;225,99];
markdown2(A,flag,64,32);