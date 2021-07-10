A=double(imread('tiger2.jpg'));
A=A/255;
h=256;
w=256;
A=imresize(A,[h,w]); 
    %Convert RGB image to YCbCr Components.
I = rgb2ycbcr(A);
%I=rgb2ycbcr(A);
I=I(:,:,1);
figure
imshow(I)
sq=16;
st=1;
Q=rasterscanandnmf(I,h,w,sq,st,4);
S=SortBaskets(Q);
flag=detectinBaskets(S,sq,1,1,(w-sq)/st +1,Q);
[M,Count]=shiftvector(flag);
C=marktoprclust(M,Count,60);
marksim(A,C,sq);
%s IS YOUR REQUIRED MATRIX PARTIK
