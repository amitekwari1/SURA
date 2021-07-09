function F=sortOnBin2(H,width,st)
    r=size(H,1);
    id=zeros(2,size(H,2));
    for i=1:size(H,2)
        id(1,i)=st*floor((i-1)/width)+1;
        id(2,i)=st*mod((i-1),width)+1;
    end
    H=[H;id];
    H=H';
    fprintf('Done marking H \n');
    for i=r:-1:1
        H=sortrows(H,i);
    end
    F=H;
    fprintf('Binary sorted H \n');
end