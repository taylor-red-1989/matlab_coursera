function x = name_value_pairs(varargin)
    if mod(nargin,2) ~= 0 || nargin == 0
        x = {};
    else
        params = varargin(1:2:end);
        values = varargin(2:2:end);
        x = cell(length(params), length(values));
        for i = 1:length(params)
            if ischar(params{i})
                x{i,1} = params{i};
                x{i,2} = values{i};
            else
                x = {};
                break
            end
        end
    end
end