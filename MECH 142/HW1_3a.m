close all
clear all
clc

syms t
f = 8*t^2*cosd(3*t+45);
pretty(laplace(f))