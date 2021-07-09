function [W, H]= fastinitWH(T,r)
    s=floor(size(T,2)/r);
    W=zeros(size(T,2),r);
    for i=1:r
        W(:,i)=T(:,1+s*(i-1));
    end
    H=zeros(r,size(T,2));
    for i=1:r
        H(i,1+s*(i-1))=1;
    end
    fprintf('Initialised W and H \n');
end