%% Copyright (c) 2021 Tamas Kis

% Examples for using the rand2 function.



%% SCRIPT SETUP

% clears variables and command window, closes all figures
clear;
clc;
close all;



%% EXAMPLE #1

% one random double between -2.3 and 5.5
X = rand2(-2,5)



%% EXAMPLE #2

% one random single-precision floating-point number between -20.1 and -10
X = rand2(-20.1,-10,[],'single')



%% EXAMPLE #3

% 5x1 vector of random integers between -100 and 100
X = rand2(-100,100,[5,1],'int')



%% EXAMPLE #4

% 10x9 matrix of random double-precision floating-point numbers between
% 37.234 and 49.5869
X = rand2(37.234,49.5869,[10,9])