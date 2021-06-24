function flag=n2hamming(H,th)
n=size(H,2);
r=size(H,1);
flag = zeros(1,n);

for i = 1:n-1
    for j = i+1:n
        diff = 0;
        for k = 1:r
            if H(k,i) ~= H(k,j)
                diff = diff+1;
            end
        end
        if diff <= th
           flag(i) = 1;
           flag(j) = 1;
        end
    end
end
end