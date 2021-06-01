A=double(imread('tiger.jpg'));
pkg load image;
A=A/255;
A=imresize(A,[512,512]);
img_size=size(A);
%imagesc(A);
%uncomment above line to show image
T=[];
for i=1:32:449
  for j=1:32:449
    B=A(i:i+63,j:j+63,:);
    B=reshape(B, 64*64*3, 1);
    T=[B';T];
  endfor
endfor
%initialise first 100 vectors as centroids
W=T(1:100,:);
max_iter=10

for i=1:max_iter
  idx=findClosestCentroids(T,W);
  W=computeCentroids(T, idx, 100);
endfor
size(W)
%W is the 100 centroids after running k-means 10 times on T