function output=blur(img,w)
    B=double(img);
    [row,col]=size(B);
    k=2*w+1;
    for i=1:row
        for j=1:col
            p=i-w;
            q=i+w;
            r=j-w;
            s=j+w;
            if p<1
                p=1;
            end
            if q>row
                q=row;
            end
            if r<1
                r=1;
            end
            if s>col
                s=col;
            end
            A=B([p:q],[r:s]);
            C(i,j)=mean(A(:));
        end
    end
    output=uint8(C);
end