F = {@(x, y) (2.5-y)*10000; @(x,y) ((2.5)*exp(-x^2/100)-y)*10000};
ODE = F(1);

figure; hold on;
[out_x1, out_y1] = RK2N(ODE, 0.001, 0.005, 0, 5, 0);
%a1 = plot(out_x1, out_y1);