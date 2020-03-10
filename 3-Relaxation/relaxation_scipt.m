% Set the boundary function b1, b2, b3, b4
b1 = @(y) y;
b2 = @(y) y;
b3 = @(x) x;
b4 = @(x) x;

grid_size = 100;
required_accuracy = 0.001;

% Calculate the output grid
grid_out = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);

% Hold on will plot in 2D
%figure; hold on;
x = 0:1/grid_size:1-(1/grid_size);
[X, Y] = meshgrid(x);
surf(X, Y, grid_out);
colorbar;