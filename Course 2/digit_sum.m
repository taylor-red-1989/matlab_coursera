function x = digit_sum(n)
    if n == 0
        x = 0;
    else
        x = rem(n,10) + digit_sum(fix(n/10));
    end
end