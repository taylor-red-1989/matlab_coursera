function x = fibor(n)
    if n <= 2
        x = ones(1,n);
    else
        x = fibor(n-1);
        x = [x x(end-1)+x(end)];
    end
end