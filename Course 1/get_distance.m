function distance=get_distance(b,c)
    distance=-1;
    [~,~,all]=xlsread('Distances.xlsx');
    for i=2:size(all,1)
        for j=2:size(all,2)
            if strcmpi(b,all{i,1}) && strcmpi(c,all{1,j})
                distance=all{i,j};
                break
            end
        end
    end
end