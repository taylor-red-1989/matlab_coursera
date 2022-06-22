function x = my_flip(v)
    arr = v;
    x = reveresearray(arr, 1, length(v));
end

function y = reveresearray(arr, start, last)
    if (start >= last) 
        y = arr; 
    else
        temp = arr(start);
        arr(start) = arr(last); 
        arr(last) = temp;
        y = reveresearray(arr, start + 1, last - 1);
    end
end