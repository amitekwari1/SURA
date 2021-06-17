function F=sortOnBin(H)
    r=size(H,1)-1;
    H=H';
    for i=1:r
        H=sortrows(H,i);
    end
    F=H';
end