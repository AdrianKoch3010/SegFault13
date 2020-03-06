
% Circuit parameters
R = 250;
C = 3.5 * 10^-6;
L = 0.6;

%%%%%%%%%%%TEST 1: Y = 2.5 %%%%%%%%%%%%%%%%%%
% The input to the system as a function of x
input = @(x) 5;

ODE_y = @(x, y, z) z;
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

% Change initial conditions!
[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);


%%%%%%%%%%%TEST 2: Y = Impulse and decay signal 1 %%%%%%%%%%%%%%%%%%
input = @(x) 5*exp(-x^2 / 30);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

% Change initial conditions!
[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, 0, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);