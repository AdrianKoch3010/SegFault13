
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
yprime = @(x,y) -5*y;
y(0) = 4
xfinal = 5
h = 0.1
-------test3--------
yprime = @(x,y) (2*((cos(x))^3)*sin(x) - 1 - sin(x)*y) / cos(x)
y(pi/4) = 3*sqrt(2)
xfinal = pi/2
h = pi/4
-------test4--------
yprime = @(x,y) (x^2 - x + 1 - 2*y)/x
y(1) = 1/2
xfinal = 2
h = 0.001
-------test5--------
yprime = @(x,y) (2*x*(y^2) + 4) / (2*(3-(x^2)*y))
y(-1) = 8
xfinal = 2
h = 0.1
-------test6--------
yprime  =@(x,y) (1 - 3*(y^3)*(exp(3*x*y)) -2*y*(exp(3*x*y)))/(3*x*(y^2)*(exp(3*x*y)))
y(0) = 1
xfinal = 3
h = 0.01
-------test7--------
yprime  = @(x,y) sqrt(y) - y/x
y(1) = 0
xfinal = 3
h = 0.01
-------test8--------
yprime = @(x,y) 2 - exp(-4*x) - 2*y
y(0) = 1
xfinal = 0.5
h = 0.1
-------test9--------
yprime = @(x,y) 2 - exp(-4*x) - 2*y
y(0) = 1
xfinal = 5
h = 0.001
-------test10--------
yprime = @(x,y) -1*(1/2)*(exp(x/2))*sin(5*x) + 5*(exp(x/2))*cos(5*x) + y
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
