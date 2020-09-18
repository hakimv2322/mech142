close all
clear all
clc

syms s
num = (s^2+3*s+10)*(s+5);
den = (s+3)*(s+4)*(s^2+2*s+100);
F = num/den;
pretty(ilaplace(F))