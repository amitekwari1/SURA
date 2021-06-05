function [W, H]= initWH(T,r,s,iter)

    W=zeros(size(T,1),r);
    for i=1:r
        W(:,i)=T(:,1+s*(i-1));
    end
    
    for i=1:iter
        fprintf('Running %d iteration of k means\n', i);
        idx=findClosestCentroids(T,W);
        W=computeCentroids(T,idx,r);
    end
    idx=findClosestCentroids(T,W);
    H=zeros(r,size(T,2));
    for i=1:size(T,2)
        H(idx(i),i)=1;
    end
    fprintf('Initialised W and H \n');
end
