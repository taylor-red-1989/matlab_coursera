function matrix=sparse2matrix(c)
    tmat=c{1,2}*ones(c{1,1});
    for i=3:length(c)
        tmat(c{1,i}(1),c{1,i}(2))=c{1,i}(3);
    end
    matrix=tmat;
end