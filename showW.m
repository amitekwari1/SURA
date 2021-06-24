function U=showW(W)
    s=sqrt(size(W,1)/3);
    U=zeros(floor(size(W,2)*s/10)+1,10*s,3);
    for i=1:size(W,2)
        h= floor((i-1)/10);
        w=mod(i-1,10);
        temp=reshape(W(:,i),s,s,3);
        U(h*s+1:h*s+s,w*s+1:w*s+s,:)=temp;
    end
        
end