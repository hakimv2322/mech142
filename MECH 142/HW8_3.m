close all
clear all

s = tf('s');
num = (1e-6)*s^2 + (1.314e-9)*s + (2.66e-13);
den = s^3 + (0.00163)*s^2 + (5.272e-7)*s + (3.538e-11);
G = num/den;
T0 = feedback(G,1);

% stepinfo(T0)

% pole(T0)

K = 126.915;
Gc = K*(s + 1e-4)/s;
F = Gc*G;
T1 = feedback(F,1);
stepinfo(T1)

