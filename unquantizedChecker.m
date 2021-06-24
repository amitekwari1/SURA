function flag = unquantizedChecker(H,th,ngb,elemth,width)
        flag = zeros(1,size(H,2)); 
        flag
        for i = 1:size(H,2)-1
           for j = i+1:size(H,2)
                temp = 0;
                for k = 1:size(H,1)
                   if (abs(H(k,i)-H(k,j))>=elemth)
                       temp = temp+1;
                   end
                end
                if(temp<th&& notclose(i,j,ngb,width)) 
                    flag(i) = 1;
                    flag(j) = 1;
                end 
           end  
        end
end