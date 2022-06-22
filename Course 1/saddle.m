function indices=saddle(M)
    indices=[];
    [row col]=size(M);
    for i=1:row
        for j=1:col
            temp=1;
            for k=1:col
                if M(i,j)<M(i,k)
                    temp=-1;
                break;
                end
            end
            for l=1:row
                if M(i,j)>M(l,j)
                    temp=-1;
                    break;
                end
            end
        if temp==1
            ntemp=[i j];
            indices=[indices;ntemp];
        end
        end
    end
end