close all
clear all

G = tf(poly([1 2]), poly([0 -1 -2]));
rlocus(G);

z = 0.5; % damping ratio
sgrid(z, 0);
