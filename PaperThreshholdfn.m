function flag = PaperThreshholdfn(Q,ngb,t)
    flag = [];
    n = size(Q,1);
    r = size(Q,2)-2;
    for i =1:n
        for j = 1:t
            if((i+j)<=n&&sum(xor(Q(i,1:r),Q(i+j,1:r)))<= t && abs(Q(i,r+1) - Q(i+j,r+1))>ngb  && abs(Q(i,r+2) - Q(i+j,r+2))>ngb)
                A = zeros(4,1);
                A(1) = Q(i,r+1);
                A(2) = Q(i,r+2);
                A(3) = Q(i+j,r+1);
                A(4) = Q(i+j,r+2);
                flag = [flag,A];
            end
        end
    end
end