function M=markdown(A,flag,sq,st)
    M=A;
    w=size(A,2);
    width=(w-sq)/st +1;
    for i=1:size(flag,2)
        if(flag(i)==1)
            o=floor((i-1)/width);
            M((i-o*width-1)*st+1:(i-o*width-1)*st+sq,1+o*st:o*st+sq,:)=0;
        end
    end
end