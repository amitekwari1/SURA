function flag = detectinBaskets(S,ngb,tb,thresh,width,Q)
    m=size(S,1);
    flag=[];
    for i=1:m
        fprintf('Marking pairs from %d basket \n',i);

        for j=1:size(S{i},1)
            y1=floor((S{i}(j)-1)/width)+1;
            x1=mod((S{i}(j)-1),width)+1;
           for k=j+1:size(S{i},1)
               y2=floor((S{i}(k)-1)/width)+1;
               x2=mod((S{i}(k)-1),width)+1;
               if(abs(y1-y2)>ngb&&abs(x1-x2)>ngb)
                   if(sum(xor(Q(:,S{i}(j)),Q(:,S{i}(k))))<=thresh)
                       flag=[[x1;y1;x2;y2],flag];
                   end
               end
           end
           for k=i+1:i+tb
               if(k<=m)
                   for t=1:size(S{k},1)
                       y2=floor((S{k}(t)-1)/width)+1;
                       x2=mod((S{k}(t)-1),width)+1;
                       if(abs(y1-y2)>ngb&&abs(x1-x2)>ngb)
                            if(sum(xor(Q(:,S{i}(j)),Q(:,S{k}(t))))<=thresh)
                                flag=[[x1;y1;x2;y2],flag];
                            end
                        end
                   end
               end
           end
        end
    end
    fprintf('Marking Flag Complete total %d pairs flagged \n',size(flag,2));
end