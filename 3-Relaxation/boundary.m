   
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
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);

figure;

x = 0:1/grid_size:1-(1/grid_size);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;

figure; 

x = 0:1/grid_size:1-(1/grid_size);
[grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 1;
b2 = @(y) 1;
b3 = @(x) 0;
b4 = @(x) 0;

% Calculate the output grid
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);

figure;

x = 0:1/grid_size:1-(1/grid_size);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;

figure; 

x = 0:1/grid_size:1-(1/grid_size);
[grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 0;
b2 = @(y) 1;
b3 = @(x) 0;
b4 = @(x) 1;

% Calculate the output grid
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);

figure;

x = 0:1/grid_size:1-(1/grid_size);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;

figure; 

x = 0:1/grid_size:1-(1/grid_size);
[grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 0;
b2 = @(y) 1;
b3 = @(x) 0;
b4 = @(x) 0;

% Calculate the output grid
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);

figure;

x = 0:1/grid_size:1-(1/grid_size);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;

figure; 

x = 0:1/grid_size:1-(1/grid_size);
[grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) y^2;
b2 = @(y) 0.5*y;
b3 = @(x) x^2;
b4 = @(x) 0.5*x;

% Calculate the output grid
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b3, required_accuracy);

figure;

x = 0:1/grid_size:1-(1/grid_size);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;

figure; 

x = 0:1/grid_size:1-(1/grid_size);
[grid_out, count2] = SOR(grid_size, b1, b2, b3, b3, required_accuracy);
[X, Y] = meshgrid(x);
s = surf(X, Y, grid_out);
s.EdgeColor = 'none';
colorbar;