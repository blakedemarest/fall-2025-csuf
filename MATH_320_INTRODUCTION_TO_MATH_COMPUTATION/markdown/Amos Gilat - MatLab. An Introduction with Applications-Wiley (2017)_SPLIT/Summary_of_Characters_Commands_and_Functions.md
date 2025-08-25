Appendix:
Summary of Characters,
Commands, and Functions

The  following  tables  list  MATLAB’s  characters,  commands,  and  functions  that  are
covered in the book. The items are grouped by subjects.

Characters and arithmetic operators

Character

Description

+
–
*
.*
/
\
./
.\
^
.^
:

=
( )

[ ]

,

;
’
...
%

Addition.
Subtraction.
Scalar and array multiplication.
Element-by-element multiplication of arrays.
Right division.
Left division.
Element-by-element right division.
Element-by-element left division.
Exponentiation.
Element-by-element exponentiation.
Colon;  creates vectors with  equally spaced elements,
represents range of elements in arrays.
Assignment operator.
Parentheses;  sets  precedence,  encloses  input  argu-
ments in functions and subscripts of arrays.
Brackets; forms arrays. encloses output arguments in
functions.
Comma;  separates  array  subscripts  and  function
arguments, separates commands in the same line.
Semicolon; suppresses display, ends row in array.
Single quote; matrix transpose, creates string.
Ellipsis; continuation of line.
Percent; denotes a comment, specifies output format.

Relational and logical operators

Character
<
>
<=

Description
Less than.
Greater than.
Less than or equal.

Page

11, 64
11, 64
11, 65
72
11, 71
11, 70
72
72
11
72
37, 44

16
11, 42, 44,
224
37, 38, 39,
224
9, 17, 42-
45, 224
10, 39
41, 53-55
10
10

Page
176
176
176

392                                             Summary of Characters, Commands, and Functions

Relational and logical operators (Continued)

Character
>=
==
~=
&
|
~

Description
Greater than or equal.
Equal.
Not equal.
Logical AND.
Logical OR.
Logical NOT.

Managing commands

Description
Changes current directory.
Clears the Command Window.
Removes all variables from the memory.

Command
cd
clc
clear
clear x y z Removes variables x, y, and z from the memory.
Closes the active Figure Window.
close
Closes a file.
fclose
Opens a Figure Window.
figure
Opens a file.
fopen
Declares global variables.
global
Displays help for MATLAB functions.
help
Displays keywords.
iskeyword
Search for specified word in all help entries.
lookfor
Displays variables currently in the memory.
who
Displays information on variables in the memory.
whos

Predefined variables

Variable
ans
eps
i

inf
j
NaN
pi

Description
Value of last expression.
The smallest difference between two numbers.

Infinity.
Same as i.
Not a number.
The number  .

Display formats in the Command Window

Command
format bank
format compact

Description
Two decimal digits.
Eliminates empty lines.

Page
176
176
176
179
179
179

Page
24
10
19
19
158
109
158
108
227
226
19
226
20, 96
20, 96

Page
19
19
19

19
19
19
19

Page
13
13

Summary of Characters, Commands, and Functions

393

Display formats in the Command Window (Continued)

Command
format long
format long e
format long g
format loose
format short
format short e
format short g

Description
Fixed-point format with 14 decimal digits.
Scientific notation with 15 decimal digits.
Best of 15-digit fixed or floating point.
Adds empty lines.
Fixed-point format with 4 decimal digits.
Scientific notation with 4 decimal digits.
Best of 5-digit fixed or floating point.

Elementary math functions

Function
abs
exp
factorial
log
log10
nthroot
sqrt

Description
Absolute value.
Exponential.
The factorial function.
Natural logarithm.
Base 10 logarithm.
Real nth root or a real number.
Square root.

Trigonometric math functions

Function
acos
acot
asin
atan

Description
Inverse cosine.
Inverse cotangent.
Inverse sine.
Inverse tangent.

Page Function
15
15
15
15

cos
cot
sin
tan

Description
Cosine.
Cotangent.
Sine.
Tangent.

Hyperbolic math functions

Function Description
cosh
coth

Page Function Description
Hyperbolic cosine.
15
Hyperbolic cotangent. 15

sinh
tanh

Hyperbolic sine.
Hyperbolic tan-
gent.

Page
13
13
13
13
13
13
13

Page
15
14
15
15
15
14
14

Page
15

15

15

15

Page
15

15

Rounding

Function
ceil
fix
floor
rem
round
sign

Description
Round towards infinity.
Round towards zero.
Round towards minus infinity.
Returns the remainder after x is divided by y.
Round to the nearest integer.
Signum function.

Page
16
16
16
16
15
16

394                                             Summary of Characters, Commands, and Functions

Creating arrays

Function
diag

eye
linspace
ones
rand
randi
randn
randperm
zeros

Description
Creates a diagonal matrix from a vector. Creates a vec-
tor from the diagonal of a matrix.
Creates a unit matrix.
Creates equally spaced vector.
Creates an array with ones.
Creates an array with random numbers.
Creates an array with random integers.
Creates an array with normally distributed numbers.
Creates vector with permutation of integers.
Creates an array with zeros.

Handling arrays

Function
length
reshape
size

Description
Number of elements in the vector.
Rearrange a matrix.
Size of an array.

Array functions

Function
cross
det
dot
inv
max
mean
median
min
sort
std
sum

Description
Calculates cross product of two vectors.
Calculates determinant.
Calculates scalar product of two vectors.
Calculates the inverse of a square matrix.
Returns maximum value.
Calculates mean value.
Calculates median value.
Returns minimum value.
Arranges elements in ascending order.
Calculates standard deviation.
Calculates sum of elements.

Input and output

Command
disp
fprintf
input
load
save
uiimport

