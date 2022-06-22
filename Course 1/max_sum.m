function [summa,index]=max_sum(v,n)
    if n>length(v)
        summa=0;
        index=-1;
    else
        w=[];
        for i = 1:(length(v)-n+1)
            total=0;
            for j=i:(i+n-1)
                total=total+v(j);
            end
         w=[w total];    
        end
        summa=max(w);
        new=find(w==max(w));
        index=new(1);
    end
end