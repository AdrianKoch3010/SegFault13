SORval = zeros(1, 99);
n = 1;
for i = 1:0.001:1.999
    
    close all;
    
    % The test script for relaxation and SOR
    
    % Set the boundary function b1, b2, b3, b4
    b1 = @(y) y;
    b2 = @(y) y;
    b3 = @(x) x;
    b4 = @(x) x;
    
    grid_size = 100;
    required_accuracy = 0.000001;
    
    % Calculate the output grid
    figure; 
    
    x = 0:1/grid_size:1-(1/grid_size);
    [grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy, i);
    [X, Y] = meshgrid(x);
    s = surf(X, Y, grid_out);
    s.EdgeColor = 'none';
    colorbar;
    
    SORval(n) = count2;
    n = n + 1;
end

figure
title('Varying relaxation parameter');
xlabel('Relaxation parameter value');
ylabel('Count');
plot(SORval);
