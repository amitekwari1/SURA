function centroids = kMeansInitCentroids(X, K)
centroids=zeros(k,size(X,2));
for i=1:K
  centroids(i,:)=X(randi(size(X, 1)),:);
endfor
end
%random initialisation of k centroids

