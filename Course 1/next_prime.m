function k=next_prime(n)
    c=n+1;
    i=1;
    while i~=0
        if isprime(c)==1
            i=0;
            k=c;
        else
            c=c+1;
        end
end