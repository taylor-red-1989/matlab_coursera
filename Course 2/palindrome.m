function x = palindrome(v)
    if length(v)<=1
        x = true;
    else
        if v(1) == v(end)
            x = palindrome(v(2:end-1));
        else
            x = false;
        end
    end
end