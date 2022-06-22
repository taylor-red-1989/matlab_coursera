function z = grader(varargin)
    z = 1;
    x = varargin{1};
    y = varargin{2};
    for i = 3:length(varargin)
        z = isequal(x(varargin{i}), y(varargin{i}));
    end
end