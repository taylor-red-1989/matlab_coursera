function x = recursive_max(v)
    if length(v) == 1
        x = v(1);
    else
        if v(1)>recursive_max(v(2:length(v)))
            x = v(1);
        else    
            x = recursive_max(v(2:length(v)));
        end
    end
end