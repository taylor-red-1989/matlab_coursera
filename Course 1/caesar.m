function coded = caesar(M, N)
    num = double(M);
    num2 = num;
    for i = 1:length(num)  
        if  num(i) + N < 32
            num2(i) = 126 - (31- num(i) - N);
        else
            if num(i) + N > 126
                num2(i) = 32 + (num(i) + N -127);
            else 
                num2(i) = num(i) + N ;
            end
        end
    coded = char(num2);
    end
end