function kl = KLdiv(B,C,V)
    kl = 0;
    X = B*C;
    for i=1:size(V,1)
        for j = 2:size(V,2)
            if(X(i,j) ~= 0)
                kl = kl + V(i,j)*log(V(i,j)/X(i,j)) - V(i,j) + X(i,j);
            end    
        end
    end
end