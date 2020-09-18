close all
clear all

s = tf('s');

% actuator transfer function
A = 10.26/(s^2+11.31*s+127.9);

% floor's transfer function
F = 0.00006667*s^2/(s^2+0.2287*s+817.3);

% sensor transfer function
M = s/(s^2+5.181*s+22.18);

% Feedforward transfer function (no K)
G = A*F*M;
rlocus(G);


