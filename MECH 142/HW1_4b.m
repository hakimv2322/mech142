close all
clear all
clc

syms s
num = s^3+4*s^2+2*s+6;
den = (s+8)*(s^2+8*s+3)*(s^2+5*s+7);
F = num/den;
pretty(ilaplace(F))