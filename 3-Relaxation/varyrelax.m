SORval = zeros(1, 200);
xvals = zeros(1, 200);
n = 1;
for i = 1:0.005:1.995  
    % The test script for relaxation and SOR
    
    % Set the boundary function b1, b2, b3, b4
    b1 = @(y) 2*cos(4*pi*y);
    b2 = @(y) 2*cos(2*pi*y);
    b3 = @(x) 2*cos(4*pi*x);
    b4 = @(x) 2*cos(2*pi*x);
    
    grid_size = 100;
    required_accuracy = 0.000001;
    
    [grid_out, count] = SOR(grid_size, b1, b2, b3, b3, required_accuracy, i);
    SORval(n) = count;
    xvals(n) = i;
    n = n + 1;
end

figure
hold on
title('Varying relaxation parameter');
xlabel('Relaxation parameter value');
ylabel('Count');
plot(xvals, SORval);
