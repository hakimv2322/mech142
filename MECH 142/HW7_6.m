close all
clear all

% actuator transfer function
A = tf([10.26], [1 11.31 127.9]);

% floor's transfer function
F = tf([0.00006667 0 0], [1 0.2287 817.3]);

% sensor transfer function
M = tf([1 0], [1 5.181 22.18]);

% Feedforward transfer function (no K)
G = A*F*M;
rlocus(G);

% Find K where root locus crosses imaginary axis.
evalfr(-1/G, 28.6732i)



