% Transfer funcion for the RC circuit
R = 1000;
C = 100 * 10^-9;

trans = @(w) 1 / (1 + 1i*w*R*C);
input = 0:0.1:10000;
output = arrayfun(trans, input);

% Plot Magnitude
figure; hold on;
loglog(input, abs(output));
plot(input, abs(output));

% Plot Phase
figure; hold on;
loglog(input, angle(output));

% Transfer function for the RLC circuit
R = 250;
C = 3.5 * 10^-6;
L = 0.6;

trans = @(w) (1i*w*R*C) / (1 + 1i*w*R*C + (1i*w)^2 * L*C);
input = 0:2000;
output = arrayfun(trans, input);

% Plot Magnitude
figure; hold on;
plot(abs(output));
loglog(abs(output));
%loglog(input, abs(output));

% Plot Phase
figure; hold on;
plot(input, angle(output));

% Transfer function for the RLC circuit with critical damping
R = 2000;
C = 300 * 10^-9;
L = 0.3;

trans = @(w) (1i*w*R*C) / (1 + 1i*w*R*C + (1i*w)^2 * L*C);
input = 0:5000;
output = arrayfun(trans, input);

% Plot Magnitude
figure; hold on;
plot(abs(output));
%loglog(input, abs(output));

% Plot Phase
figure; hold on;
plot(input, angle(output));