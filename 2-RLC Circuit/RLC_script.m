close all;

% Graph labels
IN = "V_{in}";
OUT = "V_{out}";

% Circuit parameters
R = 250;
C = 3.5 * 10^-6;
L = 0.6;
Q0 = 500 * 10^-9;
Q_dash_0 = 0;

%%%%%%%%%%%TEST 1: Step signal  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The input to the system as a function of x
input = @(x) 5;

ODE_y = @(x, y, z) z;
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.05, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 1: Step signal')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-2, 5.5]);

%%%%%%%%%%%TEST 2: Y = Impulse and decay signal 1 %%%%%%%%%%%%%%%%%%%%%%%%
input = @(x) 5*exp(-x^2 / 0.000003);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.05, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 2: Impulse decay signal')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-2, 5.5]);

%%%%%%%%%%%TEST 3: Square wave with frequency f = 109 Hz %%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(109)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.07, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 3: Square wave, frequency 109 Hz')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 4: Square wave with frequency f = 5 Hz %%%%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 4: Square wave, frequency 5 Hz')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%TEST 5: Square wave with frequency f = 500 Hz %%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(500)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.04, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 5: Square wave, frequency 500 Hz')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%TEST 6: Sine wave with frequency f = 109 Hz %%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(109)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.07, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 6: Sine wave, frequency 109 Hz')
legend([p1; p2], [IN, OUT]);
xlabel('Time/ms');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%TEST 7: Sine wave with frequency f = 5 Hz %%%%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 7: Sine wave, frequency 5 Hz')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%TEST 8: Sine wave with frequency f = 500 Hz %%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(500)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.04, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 8: Sine wave, frequency 500 Hz')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -- New circuit 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% critically damped
% Circuit parameters
R = 2000;
C = 300 * 10^-9;
L = 0.3;
%Q0 = 500 * 10^-9;
Q0 = 0;
Q_dash_0 = 0;


%%%%%%%%%%%TEST 1: Step signal  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The input to the system as a function of x
input = @(x) 5;

ODE_y = @(x, y, z) z;
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.02, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 1: Step signal (CD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1, 5.5]);

%%%%%%%%%%%TEST 2: Impulse and decay signal %%%%%%%%%%%%%%%%%%%%%%%%
input = @(x) 5*exp(-x^2 / 0.000003);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.05, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 2: Impulse decay signal (CD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-2, 5.5]);

%%%%%%%%%%%TEST 3: Square wave at resonance frequency (530.5 Hz) %%%%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(530.5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.015, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 3: Square wave, resonance frequency (530.5 Hz)(CD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 4: Sine wave with frequency f = 5 Hz %%%%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 4: Sine wave, frequency 5 Hz (CD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%TEST 5: Sine wave at resonance frequency (530.5 Hz) %%%%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(530.5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.015, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 5: Sine wave, resonance frequency (530.5 Hz)(CD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -- New circuit 2-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% overdamped
% Circuit parameters
R = 2000;
C = 3 * 10^-6;
L = 0.8;
%Q0 = 500 * 10^-9;
Q0 = 0;
Q_dash_0 = 0;

%%%%%%%%%%%TEST 1: Step signal  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The input to the system as a function of x
input = @(x) 5;

ODE_y = @(x, y, z) z;
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.05, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 1: Step signal (OD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1, 5.5]);

%%%%%%%%%%%TEST 2: Impulse and decay signal %%%%%%%%%%%%%%%%%%%%%%%%
input = @(x) 5*exp(-x^2 / 0.000003);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.05, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 2: Impulse decay signal (OD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-2, 5.5]);

%%%%%%%%%%%TEST 3: Square wave at resonance frequency (102.7 Hz) %%%%%%%%%%%%%%%%%%%%
input = @(x) square(2*pi*(102.7)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.03, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 3: Square wave, resonance frequency (102.7 Hz)(OD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');

%%%%%%%%%%%TEST 4: Sine wave with frequency f = 5 Hz %%%%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(5)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.00003, 0.3, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 4: Sine wave, frequency 5 Hz (OD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

%%%%%%%%%%%TEST 5: Sine wave at resonance frequency (102.7 Hz) %%%%%%%%%%%%%%%%%%%%
input = @(x) sin(2*pi*(102.7)*x);
ODE_z = @(x, y, z) ((input(x) - R*z - (1/C)*y) / L);

[out_x, out_y, out_z] = RK4(ODE_y, ODE_z, 0.000003, 0.03, 0, Q0, Q_dash_0);

% Calculate V_out as R*z
V_out = R*out_z;

figure; hold on;
input_vals = arrayfun(input, out_x);
p1 = plot(out_x, input_vals);
p2 = plot(out_x, V_out);

title('Test 5: Sine wave, resonance frequency (102.7 Hz)(OD)')
legend([p1; p2], [IN, OUT]);
xlabel('Time/s');
ylabel('Voltage/V');
ylim([-1.2, 1.2]);

