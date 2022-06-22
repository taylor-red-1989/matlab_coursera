function [mmr,mmm]=minimax(M)
    N=M';
    mmr=max(N)-min(N);
    mmm=max(max(N))-min(min(N));
end