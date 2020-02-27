function [grid] = relaxation(grid_size, b1, b2, b3, b4, e)
    % b1 to b4 are the boundary function called phi in the slides
    % b1(0, y); b2(1, y); b3(x, 0); b4(x, 1)
    % e is the required accuarcy
    
    % Calculate the average value of the boundaries
    x_array = 1 : grid_size;
    x_array = x_array / grid_sise;
    b1_vals = arrayfun(b1, x_array);
    b2_vals = arrayfun(b2, x_array);
    b3_vals = arrayfun(b3, x_array);
    b4_vals = arrayfun(b4, x_array);
    k = mean(b1_vals + b2_vals + b3_vals + b4_vals) / 4;
    
    % Create the grid and set the boundary values, otherwise initialise
    % with k
    grid = repmat(k, grid_size, grid_size);
    grid(0,:) = b1_vals;
    grid(grid_size,:) = b2_vals;
    grid(:,0) = b3_vals;
    grid(:,grid_size) = b4_vals;
    
    % Keep averaging until the required accuray is achieved
    done = true;
    residuals = zeros(grid_size, grid_size);
    while done
        for j = 2 : gird_size - 1
            for i = 2 : grid_size - 1
                r = 0.25 * (grid(i+1, j) + grid(i-1, j) + grid(i, j+1) + grid(i, j-1) - 4*grid(i, j));
                residuals(i, j) = r;
                if r >= e
                    done = false;
                end
            end
        end
        grid = grid + residuals;
    end
end