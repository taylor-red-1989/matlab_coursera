function [f]=taxi_fare(d,t)
    a=ceil(d);
    b=ceil(t);
    f=5+((a-1)*2)+(b*0.25);
end