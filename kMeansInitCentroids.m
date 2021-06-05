function centroids = kMeansInitCentroids(X, K)
for i=1:K
  centroids(i,:)=X(randi(size(X, 1)),:);
endfor
end
%random initialisation of k centroids

