
%maths coursework testbenches

%testing with first order odes
% -------test1--------
yprime = @(x, y) 6*x;


xfinal = 15;
h = 0.5; %step size

[x_out, y_out] = RK2(yprime, h, xfinal, 2, 8);

figure;
plot(x_out, y_out);


-------test2--------
dy/dx = -5y
y(0) = 4
xfinal = 5
h = 0.1
-------test3--------
cos(x)y' + sin(x)y = 2cos^3(x)sin(x) - 1 
y(pi/4) = 3sqrt(2)
xfinal = pi/2
h = pi/4
-------test4--------
xy' + 2y = x^2 - x + 1
y(1) = 1/2
xfinal = 2
h = 0.001
-------test5--------
2xy^2 + 4 = 2y'(3 - x^2y)
y(-1) = 8
xfinal = 2
h = 0.1
-------test6--------
3(y^3)e^(3xy) - 1 +(2ye^(3xy) + 3x(y^2)e^(3xy))y' = 0
y(0) = 1
xfinal = 3
h = 0.01
-------test7--------
y' + y/x - sqrt(y) = 0
y(1) = 0
xfinal = 3
h = 0.01
-------test8--------
y' + 2y = 2 - e^(-4x) 
y(0) = 1
xfinal = 0.5
h = 0.1
-------test9--------
y' + 2y = 2 - e^(-4x) 
y(0) = 1
xfinal = 5
h = 0.001
-------test10--------
y' - y = -1/2(e^x/2)sin(5x) + 5(e^x/2)cos(5x)
y(0) = 0
xfinal = 5
h = 0.001


%-------test11--------
yprime = @(x,y) -1*(1/2)*(exp(x/2))*sin(5*x) + 5*(exp(x/2))*cos(5*x) + y;
%y(0) = 0;
xfinal = 2;
h = 0.0005;

[x_out, y_out] = RK2(yprime, h, xfinal, 0, 0);

figure;
plot(x_out, y_out);





for more tests we can use the problem sheets put up on blackboard 
