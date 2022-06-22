function y = voltage(V, R)
    p = 1+ R(1)/R(2) + R(1)/R(7);
    q = -R(1)/R(7);
    s = -R(5)/R(8);
    t = 1+R(5)/R(6)+R(5)/R(8);
    u = -R(3)/R(7);
    v = 1+R(3)/R(7)+R(3)/R(8)+R(3)/R(4);
    w = -R(3)/R(8);
    B = [V;V;V];
    A = [p q 0; 0 s t; u v w];
    y = A\B;
end