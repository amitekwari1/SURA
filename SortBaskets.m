function S=SortBaskets(H)
    r=size(H,1);
    S=cell(r,1);
    % y co ordinate id(1,i)=st*floor((i-1)/width)+1;
    % x co ordinate id(2,i)=st*mod((i-1),width)+1;
    for i=1:size(H,2)
        S{r-sum(H(:,i))}=[S{r-sum(H(:,i))};i];
    end
    fprintf('Sorted in total %d baskets \n',r);
end