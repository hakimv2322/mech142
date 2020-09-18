close all
clear all

s = tf('s');
num = 1.869;
den = s^2 + 12.32*s + 0.4582;
G = num/den;
K = 42.4; % evaluated from root locus

% rlocus(G)
% z = 0.69; % damping ratio
% sgrid(z, 0);

z1 = 40.285;
Gpd = s + z1;

z2 = 1e-5;
Gpi = (s + z2)/s;

Kc = 0.0389;

% evalfr(-1/G,-6.16 + 6.4619i)
% evalfr(-1/(Gpd*K*G),-7.7 + 8.0774i)
% evalfr(-1/(Gpd*Gpi*K*G),-7.7 + 8.0774i)

F = Kc*Gpd*Gpi*K*G;
T = feedback(F,1);
stepinfo(T)



