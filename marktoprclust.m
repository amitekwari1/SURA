function C= marktoprclust(M,Count,r)
    C=cell(r,1);
    V=values(Count);
    V=cell2mat(V);
    [~,ind]=maxk(V,r);
    keySet=keys(Count);
    for i=1:r
        curel=M(keySet{ind(i)});
        ci=1;
        for j=1:V(ind(i))
            k=0;
            while(k<4)
                str="";
                while(extract(curel,ci)~=" ")
                    str=str+extract(curel,ci);
                    ci=ci+1;
                end
                k=k+1;
                ci=ci+1;
                C{i}=[C{i};str2double(str)];
            end
        end
    end
end