

% Test file

% Define an array of ODEs to test (these should be function handles)

% For each ODE

% Hold on - make sure to set the graphs to differnt colours
%   For each set of input parameters
%       Run the ODE solver ie plot the graphs

% Todo: Add error calculation for the different inputs (perhaps store /
% output to a table

% Just a quick test to check that the solver is working
ODE = @(x, y) x + y;
[out_x, out_y] = RK2(ODE, 0.0003, 1, 0, 2);
plot(out_x, out_y);