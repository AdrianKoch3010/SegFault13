close all;

% The test script for relaxation and SOR

% Set the boundary function b1, b2, b3, b4
b1 = @(y) y;
b2 = @(y) y;
b3 = @(x) x;
b4 = @(x) x;

grid_size = 50;
x = 0:1/grid_size:1-(1/grid_size);
x2 = 0:1/(grid_size*4):1-(1/(grid_size*4));
required_accuracy = 0.000001;

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 1;
b2 = @(y) 1;
b3 = @(x) 0;
b4 = @(x) 0;

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 0;
b2 = @(y) 1;
b3 = @(x) 0;
b4 = @(x) 1;

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 0;
b2 = @(y) 1;
b3 = @(x) 0;
b4 = @(x) 0;

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) y^2;
b2 = @(y) 0.5*y;
b3 = @(x) x^2;
b4 = @(x) 0.5*x;

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 2*cos(4*pi*y);
b2 = @(y) 2*cos(2*pi*y);
b3 = @(x) 2*cos(4*pi*x);
b4 = @(x) 2*cos(2*pi*x);

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) 2*sin(2*pi*y);
b2 = @(y) 2*sin(2*pi*y);
b3 = @(x) 2*sin(2*pi*x);
b4 = @(x) 2*sin(2*pi*x);

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TEST 7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b1 = @(y) y^2;
b2 = @(y) y^2;
b3 = @(x) x^2;
b4 = @(x) x^2;

figure;
[grid_out, count] = relaxation(grid_size, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x);
meshc(X, Y, grid_out);

figure; hold on;
[grid_out, count] = relaxation(grid_size * 4, b1, b2, b3, b4, required_accuracy);
[X, Y] = meshgrid(x2);
s2 = surf(X, Y, grid_out);
s2.EdgeColor = 'none';
colorbar;
