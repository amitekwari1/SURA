function M=marksim(A,C,sq)
    M=A;
    r=size(C,1);
    for i=1:r
        for j=1:4:size(C{i})-3
            M(C{i}(j+1):C{i}(j+1)+sq-1,C{i}(j):C{i}(j)+sq-1)=0;
            M(C{i}(j+3):C{i}(j+3)+sq-1,C{i}(j+2):C{i}(j+2)+sq-1)=0;
        end
        figure()
        imagesc(M);
        pause;
        close()
        M=A;
    end
end