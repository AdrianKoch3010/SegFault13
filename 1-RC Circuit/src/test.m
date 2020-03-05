%values for ODE
%h = 0.000001;
%t0 = 0;
%tf = 1000*h;%step size
%y0 = 500/100;
%C = 100*10^-9;
%R = 1000;
%T = 100*10^-6;
%Vin = 5*cos((2*pi*x)/T);

%ODE for input into numerical methods - corresponds to the RC circuit
% y = qc(t) here 
ODE =@(x,y) ((5*cos(2*pi*(10^4)*x)-y)*10000);
tf = 0.003;
for steps = 15:30
    h = 0.003/steps;
    
    [ta, heun_numerical] = RK2N(ODE,h, tf, 0, 5, 0.5);
    figure;
    hold on;
    plot(ta, heun_numerical);
end
%numerical analysis values 
%[ta,heun_numerical] = RK2N(ODE,h, tf,t0,y0, 0.5);

%call IDE solve to get the exact value of the function
%[t1, heun_exact] = ode45(ODE, [t0, tf], y0);

% Plot the error of each of the numerical methods
%error = exact solution - numerical solution


%figure;
%error_heun = feval(heun_exact, t1, Vin, ta)-heun_numerical;


%label plots
%subplot(2,3,1);
%plot(t1,error_heun,'r');
%xlabel('Time/s');
%ylabel('Error/V');
%title('Heun error vs time');


%log-log plot
%tf = 5; %stop here

%for stepsize=15:20   %create loop to carry out error analysis for different step sizes
%    h = 2^(-stepsize);
%    tf = 1000*h;
%    %input to the system
%    %exact solution as before
%    
    %numerical analysis values 
%    [ta,heun_numerical] = RK2(func,h, tf,t,Vin);
    
%    error_heun = max(abs(feval(heun_exact, t1, Vin, ta)-heun_numerical));
    
    %error of each of the numerical methods
    %error is maximum of (error = exact - numerical)
    
    %plot log-log results
%    subplot(2,3,4);
%    plot(log(h), log(error_heun), 'b*');
%    hold on;
%end

%label plots
%subplot(2,3,4)
%title('Heun error log-log plot');
%xlabel('log(step size)');
%ylabel('log(error)');