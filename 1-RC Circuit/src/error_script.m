%error analysis for the RL circuit with a cosine input
% the numerical solution is compared to the mathamtically computed exact solution
% the error is then plotted for each method.


%Values for the current system
R = 0.5;
L = 0.0015;
i0 = 0;

 %stop here
h = 0.000001;
tf = 1000*h;%step size
tau = 120*10^-6;

%ODE for input into numerical methods - corresponds to the RL circuit
func=@(t,i, Vin) (Vin(t) - R*i)/L;

Vin =@(t) 4*cos((2*pi*t)/tau); %input of the system

%exact solution of the system
c = -(4*(tau^2)*R)/(4*(pi^2)*(L^2) + (tau^2)*(R^2)); %Value of c for the given initial conditions
exacti =@(t) c*exp(-(R*t)/L)+(8*pi*L*tau*sin((2*pi*t)/tau))/(4*(pi^2)*(L^2)+(tau^2)*(R^2)) + (4*(tau^2)*R*cos((2*pi*t)/tau))/(4*(pi^2)*(L^2)+(tau^2)*(R^2));
exactout =@(t, Vin, exacti) Vin(t) - R*arrayfun(exacti, t); %Exact system response

%carry out the numerical analysis of the system
[t1,he] = RK2(func,h, tf,Vin,R,h);
function [x_values, y_values] = RK2(ODE, step_size, final_val, xi, yi)


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