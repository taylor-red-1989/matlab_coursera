function x = voters(varargin)
    if rem(length(varargin),2)==0 || nargin == 0
        return;
    end
    params = varargin(2:2:end);
    values = varargin(3:2:end);
    for i = 1:length(params)
            if ischar(params{i})
                x{i,1} = params{i};
                x{i,2} = values{i};
            else
                return;
            end
    end
end