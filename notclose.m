function f=notclose(a,b,neighbour,width)
    v1=floor((a-1)/width);
    v2=floor((b-1)/width);
    h1=a-width*v1;
    h2=b-width*v2;
    f=1;
    if((v1-v2)<=neighbour&&(h1-h2)<=neighbour)
        f=0;
    end
end