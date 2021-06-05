function idx = findClosestCentroids(X, centroids)
% finds a vector idx where idx[i] represent the index of centroid X[i] is closest to
idx = zeros(1,size(X,2));
for i=1:size(X,2)
  [m,ind]= min(sum((centroids -X(:,i)).^2,1));
  idx(i)=ind;
end
end

