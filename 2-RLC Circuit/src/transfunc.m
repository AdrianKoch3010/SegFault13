RC = 250 * 3.5e-6;
LC = 3.5e-6 * 600e-3;
sys = tf([RC 0], [LC RC 1]);
figure
impulse(sys)
figure
step(sys)
figure
bode(sys)
grid
