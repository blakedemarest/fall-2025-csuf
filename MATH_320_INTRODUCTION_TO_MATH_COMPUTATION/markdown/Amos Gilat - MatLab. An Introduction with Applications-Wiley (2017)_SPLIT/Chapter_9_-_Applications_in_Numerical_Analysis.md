Chapter 9
Applications in
Numerical Analysis

Numerical methods are commonly used for solving mathematical problems that
are formulated in science and engineering where it is difficult or impossible to
obtain  exact  solutions.  MATLAB  has  a  large  library  of  functions  for  numeri-
cally solving a wide variety of mathematical problems. This chapter explains a
number of the most frequently used of these functions. It should be pointed out
here that the purpose of this book is to show users how to use MATLAB. Some
general  information  on the  numerical  methods  is given,  but  the  details, which
can be found in books on numerical analysis, are not included.

The following topics are presented in this chapter: solving an equation with
one unknown, finding a minimum or a maximum of a function, numerical inte-
gration, and solving a first-order ordinary differential equation.

9.1 SOLVING AN EQUATION WITH ONE VARIABLE

f x

0=

An equation with one variable can be written in the form
. A solution
to  the  equation  (also  called  a  root)  is  a  numerical  value  of  x  that  satisfies  the
equation. Graphically, a solution is a point where the function
 crosses or
touches the x axis. An exact solution is a value of x for which the value of the
function is exactly zero. If such a value does not exist or is difficult to determine,
a numerical solution can be determined by finding an x that is very close to the
solution. This is done by the iterative process, where in each iteration the com-
puter determines a value of x that is closer to the solution. The iterations stop
when the difference in x between two iterations is smaller than some measure. In
general,  a  function  can  have  zero,  one,  several,  or  an  infinite  number  of  solu-
tions.

f x

296

Chapter 9: Applications in Numerical Analysis

  In  MATLAB  a  zero  of  a  function  can  be  determined  with the  command

(built-in function) fzero with the form:

x = fzero(function,x0)

Solution

The function
to be solved.

A value of x close to where
the function crosses the axis.

The built-in function fzero is a MATLAB function function (see Section 7.9),
which means that it accepts another function (the function to be solved) as an
input argument.

Additional details on the arguments of fzero:

• x is the solution, which is a scalar.

• function  is  the  function  to  be  solved.  It  can  be  entered  in  several  different

ways:
1. The simplest way is to enter the mathematical expression as a string.
2. The function is created as a user-defined function in a function file and
       then the function handle is entered (see Section 7.9.1).
3. The function is created as an anonymous function (see Section 7.8.1)
       and then the name of the anonymous function (which is the name of the
       handle) is entered (see Section 7.9.1).

(As explained in Section 7.9.2, it is also possible to pass a user-defined function
and  an  inline  function  into  a  function  function  by  using  its  name.  However,
function handles are more efficient and easier to use, and should be the preferred
method.)

• The function has to be written in a standard form. For example, if the function
to be solved is
. If this
, it has to be written as
function  is  entered  into  the  fzero  command  as  a  string,  it  is  typed  as:
‘x*exp(-x)-0.2’.

• When  a  function  is  entered  as  an  expression  (string),  it  cannot  include  pre-
,

defined variables. For example, if the function to be entered is
it is not possible to define b=0.2 and then enter ‘x*exp(-x)-b’.

• x0  can be a scalar or a two-element vector. If it is entered as a scalar, it has to be
a value of x near the point where the function crosses (or touches) the x axis. If
x0 is entered as a vector, the two elements have to be points on opposite sides of
the solution. If
 has a different sign than
. When a function has more than one solution, each solution can be
f x0 2
determined separately by using the fzero function and entering values for x0
that are near each of the solutions.

 crosses the x axis, then

f x0 1

f x

9.1 Solving an Equation with One Variable

297

• A good way to find approximately where a function has a solution is to make a
plot of the function. In many applications in science and engineering the domain
of the solution can be estimated. Often when a function has more than one solu-
tion only one of the solutions will have a physical meaning.

Sample Problem 9-1: Solving a nonlinear equation

Determine the solution of the equation

Solution

The equation is first written in the form of a
.  A  plot  of  the
function:
function,  shown  on  the  right,  shows  that  the
function  has  one  solution  between  0  and  1
and  another  solution  between  2  and  3.  The
plot is obtained by typing

>> fplot('x*exp(-x)-0.2',[0 8])

.

0.2

0.1

y

0

-0.1

-0.2
0

1

2

3

4
x

5

6

7

8

in the Command Window. The solutions of the function are found by using the
fzero command twice. First the equation is entered as a string expression, and
a  value  of  x0  between  0  and  1  (x0  =  0.7)  is  used.  Second,  the  equation  to  be
solved is written as an anonymous function, which is then used in fzero with
x0 between 2 and 3 (x0 = 2.8). This is shown below:

>> x1=fzero('x*exp(-x)-0.2',0.7)

x1 =
    0.2592

>> F=@(x)x*exp(-x)-0.2
F =
    @(x)x*exp(-x)-0.2

The  function  is  entered  as
a string expression.

The first solution is 0.2592.

Creating an anonymous function.

>> fzero(F,2.8)
ans =
    2.5426

Additional comments:

Using the name of the anonymous function in fzero.

The second solution is 2.5426.

• The fzero command finds zeros of a function only where the function crosses
the  x  axis.  The  command  does  not  find  a  zero  at  points  where  the  function
touches but does not cross the x axis.

•

If a solution cannot be determined, NaN is assigned to x.

• The fzero command has additional options (see the Help Window). Two of

the more important options are:

298

Chapter 9: Applications in Numerical Analysis

[x fval]=fzero(function, x0) assigns the value of the function at x to
the variable fval.
x=fzero(function, x0, optimset(‘display’,‘iter’)) displays
the output of each iteration during the process of finding the solution.

