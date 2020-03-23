function [x, y, z] = RK4(ODE_y, ODE_z, h, final_val, xi, yi, zi)
    % ODE Coupled second order ODE solver
    % @param ODE_y The ODE to be solved in the form y' = f(x, y, z)
    % @param ODE_z The ODE to be solved in the form z' = g(x, y, z)
    % @param step_size aka h The distance on the x-axis between two
    % consecutive steps
    % @param final_val The x-value up to which the ODE is evaluated
    % @param yi The initial y-value
    % @param zi The initial z-value
    

    % Calculate the number of steps
    N = round(final_val / h);

    % Initialise output arrays
    x = zeros(1, N);
    y = zeros(1, N);
    z = zeros(1, N);
    % xi is defined to be 0
    x(1) = xi;
    y(1) = yi;
    z(1) = zi;
    
    
    for i = 1 : N - 1
        % Calculate the coefficients
        k0 = h * ODE_y( x(i), y(i), z(i));
        l0 = h * ODE_z(x(i), y(i), z(i));
        k1 = h * ODE_y(x(i) + (0.5 * h), y(i) + (0.5 * k0), z(i) + (0.5 * l0));
        l1 = h * ODE_z(x(i) + (0.5 * h), y(i) + (0.5 * k0), z(i) + (0.5 * l0));
        k2 = h * ODE_y(x(i) + (0.5 * h), y(i) + (0.5 * k1), z(i) + (0.5 * l1));
        l2 = h * ODE_z(x(i) + (0.5 * h), y(i) + (0.5 * k1), z(i) + (0.5 * l1));
        k3 = h * ODE_y(x(i) + h, y(i) + k2, z(i) + l2);
        l3 = h * ODE_z(x(i) + h, y(i) + k2, z(i) + l2);
        
        x(i + 1) = x(i) + h;
        y(i + 1) = y(i) + ((1.0 / 6.0) * (k0 + 2*k1 + 2*k2 + k3));
        z(i + 1) = z(i) + ((1.0 / 6.0) * (l0 + 2*l1 + 2*l2 + l3));
    end
end
