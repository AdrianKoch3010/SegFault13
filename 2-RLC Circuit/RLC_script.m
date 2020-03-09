
% Circuit parameters
R = 250;
C = 3.5 * 10^-6;
L = 0.6;

%%%%%%%%%%%TEST 1: Step signal  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 1: Step signal')

% Seconds or milliseconds????
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 2: Y = Impulse and decay signal 1 %%%%%%%%%%%%%%%%%%%%%%%%
input = @(x) 5*exp(-x^2 / 0.003);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 2: Impulse decay signal')
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 3: Square wave with frequency f = 109 Hz %%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(109)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.1, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 3: Square wave, frequency 109 Hz')
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 4: Square wave with frequency f = 5 Hz %%%%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 4: Square wave, frequency 5 Hz')
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 5: Square wave with frequency f = 500 Hz %%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(500)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.07, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 5: Square wave, frequency 500 Hz')
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 6: Sine wave with frequency f = 109 Hz %%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(109)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.1, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 6: Sine wave, frequency 109 Hz')
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 7: Sine wave with frequency f = 5 Hz %%%%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 7: Square wave, frequency 5 Hz')
xlabel('Time/ms');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 7: Sine wave with frequency f = 500 Hz %%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(500)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.07, 0, 500 * 10^-9, 0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
plot(out_x, V_out);
input_vals = arrayfun(input, out_x);
plot(out_x, input_vals);
title('Test 8: Square wave, frequency 500 Hz')
xlabel('Time/ms');
ylabel('Voltage/V');