function [Wnew,Hnew]=reducedBasis(W,H,thresh)
    Wnew=W;
    Hnew=H;
    flags=[];
    for i=1:size(W,2)-1
        for j=i+1:size(W,2)
            if(norm(W(:,i)-W(:,j))<thresh)
                W(:,i)=(W(:,i)+W(:,j))/2;
                H(i,:)=H(i,:)+H(j,:);
                flags=[flags;j];
            end
        end
    end
    Wnew(:,flags)=[];
    Hnew(flags,:)=[];
end