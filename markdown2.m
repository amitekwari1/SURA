function M=markdown2(A,flag,sq,st)
    M=A;
    w=size(A,2);
    width=(w-sq)/st +1;
    k=size(flag,2);
    for i=1:size(flag,2)
       o1=floor((flag(1,i)-1)/width);
       h1=mod(flag(1,i)-1,width);
       o2=floor((flag(2,i)-1)/width);
       h2=mod(flag(2,i)-1,width);
       M(o1*st+1:o1*st+sq,h1*st+1:h1*st+sq,:)=i/k;
       M(o2*st+1:o2*st+sq,h2*st+1:h2*st+sq,:)=i/k;
       figure()
       imagesc(M);
       pause;
       close()
       M=A;
    end
end