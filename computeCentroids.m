function centroids = computeCentroids(X, idx, K)
%this finds new centroids given X and idx
[n,m] = size(X);
centroids = zeros(n, K);
divisors=zeros(1, K);
for i=1:m
  centroids(:,idx(i))=centroids(:,idx(i))+X(:,i);
  divisors(idx(i))=divisors(idx(i))+1;
end

centroids= centroids./divisors;
end

