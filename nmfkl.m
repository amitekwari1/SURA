function [w,h] = nmfkl(Wi,Hi,X,th,countth)
    w = Wi;
    h = Hi;
    count = 0;
    while KLdiv(w,h,X) > th && count <= countth
       count = count +1;
       wtemp = w;
       htemp = h;
       A = w*h;
       %updating w
       for i = 1:size(w,1) %m 
           for j = 1:size(w,2)%r
               sumNr = 0;
               sumDr = 0;
               for k = 1:size(X,2) %n
                   if(A(i,k) ~= 0 )
                      sumNr = sumNr + htemp(j,k)*X(i,k)/A(i,k); 
                   end
                   sumDr = sumDr + htemp(j,k);
               end
               if(sumDr ~= 0)
                    w(i,j) = w(i,j)*sumNr/sumDr;
               end
           end
           
       end
       %updating h
       for i=1:size(h,1) %r
           for j=1:size(h,2) %n
                sumNr = 0;
                sumDr = 0;
                for k = 1:size(X,1)%m
                   if(A(k,j) ~= 0)
                      sumNr = sumNr + wtemp(k,i)*X(k,j)/A(k,j); 
                   end
                   sumDr = sumDr + wtemp(k,i);
                end
                if(sumDr ~= 0)
                    h(i,j) = h(i,j)*sumNr/sumDr;
                end
           end
       end
    end
end