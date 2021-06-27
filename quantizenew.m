function Q=quantizenew(H)
    Q=zeros(size(H,1),size(H,2));
    for i=1:size(H,2)-1
        Q(:,i)=(H(:,i)>H(:,i+1));
    end
end