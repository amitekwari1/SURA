function T=rasterscanandnmf(A,h,w,sq,st,r)
    T=zeros(sq*r,((w-sq)/st +1)*((h-sq)/st +1));
    k=1;
    for i=1:st:(h-sq+1)
        for j=1:st:(w-sq+1)
            B=A(i:i+sq-1,j:j+sq-1,:);
            [W, H]=fastinitWH(B,r);
            [~,H]=nmf(B,W,H,1e-3,10,100);
            Q=quantizenew(H);
            Q=reshape(Q',sq*r, 1);
            T(:,k)=Q;
            k=k+1;
        end
    end
    fprintf('Raster Scam Complete, Total vectors are %d \n',size(T,2));
end