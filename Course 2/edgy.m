function output_image = edgy(input_image)
    input_image = double(input_image);
    filtered_image = zeros(size(input_image));
    output_image = zeros(size(input_image)-2);
    Mx = [-1 0 1; -2 0 2; -1 0 1]; 
    My = [-1 -2 -1; 0 0 0; 1 2 1];
    for i = 1:size(filtered_image, 1) - 2
        for j = 1:size(filtered_image, 2) - 2
            Gx = sum(sum(Mx.*input_image(i:i+2, j:j+2))); 
            Gy = sum(sum(My.*input_image(i:i+2, j:j+2))); 
            filtered_image(i+1, j+1) = sqrt(Gx.^2 + Gy.^2); 
        end
    end
    for i = 2:size(filtered_image, 1)-1
        for j = 2:size(filtered_image, 2)-1
            output_image(i-1, j-1) = filtered_image(i , j);
        end
    end
    output_image = uint8(output_image); 
end