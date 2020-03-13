relaxval = zeros(1, 299);
SORval = zeros(1, 299);

for i = 2:300
    
    close all;
    
    % The test script for relaxation and SOR
    
    % Set the boundary function b1, b2, b3, b4
    b1 = @(y) y;
    b2 = @(y) y;
    b3 = @(x) x;
    b4 = @(x) x;
    
    grid_size = i;
    required_accuracy = 0.000001;
    
    % Calculate the output grid
    [grid_out, count] = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);
    
    figure;
    
    x = 0:1/grid_size:1-(1/grid_size);
    [X, Y] = meshgrid(x);
    s = surf(X, Y, grid_out);
    s.EdgeColor = 'none';
    colorbar;
    
    relaxval(i) = count;
    
    figure; 
    
    x = 0:1/grid_size:1-(1/grid_size);
    [grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy);
    [X, Y] = meshgrid(x);
    s = surf(X, Y, grid_out);
    s.EdgeColor = 'none';
    colorbar;
    
    SORval(i) = count2;
end

figure
hold on
plot(SORval)
plot(relaxval)

