function [grid, count2] = SOR_func(grid_size, b1, b2, b3, b4, e, relaxIn)
    % grid_size is the size of the grid. The grid is a square of size
    % grid_size * grid_size
    % b1 to b4 are the boundary functions called phi in the slides
    % b1(0, y); b2(1, y); b3(x, 0); b4(x, 1)
    % e is the required accuarcy
    
    % Calculate the average value of the boundaries
    x_array = 1 : grid_size;
    x_array = x_array / grid_size;
    b1_vals = arrayfun(b1, x_array);
    b2_vals = arrayfun(b2, x_array);
    b3_vals = arrayfun(b3, x_array);
    b4_vals = arrayfun(b4, x_array);
    k = mean(b1_vals + b2_vals + b3_vals + b4_vals) / 4;
    
    % Create the grid and set the boundary values, otherwise initialise
    % with k
    %grid = repmat(k, grid_size, grid_size);
    grid = zeros(grid_size, grid_size);
    grid(1,:) = b1_vals;
    grid(grid_size,:) = b2_vals;
    grid(:,1) = b3_vals;
    grid(:,grid_size) = b4_vals;
    
    %create relaxation parameter op 
    h = 1/(grid_size + 1);
    %relax = 2 - (pi*h); %optimal?
    %relax = 0.2;
    %relax = 1;
    relax = relaxIn;
    
    count2 = 0;
    % Keep averaging until the required accuray is achieved
    done = false;
    residuals = grid;
    while ~done
        done = true;
        for j = 2 :1: grid_size - 1
            for i = 2 :1: grid_size - 1                
                %r = ((1 - relax) * grid(i, j)) + (0.25 * relax * (grid(i+1, j) + grid(i-1, j) + grid(i, j+1) + grid(i, j-1) - 4*grid(i, j)));
                residuals(i, j) = ((1 - relax) * grid(i, j)) + (0.25 * relax * (grid(i+1, j) + grid(i-1, j) + grid(i, j+1) + grid(i, j-1)));
                r = abs(residuals(i, j)-grid(i,j));
                if r >= e
                    done = false;
                end
                grid(i, j) = residuals(i, j);
            end
        end
        
        count2 = count2 + 1;
    end
    %disp('SOR');
    %disp(count2);
    count2
end
