function [f,trace] = fibo_trace(n,v)
     if n <= 2
        f = 1;
        trace = n;
     else
        [f1, t1] = fibo_trace(n-1);
        [f2, t2] = fibo_trace(n-2);
        f = f1 + f2;
        trace = [n, t2, t1];
     end
end