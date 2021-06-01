function idx = findClosestCentroids(X, centroids)
% finds a vector idx where idx[i] represent the index of centroid X[i] is closest to
idx = zeros(size(X,1), 1);
for i=1:size(X,1)
  [m,ind]= min(sum((centroids -X(i,:)).^2,2));
  idx(i)=ind;
endfor
end

