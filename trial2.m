A=double(imread('tiger2.jpg'));
A=A/255;
h=256;
w=256;
A=imresize(A,[h,w]);
I=rgb2gray(A);
figure
imshow(I)
size(I)
sq=16;
st=1;
Q=rasterscanandnmf(I,h,w,sq,st,5);
S=SortBaskets(Q);
flag=detectinBaskets(S,16,1,1,(w-sq)/st +1,Q);
M=shiftvector(flag);
%marktopfiveclust(I,M);
%s IS YOUR REQUIRED MATRIX PARTIK