• When the function can be written in the form of a polynomial, the solution, or
the roots, can be found with the roots command, as explained in Chapter 8
(Section 8.1.2).

• The fzero command can also be used to find the value of x where the function
has a specific value. This is done by translating the function up or down. For
example, in the function of Sample Problem 9-1 the first value of  x where the
function  is  equal  to  0.1  can  be  determined  by  solving  the  equation

. This is shown below:

>> x=fzero('x*exp(-x)-0.3',0.5)

x =
    0.4894

9.2 FINDING A MINIMUM OR A MAXIMUM OF A FUNCTION

y

f x=

In many applications there is a need to determine the local minimum or maxi-
. In calculus the value of x that corre-
mum of a function of the form
sponds to a local minimum or maximum is determined by finding the zero of
the derivative of the function. The value of y is determined by substituting the x
into  the  function.  In  MATLAB  the  value  of  x  where  a  one-variable  function
 has a minimum can be determined with the
f x
fminbnd command which has the form:

 within the interval

x = fminbnd(function,x1,x2)

The value of x where the
function has a minimum.

The function.

The interval of x.

• The function can be entered as a string expression, or as a function handle, in

the same way as with the fzero command. See Section 9.1 for details.

• The value of the function at the minimum can be added to the output by using

the option
          [x fval]=fminbnd(function,x1,x2)

where the value of the function at x is assigned to the variable fval.

• Within a given interval, the minimum of a function can either be at one of the
end points of the interval or at a point within the interval where the slope of the
function  is  zero  (local  minimum).  When  the  fminbnd  command  is  executed,
MATLAB looks for a local minimum. If a local minimum is found, its value is

9.2 Finding a Minimum or a Maximum of a Function

299

compared to the value of the function at the end points of the interval. MAT-
LAB returns the point with the actual minimum value for the interval.

For  example,  consider

the

function

30

20

10

, which is plot-
ted in  the  interval
 in the  figure  on
the  right.  It  can  be  observed  that  there  is  a
local minimum between 5 and 6, and that the
.  Using  the
absolute  minimum  is  at
interval
fminbnd  command  with
 to find the location of the local min-
imum and the value of the function at this point gives:

the

0=

x

-30

-20

-10

