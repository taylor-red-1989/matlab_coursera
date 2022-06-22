function summa=halfsum(M)
    [row col]=size(M);
    total=0;
    for i = 1:row
        for j = 1:col
            if i<=j
                total=total+M(i,j);
            end
        end
    end
    summa=total;
end