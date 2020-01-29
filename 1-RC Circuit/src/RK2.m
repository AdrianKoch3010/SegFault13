function [xOutArray, yOutArray] = RK2(ODE, step_size, final_val, xi, yi)
% ODE solver
% 
x0 = xi 
y0 = yi
a1 = 
a2 = 
p =
q =

% Calculate the step size // is this not given already ?
% Set up output arrays
% Initialise array
% Run for N - 1 iterations
% Return the x and y output arrays
while x0 <= xn
    k1 = ODE(x0, y0)
    x1 = x0 +step_size
    k2 = ODE((x0+p*step_size), y0+q*h*ODE(x0, y0))
    y1 = y0 + step_size*(a*k1 + b*k2)
    % store x1, y1 in out arrays 
    xOutArray(:,x0)= x1
    yOutArray(:,x0) = y1
    x0 = x1
    y0 = x1
end

end