-40

)
x
(
f

0

0

1

2

3

4
x

5

6

7

8

>> [x fval]=fminbnd('x^3-12*x^2+40.25*x-36.5',3,8)

x =
    5.6073
fval =
  -11.8043

The local minimum is at
value of the function at this point is –11.8043.

. The

5.6073

=

x

Notice that the fminbnd command gives the local minimum. If the interval is
changed to

, fminbnd gives:

>> [x fval]=fminbnd('x^3-12*x^2+40.25*x-36.5',0,8)

x =
     0
fval =
  -36.5000

The minimum is at
of the function at this point is –36.5.

. The value

0=

x

.

x

0=

For this interval the fminbnd command gives the absolute minimum which is
at the end point
• The fminbnd command can also be used to find the maximum of a function.
This is done by multiplying the function by –1 and finding the minimum. For
 (from Sample Problem
example, the maximum of the function
 can be determined by finding the minimum of the
9-1) in the interval
 as shown below:
function

>> [x fval]=fminbnd('-x*exp(-x)+0.2',0,8)

x =
    1.0000
fval =
   -0.1679

The maximum is at x = 1.0. The value of
the function at this point is 0.1679.

300

Chapter 9: Applications in Numerical Analysis

9.3 NUMERICAL INTEGRATION

Integration  is  a  common  mathematical  operation  in  science  and  engineering.
Calculating area and volume, velocity from acceleration, and work from force
and displacement are just a few examples where integrals are used. Integration
of  simple  functions  can  be  done  analytically,  but  more  involved  functions  are
frequently  difficult  or  impossible  to  integrate  analytically.  In  calculus  courses
the integrand  (the quantity  to be integrated) is usually a function. In  applica-
tions of science and engineering the integrand can be a function or a set of data
points.  For  example,  data  points  from  discrete  measurements  of  flow  velocity
can be used to calculate volume.

It  is  assumed  in  the  presentation  below  that  the  reader  has  knowledge  of
 from a to b has

integrals and integration. A definite integral of a function
the form:

f x

q

=

b
f x xd
a

y

f(x)

q

f x

 is always a function. When the integral is calculated numerically

The function
 is called the integrand, and the
numbers  a  and  b  are  the  limits  of  integration.
Graphically, the value of the integral q is the area
between the graph of the function, the x axis, and
the limits a and b (the shaded area in the figure).
When a definite integral is calculated analytically
 can
f x
be  a  function  or  a  set  of  points.  In  numerical  integration  the  total  area  is
obtained  by dividing  the area  into  small sections, calculating the  area  of each
section, and adding them up. Various numerical methods have been developed
for this purpose. The difference between the methods is in the way that the area
is divided into sections and the method by which the area of each section is cal-
culated.  Books  on  numerical  analysis  include  details  of  the  numerical  tech-
niques.

f x

x

b

a

The following discussion describes how to use the three MATLAB built-in
integration functions quad, quadl, and trapz. The quad and quadl com-
mands  are  used  for  integration  when
  is  a  function,  and  trapz  is  used
when

 is given by data points.

f x

f x

The quad command:

The form of the quad command, which uses the adaptive Simpson method of
integration, is:

q = quad(function,a,b)

The value of the integral.

The  function  to
be integrated.

The integration limits.

9.3 Numerical Integration

301

• The function can be entered as a string expression or as a function handle, in the
same way as with the fzero command. See Section 9.1 for details. The first two
methods are demonstrated in Sample Problem 9-2.

• The  function

  must  be  written  for  an  argument  x  that  is  a  vector  (use
element-by-element operations) such that it calculates the value of the function
for each element of x.

f x

• The user has to make sure that the function does not have a vertical asymptote

between a and b.

• quad calculates the integral with an absolute error that is smaller than 1.0e–6.
This number can be changed by adding an optional tol argument to the com-
mand:
      q = quad(‘function’,a,b,tol)
tol is a number that defines the maximum error. With larger tol the integral is
calculated less accurately but faster.

The quadl command:

The form of the quadl (the last letter is a lowercase L) command is exactly the
same as that of the quad command:

q = quadl(function,a,b)

The value of the integral.

The  function  to
be integrated.

The integration limits.

All  of  the  comments  that  are  listed  for  the  quad  command  are  valid  for  the
quadl command. The difference between the two commands is the numerical
method  used  for  calculating  the  integration.  The  quadl  command  uses  the
adaptive Lobatto method, which can be more efficient for high accuracies and
smooth   integrals.

Sample Problem 9-2: Numerical integration of a function

Use numerical integration to calculate the following integral:

8

0

302

Solution

Chapter 9: Applications in Numerical Analysis

For illustration, a plot of the function for the
interval
 is shown on the right. The
solution uses the quad command and shows
how to enter the function in the command in
two ways. In the first, it is entered directly by
typing the expression as an argument. In the
second,  an  anonymous  function  is  created
and  its  name  is  subsequently  entered  in  the
command.

0.6

0.5

0.4

)
x
(
f

0.3

0.2

0.1

0

0

2

4
x

6

8

The use of the quad command in the Command Window, with the function
to be integrated typed in as a string, is shown below. Note that the function is
typed with element-by-element operations.

>> quad('x.*exp(-x.^0.8)+0.2',0,8)

ans =
    3.1604

The second method is to first create a user-defined function that calculates
the function to be integrated. The function file (named y=Chap9Sam2(x)) is:

function y=Chap9Sam2(x)

y=x.*exp(-x.^0.8)+0.2;

Note again that the function is written with element-by-element operations such
that the argument x can be a vector. The integration is then done in the Com-
mand Window by typing the handle @Chap9Sam2 for the argument function
in the quad command as shown below:

>> q=quad(@Chap9Sam2,0,8)

q =
    3.1604

The trapz command:

The  trapz  command  can  be  used  for  integrating  a  function  that  is  given  as
data points. It uses the numerical trapezoidal method of integration. The form
of the command is

q = trapz(x,y)

where x and  y  are vectors with the x and y coordinates of the points, respec-
tively. The two vectors must be of the same length.

9.4 Ordinary Differential Equations

303

9.4 ORDINARY DIFFERENTIAL EQUATIONS

Differential equations play a crucial role in science and engineering since they
are in the foundation of virtually every physical phenomenon that is involved in
engineering applications. Only a limited number of differential equations can be
solved  analytically.  Numerical  methods,  on  the  other  hand,  can  result  in  an
approximate  solution  to  almost  any  equation.  Obtaining  a  numerical  solution
might not be simple task however. This is because a numerical method that can
solve any equation does not exist. Instead, there are many methods that are suit-
able  for  solving  different  types  of  equations.  MATLAB  has  a  large  library  of
tools  that  can  be  used  for  solving  differential  equations.  To  fully  utilize  the
power of MATLAB, however, requires that the user have knowledge of differen-
tial equations and the various numerical methods that can be used for solving
them.

This section describes in detail how to use MATLAB to solve a first-order
ordinary differential equation. The possible numerical methods that can be used
for  solving  such  an  equation  are  described  in  general  terms,  but  are  not
explained from a mathematical point of view. This section provides information
for  solving  simple,  “nonproblematic”  first-order  equations.  This  solution  pro-
vides the basis for solving higher-order equations and systems of equations.

An  ordinary  differential  equation  (ODE)  is  an  equation  that  contains  an
independent  variable,  a  dependent  variable,  and  derivatives  of  the  dependent
variable. The equations that are considered here are of first order with the form

dy
------
dx

=

f x y,

y

f x=

where x and y are the independent and dependent variables, respectively. A solu-
tion is a function
 that satisfies the equation. In general, many func-
tions  can  satisfy  a  given  ODE,  and  more  information  is  required  for
determining  the  solution  of  a  specific  problem.  The  additional  information  is
the value of the function (the dependent variable) at some value of the indepen-
dent variable.

Steps for solving a single first-order ODE:

For the remainder of this section the independent variable is taken as t (time).
This is done because in many applications time is the independent variable, and
also to be consistent with the information in the Help menu of MATLAB.

Step 1:Write the problem in a standard form.

Write the equation in the form:
dy
------
dt

f t y,

    for

=

,  with

y

y0=

 at

t

t0=

.

As shown above, three pieces of information are needed for solving a first order
ODE: An equation that gives an expression for the derivative of y with respect
to t, the interval of the independent variable, and the initial value of y. The solu-
tion is the value of y as a function of t between

 and

.

t0

tf

304

Chapter 9: Applications in Numerical Analysis

An example of a problem to solve is:

   for

  with

y

4.2=

 at

t

1=

.

Step 2:Create a user-defined function (in a function file) or an anonymous function.
The ODE to be solved has to be written as a user-defined function (in a function

file) or as an anonymous function. Both calculate

dy
------
dt

 for given values of t and y.

For the example problem above, the user-defined function (which is saved as a
separate file) is:

function dydt=ODEexp1(t,y)

dydt=(t^3-2*y)/t;

When an anonymous function is used, it can be defined in the Command Win-
dow,  or  be  within  a  script  file.  For  the  example  problem  here  the  anonymous
function (named ode1) is:

>> ode1=@(t,y)(t^3-2*y)/t
ode1 =
    @(t,y)(t^3-2*y)/t

Step 3:Select a method of solution.

Select the numerical method that you would like MATLAB to use in the solu-
tion. Many numerical methods have been developed to solve first-order ODEs,
and several of the methods are available as built-in functions in MATLAB. In a
typical numerical method, the time interval is divided into small time steps. The
solution starts at the known point y0, and then by using one of the integration
methods the value of y is calculated at each time step. Table 9-1 lists seven ODE
solver commands, which are MATLAB built-in functions that can be used for
solving a first-order ODE. A short description of each solver is included in the
table.

Table 9-1: MATLAB ODE Solvers

ODE Solver Name

Description

ode45

ode23

For  nonstiff  problems,  one-step  solver,  best  to
apply  as  a  first  try  for  most  problems.  Based  on
explicit Runge-Kutta method.

For  nonstiff  problems,  one-step  solver.  Based  on
explicit  Runge-Kutta  method.  Often  quicker  but
less accurate than ode45.

ode113

For nonstiff problems, multistep solver.

9.4 Ordinary Differential Equations

305

Table 9-1: MATLAB ODE Solvers (Continued)

ODE Solver Name

Description

ode15s

ode23s

ode23t

ode23tb

For stiff problems, multistep solver. Use if ode45
failed. Uses a variable order method.

For stiff problems, one-step solver. Can solve some
problems that ode15s cannot.

For moderately stiff problems.

For  stiff  problems.  Often  more  efficient  than
ode15s.

In  general,  the  solvers  can  be  divided  into  two  groups  according  to  their
ability to solve stiff problems and according to whether they use on-step or mul-
tistep  methods.  Stiff  problems  are  ones  that  include  fast  and  slowly  changing
components and require small time steps in their solution. One-step solvers use
information  from  one  point  to  obtain  a  solution  at  the  next  point.  Multistep
solvers use information from several previous points to find the solution at the
next  point.  The  details  of  the  different  methods  are  beyond  the  scope  of  this
book.

It is impossible to know ahead of time which solver is the most appropriate
for  a  specific  problem.  A  suggestion  is  to  first  try  ode45,  which  gives  good
results for many problems. If a solution is not obtained because the problem is
stiff, trying the solver ode15s is suggested.

Step 4:

Solve the ODE.

The form of the command that is used to solve an initial value ODE problem is
the same for all the solvers and for all the equations that are solved. The form is:

[t,y] = solver_name(ODEfun,tspan,y0)

Additional information:

solver_name  Is the name of the solver (numerical method) that is used (e.g.

ode45 or ode23s)

ODEfun

The function from Step 2 that calculates

dy
------
dt

 for given values

tspan

of  t  and  y.  If  it  was  written  as  a  user-defined  function,  the
function handle is entered. If it was written as an anonymous
function, the name of the anonymous function is entered. (See
the example that follows.)

A vector that specifies the interval of the solution. The vector
must  have  at  least  two  elements  but  can  have  more.  If  the
vector has only two elements, the elements must be [t0 tf],
which are the initial and final points of the solution interval.

306

Chapter 9: Applications in Numerical Analysis

y0

[t,y]

The  vector  tspan  can  have,  however,  additional  points
between the first and last points. The number of elements in
tspan  affects  the  output  from  the  command.  See  [t,y]
below.

The initial value of  y (the value of  y at the first point of the
interval).

The  output,  which  is  the  solution  of  the  ODE.  t  and  y  are
column vectors. The first and the last points are the beginning
and  end  points  of  the  interval.  The  spacing  and  number  of
points  in  between  depends  on  the  input  vector  tspan.  If
tspan has two elements (the beginning and end points), the
vectors t and y contain the solution at every integration step
calculated by the solver. If tspan has more than two points
(additional points between the first and the last), the vectors t
and y contain the solution only at these points. The number
of points in tspan does not affect the time steps used for the
solution by the program.

For example, consider the solution to the problem stated in Step 1:

   for

  with

y

4.2=

 at

t

1=

,

If the ODE function is written as a user-defined function (see Step 2), then the
solution with MATLAB’s built-in function ode45 is obtained by:

>> [t y]=ode45(@ODEexp1,[1:0.5:3],4.2)

The initial value.

The vector tspan.

The handle of the user-defined function ODEexp1.

t =
    1.0000

    1.5000

    2.0000

    2.5000

    3.0000

y =
    4.2000

    2.4528

    2.6000

    3.7650

    5.8444

The solution is obtained with the solver ode45. The name of the user-defined
function  from  Step  2  is  ODEexp1.  The  solution  starts  at
  and  ends  at
  with  increments  of  0.5  (according  to  the  vector  tspan).  To  show  the
t
solution, the problem is solved again below using tspan with smaller spacing,

3=

1=

t

9.5 Examples of MATLAB Applications

307

and the solution is plotted with the plot command.

>> [t y]=ode45(@ODEexp1,[1:0.01:3],4.2);

>> plot(t,y)

>> xlabel('t'), ylabel('y')

y

6
5.5
5
4.5
4
3.5
3
2.5
2

1

1.5

2
t

2.5

3

If the ODE function is written as an anonymous function called ode1 (see Step
2), then the solution (same as shown above) is obtained by typing:
[t y]=ode45(ode1,[1:0.5:3],4.2)

9.5 EXAMPLES OF MATLAB APPLICATIONS

Sample Problem 9-3: The gas equation

The ideal gas equation relates the volume (V in L), temperature (T in K), pres-
sure (P in atm), and the amount of gas (number of moles n) by:

p

=

nRT
------------
V

where R = 0.08206 (L atm)/(mol K) is the gas constant.

The van der Waals equation gives the relationship between these quantities

for a real gas by

where a and b are constants that are specific for each gas.

Use the fzero function to calculate the volume of 2 mol CO2 at temperature of
50°C, and pressure of 6 atm. For CO2, a = 3.59 (L2 atm)/mol2, and b = 0.0427 L/
mol.

Solution

The solution written in a script file is shown below.

global P T n a b R

308

Chapter 9: Applications in Numerical Analysis

R=0.08206;

P=6; T=323.2; n=2; a=3.59; b=0.047;

Vest=n*R*T/P;

V=fzero(@Waals,Vest)

Calculating an estimated value for V.

Function handle @waals is used to pass the
user-defined function waals into fzero.

The program first calculates an estimated value of the volume using the ideal gas
equation. This value is then used in the fzero command for the estimate of the
solution.  The  van  der  Waals  equation  is  written  as  a  user-defined  function
named Waals, which is shown below:

function fofx=Waals(x)

global P T n a b R

fofx=(P+n^2*a/x^2)*(x-n*b)-n*R*T;

In order for the script and function files to work correctly, the variables P, T, n,
a, b, and R are declared global. When the script file (saved as Chap9SamPro3) is
executed in the Command Window, the value of V is displayed, as shown next:

>> Chap9SamPro3

V =
    8.6613

The volume of the gas is 8.6613 L.

Sample Problem 9-4: Maximum viewing angle

To get the best view of a movie, a person has to
sit at a distance x from the screen such that the
viewing  angle
  is  maximum.  Determine  the
distance x for which   is maximum for the con-
figuration shown in the figure.

Solution

The problem is solved by writing a function
for the angle   in terms of x, and then finding
the x for which the angle is maximum. In the
triangle that includes  , one side is given (the
height of the screen), and the other two sides
can be written in terms of x, as shown in the
figure. One way in which
Cosines:

x2

412+

36

x2

52+

 can be written in terms of x is by using the Law of

9.5 Examples of MATLAB Applications

309

0

1=

The angle
/2.  Since

 is expected to be between 0 and
  and  the  cosine  is
cos
decreasing  with  increasing
,  the  maximum
angle  corresponds  to  the  smallest  cos( ).  A
 as a function of x shows that
plot of
the function has a minimum between 10 and
20. The commands for the plot are:

cos

>>fplot('((x^2+5^2)+(x^2+41^2)-36^2)/(2*sqrt(x^2+ 5^2)*sqrt(x^2+
                                               41^2))',[0 25])

