function H=quantize(D)
    H=D>(sum(D)/size(D,1));
end