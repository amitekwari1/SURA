function C= marktoprclust(M,Count)
    C=cell(r,1);
    V=values(Count);
    V=cell2mat(V);
    [~,ind]=maxk(V,5);
    keySet=keys(Count);
    for i=1:5
        curel=M{keySet{ind(i)}};
        ci=1;
        for j=1:V(ind(i))
            k=0;
            while(k<4)
                str="";
                if(curel(ci)==" ")
                    ci=ci+1;
                else
                   while(curel(ci)~=" ")
                       str=str+curel(ci);
                       ci=ci+1;
                   end
                   k=k+1;
                end
                C{i}=[C{i};str2double(str)];
            end
        end
    end
end