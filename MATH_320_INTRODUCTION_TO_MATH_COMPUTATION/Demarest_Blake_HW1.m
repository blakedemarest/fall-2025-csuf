%% Math 320 - Chapter 1 Homework
% Blake Demarest  
% Due date: September 8, 2025

close all, clear, clc, format compact
%% Chapter 1, Problem #2

%Part (a)
result_2a = (8 + 80/2.6 + exp(3.5))^(1/3)

%Part (b)
result_2b = ((1/sqrt(75)) + (73/(3.1^3)))^(1/4) + 55 * 0.41

%% Chapter 1, Problem #5

%Part (a)
result_5a = sin(0.2*pi)/cos(pi/6) + tan(72*pi/180)

%Part (b)
result_5b = (tan(64*pi/180) * cos(15*pi/180))^2 + (sin(37*pi/180))^2/(cos(20*pi/180))^2

%% Chapter 1, Problem #6

% Define variable z
z = 4.5;

%Part (a)
result_6a = 0.4*z^4 + 3.1*z^2 - 162.3*z - 80.7

%Part (b)
result_6b = (z^3 - 23) * (z^2 + 17.5)^(1/3)

%% Chapter 1, Problem #9

% Define variables
c = 4.6;
d = 1.7;
a = c * d^2;
b = (c + a)/(c - d);

%Part (a)
result_9a = exp(d - b) + (c + a - (c*a)^d)^(1/3)

%Part (b)
result_9b = d/c + (d/b)^2 - c^d - a/b

%% Chapter 1, Problem #16

% Three circles with radii 15 in., 10.5 in., and 4.5 in.
% Side lengths (distance between centers)
a = 15 + 10.5;  % Distance between centers of first two circles
b = 15 + 4.5;   % Distance between centers of first and third circles  
c = 10.5 + 4.5; % Distance between centers of second and third circles

%Part (a) - Calculate angle gamma using law of cosines
gamma = acos((a^2 + b^2 - c^2)/(2*a*b)) * 180/pi

%Part (b) - Calculate angles beta and alpha using law of sines
beta = asin(b * sin(gamma*pi/180)/c) * 180/pi
alpha = asin(a * sin(gamma*pi/180)/c) * 180/pi

%Part (c) - Check that sum of angles is 180°
angle_sum = alpha + beta + gamma

%% Chapter 1, Problem #21

% Calculate perimeter of ellipse with a = 18 in. and b = 7 in.
a = 18;
b = 7;
perimeter = pi*(a + b) * (3 - sqrt((3*a + b)*(a + 3*b)/(a + b)))

%% Chapter 1, Problem #28

% Number of permutations nPr = n!/(n-r)!

%Part (a) - Six-letter passwords from 26 letters (no repetition)
n = 26;
r = 6;
passwords_letters = factorial(n)/factorial(n-r)

%Part (b) - Passwords using 26 letters + 10 digits (no repetition)
n_total = 36;  % 26 letters + 10 digits
passwords_letters_digits = factorial(n_total)/factorial(n_total-r)

%% Chapter 1, Problem #32

% Carbon-14 dating problem
% Half-life = 5730 years, current amount = 77.45% of original

% First determine constant k using half-life
half_life = 5730;
k = log(2)/half_life;

% Calculate age when f(t) = 0.7745*f(0)
% 0.7745 = exp(-k*t), so t = -ln(0.7745)/k
age = -log(0.7745)/k;
age_rounded = round(age)

%% Chapter 1, Problem #34

% Earthquake energy: E = 1.74 × 10^19 × 10^(1.44*M)

%Part (a) - Anchorage earthquake magnitude 9.2
M_anchorage = 9.2;
E_anchorage = 1.74e19 * 10^(1.44 * M_anchorage)

%Part (b) - Lisbon earthquake had half the energy of Anchorage
E_lisbon = E_anchorage / 2;
% Solve for magnitude: E = 1.74e19 * 10^(1.44*M)
% log10(E/(1.74e19)) = 1.44*M
M_lisbon = log10(E_lisbon/(1.74e19))/1.44

%% Chapter 1, Problem #39

% Gosper's approximation: n! ≈ sqrt(2n + 1/3) * π * n^n * e^(-n)
n = 19;

% Calculate using Gosper's approximation
gosper_approx = sqrt(2*n + 1/3) * pi * n^n * exp(-n);

% Calculate true value using MATLAB's factorial function
true_value = factorial(n);

% Calculate error
error = (true_value - gosper_approx)/true_value