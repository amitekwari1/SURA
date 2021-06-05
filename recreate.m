function im=recreate(T,sq,st,h,w)
    im=zeros(h,w,3);
    k=sq/st;
    l=(w-sq)/st +1;
    a=h/sq;
    b=w/sq;
    for o=1:a
        for c=1:b
            V=T(:,(o-1)*(l)*k + k*(c-1)+1);
            V=reshape(V,sq,sq,3);
            im((o-1)*sq+1:o*sq,(c-1)*sq+1:c*sq,:)=V;
        end
    end
end