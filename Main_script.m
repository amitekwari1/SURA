A=double(imread('baloon2.jpg'));
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
[W,H]=initWH(T,100,1,10);
%W(:,1)=reshape(A(1:64,1:64,:),64*64*3,1);
[C,D]=nmf(T,W,H,1e-5,1000,400);
Tf=C*D;
[C,D]=reducedBasis(C,D,10);
size(C)
size(D)
U=showW(C);
figure(1)
imagesc(U);
pause;
Hq=quantize(D);
width= (w-sq)/st +1;
%flag=detectsimilar2(Hq,5,6,3,width);
%flag=n2hamming(Hq,5);
flag=unquantizedChecker(D,5,3,0.05,width);
flag
M=markdown(A,flag,64,32);
%recreate(T matrix,square size,step size,height,width);
Af=recreate(Tf,sq,st,h,w);
figure()
imagesc(M);
pause;
figure()
imagesc(Af);