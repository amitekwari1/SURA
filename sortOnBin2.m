function F=sortOnBin2(H,width)
    r=size(H,1);
    id=zeros(2,size(H,2));
    for i=1:size(H,2)
        id(1,i)=floor((i-1)/width)+1;
        id(2,i)=mod((i-1),width)+1;
    end
    H=[H;id];
    H=H';
    for i=r:-1:1
        H=sortrows(H,i);
    end
    F=H;
end