Description
Displays output.
Displays or saves output.
Prompts for user input.
Retrieves variables to the workspace.
Saves the variables in the workspace.
Starts the Import Wizard

Page
50

40, 68
38
40
77, 78
78, 79
79
78
40

Page
49
49
49

Page
77
70, 77
66, 77
69, 77
76
76
76
76
76
77
76

Page
101
103-110
99
112
111
116

Summary of Characters, Commands, and Functions

395

Input and output

Command
xlsread
xlswrite

Description
Imports data from Excel
Exports data to Excel

Two-dimensional plotting

Command
bar
barh
errorbar
fplot
hist
hold off
hold on
line
loglog
pie
plot
polar
semilogx
semilogy
stairs
stem

Description
Creates a vertical bar plot.
Creates a horizontal bar plot.
Creates a plot with error bars.
Plots a function.
Creates a histogram.
Ends hold on.
Keeps current graph open.
Adds curves to existing plot.
Creates a plot with log scale on both axes.
Creates a pie plot.
Creates a plot.
Creates a polar plot.
Creates a plot with log scale on the x axis.
Creates a plot with log scale on the y axis.
Creates a stairs plot.
Creates a stem plot.

Three-dimensional plotting

Command
bar3
contour
contour3
cylinder
mesh
meshc
meshgrid
meshz
pie3
plot3
pol2cart

scatter3
sphere

Description
Creates a vertical 3-D bar plot.
Creates a 2-D contour plot.
Creates a 3-D contour plot.
Plots a cylinder.
Creates a mesh plot.
Creates a mesh and a contour plot.
Creates a grid for a 3-D plot.
Creates a mesh plot with a curtain.
Creates a pie plot.
Creates a plot.
Convert the polar coordinates grid to a grid in Carte-
sian coordinates.
Creates a scatter plot.
Plots a sphere.

Page
114
115

Page
152
152
151
140
153-156
142
142
143
149
153
134
156
149
149
152
153

Page
331
330
330
331
327, 328
329
325
329
332
323
333

332
331

396                                             Summary of Characters, Commands, and Functions

Three-dimensional plotting (Continued)

Command
stem3
surf
surfc
surfl
waterfall

Description
Creates a stem plot
Creates a surface plot.
Creates a surface and a contour plot.
Creates a surface plot with lighting.
Creates a mesh plot with a waterfall effect.

Formatting plots

Command
axis
colormap
grid
gtext
legend
subplot
text
title
view
xlabel
ylabel

Description
Sets limits to axes.
Sets color.
Adds grid to a plot.
Adds text to a plot.
Adds legend to a plot.
Creates multiple plots on one page.
Adds text to a plot.
Adds title to a plot.
Controls the viewing direction of a 3-D plot.
Adds label to x axis.
Adds label to y axis.

Math functions (create, evaluate, solve)

Command
feval
fminbnd
fzero

Description
Evaluates the value of a math function.
Determines the minimum of a function.
Solves an equation with one variable.

Numerical integration

Function
quad
quadl
trapz

Description
Integrates a function.
Integrates a function.
Integrates a function.

Ordinary differential equation solvers

Command
ode113
ode15s
ode23
ode23s

Description
Solves a first order ODE.
Solves a first order ODE.
Solves a first order ODE.
Solves a first order ODE.

Page
332
327, 329
329
330
330

Page
147
328
148, 328
145
145
157
145
144
333
144
144

Page
238
298
296

Page
300
301
302

Page
304
305
304
305

Summary of Characters, Commands, and Functions

397

Ordinary differential equation solvers (Continued)

Command
ode23t
ode23tb
ode45

Description
Solves a first order ODE.
Solves a first order ODE.
Solves a first order ODE.

Logical Functions

Function
all
and
any
find
not
or
xor

Description
Determines if all array elements are nonzero.
Logical AND.
Determines if any array elements are nonzero.
Finds indices of certain elements of a vector.
Logical NOT.
Logical OR.
Logical exclusive OR.

Flow control commands

Command
break
case
continue
else
elseif
end

Description
Terminates execution of a loop.
Conditionally execute commands.
Terminates a pass in a loop.
Conditionally execute commands.
Conditionally execute commands.
Terminates conditional statements and loops.

for
if
otherwise
switch
while

Repeats execution of a group of commands.
Conditionally execute commands.
Conditionally execute commands.
Switches among several cases based on expression.
Repeats execution of a group of commands.

Polynomial functions

Function
conv
deconv
poly
polyder
polyval
roots

Description
Multiplies polynomials.
Divides polynomials.
Determines coefficients of a polynomial.
Determines the derivative of a polynomial.
Calculates the value of a polynomial.
Determines the roots of a polynomial.

Page
305
305
304

Page
182
181
182
182
181
181
182

Page
202
189
202
186
187
184, 189,
193, 197
193
184
189
189
197

Page
265
265
264
266
262
263

398                                             Summary of Characters, Commands, and Functions

Curve fitting and interpolation

Function
interp1
polyfit

Description
One-dimensional interpolation.
Curve fit polynomial to set of points.

Symbolic Math

Page
276
269

Function
collect
diff
double
dsolve
expand
ezplot
factor
findsym
int
pretty
simplify
solve
subs
sym
syms

Page
Description
354
Collects terms in an expression.
Differentiates an equation.
362
Converts number from symbolic form to numerical form 352
365
Solves an ordinary differential equation.
355
Expands an expression.
368
Plots an expression.
355
Factors to product of lower order polynomials.
353
Displays the symbolic variables in an expression.
363
integrates an expression.
356
Displays expression in math format.
356
Simplifies an expression.
357
Solves a single equation, or a system of equations.
371
Substitutes numbers in an expression.
348
Creates symbolic object.
350
Creates symbolic object.

