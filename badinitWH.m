function [W, H]= badinitWH(T,r)

    W=zeros(size(T,1),r);
    for i=1:r
        W(:,i)=T(:,1);
    end
    H=zeros(r,size(T,2));
    for i=1:r
        H(i,i)=1;
    end
    fprintf('Initialised W and H \n');
end
