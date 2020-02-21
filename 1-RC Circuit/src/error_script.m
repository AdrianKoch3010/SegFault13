%error analysis for the RL circuit with a cosine input
% the numerical solution is compared to the mathamtically computed exact solution
% the error is then plotted for each method.



 %stop here
h = 0.000001;
tf = 1000*h;%step size
tau = 500*10^-6;

%ODE for input into numerical methods - corresponds to the RL circuit
ODE =@;

Vin =@; %input of the system

%numerical analysis values 
[t1,he] = RK2(func,h, tf,t,Vin);

%call IDE solve to get the exact value of the function
[t1, heun] = ode45(ODE, [t0, tf], 500);
% Plot the error of each of the numerical methods
%error = exact solution - numerical solution


figure;
error_heun = feval(exactout, t1, Vin, exacti)-he;


%label plots
subplot(2,3,1);
plot(t1,error_heun,'r');
xlabel('Time/s');
ylabel('Error/V');
title('Heun error vs time');


%log-log plot
tf = 5; %stop here

for ind=15:20   %create loop to carry out error analysis for different step sizes
    h = 2^(-ind);
    tf = 1000*h;
    %input to the system
    %exact solution as before
    
    
    %carry out the numerical analysis of the system
    [t1,he] = heun(func,i0,Vin,tf,R,h);
    
    error_heun = max(abs(feval(exactout, t1, Vin, exacti)-he));
    
    %error of each of the numerical methods
    %error is maximum of (error = exact - numerical)
    
    %plot log-log results
    subplot(2,3,4);
    plot(log(h), log(error_heun), 'b*');
    hold on;
end

%label plots
subplot(2,3,4)
title('Heun error log-log plot');
xlabel('log(step size)');
ylabel('log(error)');