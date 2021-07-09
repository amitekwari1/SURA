function M = shiftvector(flag)

    M = containers.Map();
    for i = 1:size(flag,2)
       if (flag(1,i)-flag(3,i)) >= 0
           sv = string ((flag(1,i)-flag(3,i))) + " " + string((flag(2,i) - flag(4,i)));
       else
           sv = string ((flag(3,i)-flag(1,i))) + " " + string((flag(4,i) - flag(2,i)));
       end     
       if(isKey(M,sv))
            M(sv) = M(sv) + string(flag(1,i)) +" " + string(flag(2,i)) + " " + string(flag(3,i)) +" " + string(flag(4,i))+" ";
       else
           M(sv) = string(flag(1,i)) +" " + string(flag(2,i)) + " " + string(flag(3,i)) +" " + string(flag(4,i))+" ";
       end
    end
end
