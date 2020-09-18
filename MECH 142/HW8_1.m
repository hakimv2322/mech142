close all
clear all

s = tf('s');
G = (s+6)/((s+2)*(s+3)*(s+5)); % uncompensated feedforward
% rlocus(G);
z = 0.707; % damping ratio
% sgrid(z, 0);

K = 4.65; % read off of root locus
Gc = s+4; % compensation (PD)
rlocus(Gc*K*G);

