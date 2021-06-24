function flag=detectsimilar2(Hq,window,threshold,neighbour,width)
    flag=[];
    r=size(Hq,1);
    n=size(Hq,2);
    H=[Hq ; zeros(1,n)];
    for i=1:n
        H(r+1,i)=i;
    end
    H=sortOnBin(H);
    for i=1:n+1-window
        for j=1:window-1
            if(sum(xor(H(1:r,i),H(1:r,i+j)))<threshold)
                if (notclose(H(r+1,i),H(r+1,i+j),neighbour,width)==1)
                    flag=[flag [(H(r+1,i));H(r+1,i+j)]];
                end
            end
        end
    end
    for i=n+2-window:n-1
        for j=i+1:n
            if(sum(xor(H(1:r,i),H(1:r,j)))<threshold)
                if (abs(H(r+1,i)-H(r+1,j))>neighbour)
                    flag=[flag [(H(r+1,i));H(r+1,j)]];
                end
            end
        end
    end
end