function M=marksim(A,flag,sq)
    M=A;
    for i=1:size(flag,2)
       y1=flag(2,i);
       x1=flag(1,i);
       y2=flag(4,i);
       x2=flag(3,i);
       M(y1:y1+sq-1,x1:x1+sq-1)=0;
       M(y2:y2+sq-1,x2:x2+sq-1)=0;
       figure()
       imagesc(M);
       pause;
       close()
       M=A;
    end
end