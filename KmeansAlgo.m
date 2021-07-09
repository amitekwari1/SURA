function centroids=KmeansAlgo(X,k,iter)
    s=floor(size(X,2)/k);
    centroids=zeros(size(X,1),k);
    for i=1:k
        centroids(:,i)=X(:,1+s*(i-1));
    end
    for i=1:iter
        fprintf('Running %d iteration of k means\n', i);
        idx=findClosestCentroids(X,centroids);
        centroids=computeCentroids(X,idx,k);
    end
end