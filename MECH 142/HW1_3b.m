close all
clear all
clc

syms t
f = 3*t*exp(-2*t)*sind(4*t+60);
pretty(laplace(f))