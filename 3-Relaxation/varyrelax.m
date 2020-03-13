SORval = zeros(1, 100);
xvals = zeros(1, 100);
n = 1;
for i = 1:0.01:1.99  
    % The test script for relaxation and SOR
    
    % Set the boundary function b1, b2, b3, b4
    b1 = @(y) y;
    b2 = @(y) y;
    b3 = @(x) -x;
    b4 = @(x) -x;
    
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
