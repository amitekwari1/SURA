function T=rasterscan(A,h,w,sq,st)
    T=zeros(sq*sq*3,((w-sq)/st -1)*((h-sq)/st -1));
    k=1;
    for i=1:st:(h-sq+1)
        for j=1:st:(w-sq+1)
            B=A(i:i+sq-1,j:j+sq-1,:);
            B=reshape(B, sq*sq*3, 1);
            T(:,k)=B;
            k=k+1;
        end
    end
    fprintf('Raster Scam Complete, Total vectors are %d \n',size(T,2));
end