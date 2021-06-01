function centroids = computeCentroids(X, idx, K)
%this finds new centroids given X and idx
[m n] = size(X);
centroids = zeros(K, n);
divisors=zeros(K, 1);
for i=1:m
  centroids(idx(i),:)=centroids(idx(i),:)+X(i,:);
  divisors(idx(i))=divisors(idx(i))+1;
endfor

centroids= centroids./divisors;
end

