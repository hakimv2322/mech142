close all
clear all

s = tf('s');
G = 1/(s*(s+5)*(s+11)); % uncompensated feedforward
% rlocus(G);
z = 0.358; % damping ratio
% sgrid(z, 0);

K = 200; % read off of root locus

Glag = (s + 0.00003)/(s + 000001);

zer = 1; pole = 10.5; % trial and error
Glead = (s + zer)/(s + pole);
rlocus(Glead*Glag*K*G);
z = 0.517; % damping ratio
sgrid(z, 0);