>> xlabel('x'); ylabel('cos(\theta)')

The minimum can be determined with the fminbnd command:

>>[x anglecos]=fminbnd('((x^2+5^2)+(x^2+41^2)-36^2)/
                    (2*sqrt(x^2+5^2)*sqrt(x^2+41^2))',10,20)

x =
   14.3178
anglecos =
    0.6225

>> angle=anglecos*180/pi
angle =
   35.6674

The minimum is at x = 14.3178 m.
The minimum is at x = 14.3178 m.
The minimum is at x = 14.3178 m.
At this point cos( ) = 0.6225.
At this point cos( ) = 0.6225.
At this point cos( ) = 0.6225.

In degrees the angle is 35.6674°.

Sample Problem 9-5: Water flow in a river

To estimate the amount of water that flows
in a river during a year, a section of the river
is made to have a rectangular cross section
as shown. In the beginning of every month
(starting at January 1st) the height h of the
water and the speed v of the water flow are
measured.  The  first  day  of  measurement  is
taken as 1, and the last day—which is Janu-
ary 1st of the next year—is day 366. The fol-
lowing data was measured:

Day
h (m)
v (m/s)

1

2.0

2.0

32

2.1

2.2

60

2.3

2.5

91

2.4

2.7

121

3.0

5

152

182

213

244 274

305

335

366

2.9

4.7

2.7

4.1

2.6

3.8

2.5

3.7

2.3

2.8

2.2

2.5

2.1

2.3

2.0

2.0

Use the data to calculate the flow rate, and then integrate the flow rate to obtain
an estimate of the total amount of water that flows in the river during a year.

310

Solution

Chapter 9: Applications in Numerical Analysis

The flow rate, Q (volume of water per second), at each data point is obtained by
multiplying the water speed by the width and height of the cross-sectional area
of the water that flows in the channel:

The total amount of water that flows is estimated by the integral:

Q

=

vwh

   (m3/s)

t2
Q td

t1

The flow rate is given in cubic meters per second, which means that time must
have  units  of  seconds.  Since  the  data  is  given  in  terms  of  days,  the  integral  is
multiplied by

 s/day.

The following is a program written in a script file that first calculates Q and
then carries out the integration using the trapz command. The program also
generates a plot of the flow rate versus time.

w=8;

d=[1 32 60 91 121 152 182 213 244 274 305 335 366];

h=[2 2.1 2.3 2.4 3.0 2.9 2.7 2.6 2.5 2.3 2.2 2.1 2.0];

speed=[2 2.2 2.5 2.7 5 4.7 4.1 3.8 3.7 2.8 2.5 2.3 2];

Q=speed.*w.*h;

Vol=60*60*24*trapz(d,Q);

fprintf('The  estimated  amount  of  water  that  flows  in  the
river in a year is %g cubic meters.',Vol)

plot(d,Q)

xlabel('Day'), ylabel('Flow Rate (m^3/s)')

When the file (saved as Chap9SamPro5) is executed in the Command Window,
the estimated amount of water is displayed and the plot is generated. Both are
shown below:.

>> Chap9SamPro5

The estimated amount of water that flows in the river in a
year is 2.03095e+009 cubic meters.

9.5 Examples of MATLAB Applications

311

)
s
/
3
m

(
e

t

a
R
w
o
F

l

120

100

80

60

40

20

0

50

100 150 200 250 300 350 400

Day

Sample Problem 9-6: Car crash into a safety bumper

A safety bumper is placed at the end of a
racetrack to stop out-of-control cars. The
bumper  is  designed  such  that  the  force
that  the  bumper  applies  to  the  car  is  a
function  of  the  velocity  v  and  the  dis-
placement x of the front edge of the bumper according to the equation:

F

=

Kv3 x

1+ 3

where K = 30 (s kg)/m5 is a constant.

A  car  with  a  mass  m  of  1,500  kg  hits  the  bumper  at  a  speed  of  90  km/h.
Determine  and  plot  the  velocity  of  the  car  as  a  function  of  its  position  for

 m.

Solution

The deceleration of the car once it hits the bumper can be calculated from New-
ton’s second law of motion,

which can be solved for the acceleration a as a function of v and x:

The velocity as a function of x can be calculated by substituting the acceleration
in the equation

which gives:

vdv

=

adx

The last equation is a first-order ODE that needs to be solved for the interval
90=

 with the initial condition

 km/h at

0=

x

v

.

A numerical solution of the differential equation with MATLAB is shown

312

Chapter 9: Applications in Numerical Analysis

in the following program, which is written in a script file:

global k m

k=30; m=1500; v0=90;

xspan=[0:0.2:3];

v0mps=v0*1000/3600;

A vector that specifies the interval of the solution.
Changing the units of v0 to m/s.

[x v]=ode45(@bumper,xspan,v0mps)

Solving the ODE.

plot(x,v)

xlabel('x (m)'); ylabel('velocity (m/s)')

Note  that  the  function  handle  @bumper  is  used  for  passing  the  user-defined
function bumper into ode45. The listing of the user-defined function with the
differential equation, named bumper, is:

function dvdx=bumper(x,v)

global k m

dvdx=-(k*v^2*(x+1)^3)/m;

When the script file executes (saved as Chap9SamPro6) the vectors x and v are
displayed in the Command Window (actually, they are displayed on the screen
one  after  the  other,  but  to  save  room  they  are  displayed  below  next  to  each
other).

>> Chap9SamPro6

x =
         0

v =
   25.0000

    0.2000

   22.0420

    0.4000

   18.4478

    0.6000

   14.7561

    0.8000

   11.4302

    1.0000

    8.6954

    1.2000

    6.5733

    1.4000

    4.9793

    1.6000

    3.7960

    1.8000

    2.9220

    2.0000

    2.2737

    2.2000

    1.7886

    2.4000

    1.4226

    2.6000

    1.1435

    2.8000

    0.9283

9.6 Problems

313

    3.0000

    0.7607

The plot generated by the program of the velocity as a function of distance is:

25

20

15

10

)
s
/
m

(

y
t
i
c
o
e
v

l

5

0
0

0.5

1

1.5
x (m)

2

2.5

3

9.6 PROBLEMS

1. Determine  the  two  solutions  of  the  equation

  between

and

.

2. Determine the solution of the equation

3. Determine the three roots of the equation

.

.

4. Determine the positive roots of the equation

.

5. The area A of a circle segment is given by:

Determine the angle   (in degrees) if

in. and

in2.

6. The position s of the slider as a func-
  in  the  crank-slider  mecha-

tion  of
nism shown is given by:

Given

in.,

in., and

in., determine the angle  , when

in. (There are two solutions.)

7. The  van  der  Waals  equation  gives  a  relationship  between  the  pressure  p

(atm), volume V (L), and temperature T (K) for a real gas:

314

Chapter 9: Applications in Numerical Analysis

where n is the number of moles,
R
stant, and a (L2 atm/mol2) and b (L/mol) are material constants.

0.08206

(L atm)/(mol K) is the gas con-

=

Determine  the  volume  of  1.5  mol  of  nitrogen  (

a

=

1.39

  L2  atm/mol2,

b

=

0.03913

 L/mol) at temperature of 350 K and pressure of 70 atm.

8. An estimate of the minimum velocity required for a round flat stone to skip
when it hits the water is given by (Lyderic Bocquet, “The Physics of Stone
Skipping,” Am. J. Phys., vol. 71, no. 2, February 2003):

where M and d are the stone mass and diameter,

 is the water density, C is

w

a coefficient,

 is the tilt angle of the stone,

 is the incidence angle, and

g

=

9.81

C

1=

,

m/s2.  Determine  d  if
1,000 kg/m3, and
w =

V

0.8=

m/s.  (Assume  that

M 0.1=

kg,

=

=

10

.)

9. A  series  RLC  circuit  with  an  AC  voltage
source is shown. The amplitude of the cur-
rent, I, in this circuit is given by:

V

d

=

2 fd

where
 is the driving
 in which
frequency; R and C are the resistance of the
resistor and capacitance of the capacitor, respectively; and

fd

C

R

L

vm

 is the ampli-

tude  of  V.  For  the  circuit  in  the  figure

R

80=

,

F,

Determine

H, and

vm

10=
 for which

V.

A. (There are two solutions.)

10. For  fluid  flow  in  a  pipe,  the  Colebrook–White  (or  Colebrook)  equation
gives  a  relationship  between  the  friction  coefficient,  f,  and  the  Reynolds
number:

where k/d is the pipe relative roughness. Determine f if

, and

.

9.6 Problems

315

11. Using MATLAB’s built-in function fminbnd, determine the minimum and

the maximum of the function

12. A flat rectangular sheet of metal that is
70 in. wide and 120 in. long is formed to
make  a  container  with  the  geometry
shown  in  the  figure.  (Additional  flat
metal  pieces  are  attached  at  the  ends.)
Using  MATLAB’s  built-in  function
fminbnd,  determine  the  value  of  h
such  that  the  container  will  have  the
maximum  possible  volume,  and  deter-
mine the corresponding volume.

120 in.

h

45

45

13. Using  MATLAB’s  built-in  function  fminbnd,
determine  the  dimensions  (radius  r  and  height  h)
and the volume of the cylinder with the largest vol-
ume  that  can  be  made  inside  of  a  cone  with  a
radius R of 20 in. and height H of 50 in.

14. A prismatic box with equilateral triangular base is
made from a equilateral triangular sheet with sides s
by  cutting  off  the  corners  and  folding  the  edges
in.,  use  MAT-
along  the  dashed  lines.  For
LAB’s built-in function fminbnd to determine the
value of x such that the box will have the maximum
possible  volume,  and  determine  the  corresponding
volume.

15. An  RLC  circuit  with  an  alternating  voltage
  is
source  is  shown.  The  source  voltage
, in
, where
given by
vs
 is the driving frequency. The ampli-
which
fd
tude  of  the  current,  I,  in  this  circuit  is  given
by:

vs
2 fd

vm

sin

dt

=

=

d

vs

H=50 in.

h

r

R=20 in.

x

s

R

L

C

where  R  and  C  are  the  resistance  of  the  resistor  and  capacitance  of  the

capacitor,  respectively.  For  the  circuit

in  the  figure

F,

316

Chapter 9: Applications in Numerical Analysis

V.  Plot  I  as  a  function  of  f  for
H,
 Hz. Using MATLAB’s built-in function fminbnd, determine

 ,  and

26=

vm

the frequency where I is maximum and the corresponding value of I.

16. A  108-in.-long  beam  AB  is  attached  to
the wall  with a pin  at point  A and to a
68-in.-long cable CD. A load
lb
is attached to the beam at point B. The
tension in the cable T is given by:

W 250
=

C

LC

A

D

d

L

B

W

where L and LC are the lengths of the beam and the cable, respectively, and d
is the distance from point A to point D, where the cable is attached. Make a
plot of T versus d. Determine the distance d where the tension in the cable is
the smallest.

17. Use MATLAB to calculate the following integrals:

(a)

11

1

(b)

7

2

18. Use MATLAB to calculate the following integrals:

(a)

3

0

(b)

8

0

19. The speed of a race car during the first 7 s of a race is given by:

t (s)
v (mi/h)

0
0

1
14

2
39

3
69

4
95

5
114

6
129

7
139

Determine the distance the car traveled during the first 7 s.

20. A  rubber  band  is  stretched  by fixing  one  end  pulling the  other  end.  Mea-
surements of the applied force at different displacements are given in the fol-
lowing table:

x (in.)
F (lb)

0
0

0.4
0.85

0.8
1.30

1.2
1.60

1.6
1.87

2.0
2.14

2.4
2.34

2.8
2.52

Determine the work done by the force while stretching the rubber band.

9.6 Problems

317

21. Use  numerical  integration  to  approxi-
mate the size of the shaded area shown in
the figure. Create a vector with values of
x from 1 through 10 and estimate the cor-
responding  y  coordinate.  Then,  deter-
mine the area by using MATLAB’s built-
in function trapz.

y

6

5

4

3

2

1

1

2

3

4

5

6

7

8

9 10

x

22. The electric wire that connects the house to the

pole has the shape of a catenary:

By using the equation:

L

=

b

a

1

+

f x 2

xd

determine the length of the wire.

y

24 ft

-12 ft

x

26 ft

23. The flow rate Q (volume of fluid per sec-
ond)  in  a  round  pipe  can  be  calculated
by:

R

r

Q

=

r

0

2 vr rd

For turbulent flow the velocity profile

can be estimated by:

. Determine Q for

R

=

0.25

in.,

n

7=

,

vmax

80=

in./s.

24. The  length  of  a  curve  given  by  a  parametric

equation

x t

,

y t

 is given by:

y

b

a

x t

2

+

y t

2

td

The cardioid curve shown in the figure is given
by:

  and

with
and determine the length of the curve.

.  Plot  the  cardioid  with

b

5=

x

25. The variation of gravitational acceleration g with altitude y is given by:

g

=

R2
---------------------g0
R y+ 2

R

m/s2  is  the
where
gravitational acceleration at sea level. The change in the gravitational poten-

km  is  the  radius  of  the  Earth,  and

6371

9.81

g0

=

=

318

Chapter 9: Applications in Numerical Analysis

tial energy,  U, of an object that is raised from the Earth is given by:

U

=

h
mg yd

0

Determine the change in the potential energy of a satellite with a mass of
500 kg that is raised from the surface of the Earth to a height of 800 km.

y

[mi]

26. An approximate map of Lake Erie
is shown in the figure. Use numeri-
cal integration to estimate the area
of the lake. Make a list of the width
of the lake as a function of x. Start
mi  and  use  incre-
with
ments  of  20  mi,  such  that  the  last
point  is
.  Compare  the
260
result with the actual area Lake Erie, which is 9,940 square miles.

40=

100

100

200

=

x

x

27. To estimate the surface area and volume of
a  football,  the  diameter  of  the  ball  is  mea-
sured at different points along the ball. The
surface area, S, and volume, V, can be deter-
mined by:

d

S

=

2

L

0

r zd

   and

V

=

r2 zd

L

0

x
[mi]

300

z

Use the data given in the table to determine the volume and surface area of
the ball.

z (in.) 0
d (in.) 0

1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0
2.6 3.2 4.8 5.6

6.2 6.0 5.6 4.8 3.3 2.6

6

0

28. A  cross-sectional  area  has  the  geometry
of half an ellipse,  as shown in the figure
to  the  right.  The  coordinate
  of  the
centroid of the area can be calculated by:

 y

b

where A is the area given by

A

=

1
--- ab
2

,

 is the moment of the area about

My

and
the y axis, given by:

My

=

xc Ad
A

=

2b

  Determine

 when

a

a

0
40=

mm and

b

15=

mm.

y

=

b 1

x2
----–
a2

c

x

a

x

xc

dA

dx

y

–=

b 1

x2
-----–
a2

9.6 Problems

319

29. The orbit of Mercury is elliptical in shape, with

km and

km. The

perimeter of an ellipse can be calculated by
2

b

a

P

=

4a

0

. Determine the distance Mer-

where
cury travels in one orbit. Calculate the average speed at which Mercury trav-
els (in km/s) if one orbit takes about 88 days.

30. The Fresnel integrals are:

S x

=

x

sin

t 2

td

   and

C x

=

cos

t 2

td

x

0

0
Calculate
C x
S x
plot two graphs—one of
second figure plot

  and

S x

  for
S x
 versus

C x

.

  (use  spacing  of  0.05).  In  one  figure
 versus x. In a

 versus x and the other of

C x

31. Use a MATLAB built-in function to numerically solve:

Plot the numerical solution.

  for

  with

32. Use a MATLAB built-in function to numerically solve:

 for

  with

y 0

2=

In one figure plot the numerical solution as a solid line and the exact solu-
tion as discrete points.

Exact solution:

.

33. Use a MATLAB built-in function to numerically solve:

  for

  with

In one figure plot the numerical solution as a solid line and the exact solu-
tion as discrete points (10 equally spaced points).

Exact solution:

.

34. Use a MATLAB built-in function to numerically solve:

  for

  with

y 1

1=

Plot the solution.

320

Chapter 9: Applications in Numerical Analysis

35. The growth of a fish is often modeled by the von Bertalanffy growth model:

a

5=

lb1/3,

where w is the weight and a and b are constants. Solve the equation for w for
the  case
lb.  Make  sure  that  the
selected  time  span  is  just  long  enough  so  that  the  maximum  weight  is
approached. What is the maximum weight for this case? Make a plot of w as
a function of time.

day–1,  and

0.5=

2=

w 0

b

4=
18=

36. A  water  tank  shaped  as  a  cone  (

m,
m)  has  a  circular  hole  at  the  bottom
H
(
mm), as shown. According to Torri-
d
celli’s law, the speed v of the water that is dis-
charging from the hole is given by:

2=

R

v

=

2gh

=

9.81

where  h  is  the  height  of  the  water  and
m/s2. The rate at which the height, h,
g
of the water in the tank changes as the water
flows out through the hole is given by:

R=2 m

H=4 m

h

v

d=18 mm

Solve  the  differential  equation  for  h.  The  initial  height  of  the  water  is
m. Solve the problem for different times and find an estimate for the
h
3=
time when
m. Make a plot of h as a function of time.

0.1=

h

37. The sudden outbreak of an insect population can be modeled by the equa-

tion

The  first  term  relates  to  the  well-known  logistic population  growth  model
where N is the number of insects, R is an intrinsic growth rate, and C is the
carrying capacity of the local environment. The second term represents the
effects of bird predation. Its effect becomes significant when the population
; r is the maximum value that the second term can
reaches a critical size
Nc
reach at large values of N.

Solve the differential equation for
0.58

 day–1, and with

 and

0.55

=

R

=

 days and two growth rates,
10,000. The other parame-
 day–1. Make one plot comparing the

N 0 =

104
ters are
two solutions and discuss why this model is called an “outbreak” model.

104

Nc

C

=

=

=

,

,

r

R
104

9.6 Problems

321

38. An  airplane  uses  a  parachute
and other means of braking as it
slows  down  on  the  runway  after
landing.  Its  acceleration  is  given
m/s2.  Since

by

, the rate of change of the

velocity is given by:

Consider an airplane with a velocity of 300 km/h that opens its parachute
and starts decelerating at t = 0 s.
(a) By solving the differential equation, determine and plot the velocity as a

function of time from t = 0 s until the airplane stops.

(b) Use numerical integration to determine the distance x the airplane trav-

els as a function of time. Make a plot of x versus time.

39. The population growth of species with limited capacity can be modeled by

the equation:

where N is the population size,
tion, and k, r, and
sent  the  effect  of  predation.  Consider  the  case  where
k

 is the limiting number for the popula-
 are constants. The second term in the equation repre-
6,000,
Nmax =
. Determine N for

Nmax

0.196

40=

50=

N 0

Nc

=

r

 1/yr,
yr. Make a plot of N as a function of t.

3,000, and

Nc =

 1/yr,

vs

40. An  RL  circuit  includes  a  voltage
, a resistor
source
 , and
R
H,  as  shown  in
an  inductor
L
0.4=
the  figure.  The  differential  equation
that describes the response of the cir-
cuit is

1.8=

L
----
R

diL
--------
dt

iL+

vs
----=
R

R

vs

+
_

L

vL (t)

iL

 is the current in the inductor. Initially

where
0=
the voltage source is changed. Determine the response of the circuit for the
following three cases:

, and then at

0=

iL

t

(a)

(b)

V for

.

V for

.

322

Chapter 9: Applications in Numerical Analysis

Each case  corresponds  to  a different  differential equation.  The  solution is
the  current  in  the  inductor  as  a  function  of  time.  Solve  each  case  for
  versus  time  (make  two  separate
  and

s.  For  each  case  plot

vs

iL

plots on the same page).

41. Growth of many organisms can be modeled with the equation:

m t

  is  the  mass  of  the  organism,

where
mas,  and  k  is  a  constant.  Solve  the  equation  for
k
function of time.

kg1/4/day,

kg and

mmax

mmax

0.3=

m 0

1=

300

=

  is  the  assumed  maximum
  days,  given
kg. Make a plot of m as a

42. The velocity, v, of an object that falls freely due to the Earth gravity can be

modeled with the equation:

where m is the mass of the object,
g
the  equation  for  v  for the  case  that
and

0.05
m/s. Make a plot of v as a function of time.

9.81
5=

=
m

0=

v 0

k

m/s2, and k is a constant. Solve
s,
kg/m,
kg,

=

