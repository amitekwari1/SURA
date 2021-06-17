A=double(imread('tiger.jpg'));
%pkg load image;
A=A/255;
A=imresize(A,[512,512]);
img_size=size(A);
sq=64; % considering 64*64 blocks
st=32; %moving 32 blocks at a time
h=img_size(1);
w=img_size(2);
%%rasterscan(image,height,width,square size,step size)
T=rasterscan(A,h,w,sq,st);

%%initWH(T matrix, user defined 'R',gap while initial centroids(1or2), k means iterations);
[W,H]=initWH(T,150,1,5);
[C,D]=nmf(T,W,H,1e-3,1000,400);
Tf=C*D;
Hq=quantize(D);
width= (w-sq)/st +1;
flag=detectsimilar(Hq,5,5,3,width);
C=markdown(A,flag,64,32);
%recreate(T matrix,square size,step size,height,width);
%Af=recreate(Tf,sq,st,h,w);
imagesc(C);