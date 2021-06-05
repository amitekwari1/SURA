A=double(imread('tiger.jpg'));
%pkg load image;
A=A/255;
A=imresize(A,[512,512]);
img_size=size(A);
%rasterscan(image,height,width,square size,step size)
T=rasterscan(A,512,512,64,32);

%initWH(T matrix, user defined 'R',gap while initial centroids(1or2), k means iterations);
[W,H]=initWH(T,100,2,10);

[C,D]=nmf(T,W,H,1e-3,1000,400);
Tf=C*D;
%recreate(T matrix,square size,step size,height,width);
Af=recreate(Tf,64,32,512,512);
F=[Af A];
imagesc(F);