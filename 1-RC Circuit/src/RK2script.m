

% Test file

% Define an array of ODEs to test (these should be function handles)

% For each ODE

% Hold on - make sure to set the graphs to differnt colours
%   For each set of input parameters
%       Run the ODE solver ie plot the graphs

% Todo: Add error calculation for the different inputs (perhaps store /
% output to a table

% Just a quick test to check that the solver is working
% -------test0--------
ODE = @(x, y) x + y;
[out_x, out_y] = RK2(ODE, 0.0003, 1, 0, 2);
plot(out_x0, out_y0);

%functions from testbench
% -------test1--------
yprime = @(x, y) 6*x;
[x_out, y_out] = RK2(yprime, 0.5, 15, 2, 8);
plot(x_out1, y_out1);


-------test2--------
yprime = @(x,y) -5*y;
[x_out, y_out] = RK2(yprime, 0.5, 5, 2, 4);
plot(x_out2, y_out2);


-------test3--------
yprime = @(x,y) (2*((cos(x))^3)*sin(x) - 1 - sin(x)*y) / cos(x);
[x_out, y_out] = RK2(yprime, pi/4,  pi/2,  pi/4,3*sqrt(2) );
plot(x_out3, y_out3);


-------test4--------
yprime = @(x,y) (x^2 - x + 1 - 2*y)/x;
[x_out, y_out] = RK2(yprime, pi/4,  2,  1, 1/2 );
plot(x_out4, y_out4);

-------test5--------
yprime = @(x,y) (2*x*(y^2) + 4) / (2*(3-(x^2)*y));
[x_out, y_out] = RK2(yprime, 0.1,  2,  -1, 8 );
plot(x_out5, y_out5);

-------test6--------
yprime  =@(x,y) (1 - 3*(y^3)*(exp(3*x*y)) -2*y*(exp(3*x*y)))/(3*x*(y^2)*(exp(3*x*y)));
[x_out6, y_out6] = RK2(ODE, 0.01, 3, 0, 1);
-------test7--------
yprime  = @(x,y) sqrt(y) - y/x;
[x_out7, y_out7] = RK2(ODE, 0.01, 3, 1, 0);

-------test8--------
yprime = @(x,y) 2 - exp(-4*x) - 2*y;
[x_out8, y_out8] = RK2(ODE, 0.1, 0.5, 0, 1);

-------test9--------
yprime = @(x,y) 2 - exp(-4*x) - 2*y;
[x_out9, y_out9] = RK2(ODE, 0.001, 5, 0, 1);

-------test10--------
yprime = @(x,y) -1*(1/2)*(exp(x/2))*sin(5*x) + 5*(exp(x/2))*cos(5*x) + y;
[x_out10, y_out10] = RK2(ODE, 0.001, 5, 0, 0);



%-------test11--------
yprime = @(x,y) -1*(1/2)*(exp(x/2))*sin(5*x) + 5*(exp(x/2))*cos(5*x) + y;
[x_out11, y_out11] = RK2(ODE, 0.0005, 2, 0, 0);


%all plots
subplot(2,3,1);
plot(x_out0,y_out0,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('x + y');
hold on;

subplot(2,3,2);
plot(x_out1,y_out1,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('6*x');
hold on;

subplot(2,3,3);
plot(x_out2,y_out2,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('-5*y');
hold on;

subplot(2,3,4);
plot(x_out3,y_out3,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('(x,y) (2*((cos(x))^3)*sin(x) - 1 - sin(x)*y) / cos(x)');
hold on;

subplot(2,3,5);
plot(x_out4,y_out4,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('(x^2 - x + 1 - 2*y)/x');
hold on;

subplot(2,3,6);
plot(x_out5,y_out5,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('(2*x*(y^2) + 4) / (2*(3-(x^2)*y))');
hold on;

subplot(2,3,7);
plot(x_out6,y_out6,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('(1 - 3*(y^3)*(exp(3*x*y)) -2*y*(exp(3*x*y)))/(3*x*(y^2)*(exp(3*x*y)))');
hold on;

subplot(2,3,8);
plot(x_out7,y_out7,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('sqrt(y) - y/x');
hold on;

subplot(2,3,9);
plot(x_out8,y_out8,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('2 - exp(-4*x) - 2*y');
hold on;

subplot(2,3,10);
plot(x_out9,y_out9,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('2 - exp(-4*x) - 2*y');
hold on;

subplot(2,3,11);
plot(x_out10,y_out10,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('-1*(1/2)*(exp(x/2))*sin(5*x) + 5*(exp(x/2))*cos(5*x) + y');
hold on;

subplot(2,3,1);
plot(x_out11,y_out11,'r');
xlabel('x_out/s');
ylabel('y_out/V');
title('-1*(1/2)*(exp(x/2))*sin(5*x) + 5*(exp(x/2))*cos(5*x) + y');
hold on;

