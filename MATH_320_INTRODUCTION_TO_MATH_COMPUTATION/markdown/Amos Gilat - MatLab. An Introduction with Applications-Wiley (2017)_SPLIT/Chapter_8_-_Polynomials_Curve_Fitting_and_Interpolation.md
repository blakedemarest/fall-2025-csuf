Chapter 8
Polynomials,
Curve Fitting, and
Interpolation

Polynomials are mathematical expressions that are frequently used for problem
solving  and  modeling  in  science  and  engineering.  In  many  cases  an  equation
that is written in the process of solving a problem is a polynomial, and the solu-
tion of the problem is the zero of the polynomial. MATLAB has a wide selec-
tion of functions that are specifically designed for handling polynomials. How
to use polynomials in MATLAB is described in Section 8.1.

Curve  fitting  is  a  process  of  finding  a  function  that  can  be  used  to  model
data.  The  function  does  not  necessarily  pass  through  any  of  the  points,  but
models the data with the smallest possible error. There are no limitations to the
type of the equations that can be used for curve fitting. Often, however, polyno-
mial, exponential, and power functions are used. In MATLAB curve fitting can
be done by writing a program or by interactively analyzing data that is displayed
in  the  Figure  Window.  Section  8.2  describes  how  to  use  MATLAB  program-
ming  for  curve  fitting  with  polynomials  and  other  functions.  Section  8.4
describes the basic fitting interface that is used for interactive curve fitting and
interpolation.

Interpolation  is  the  process  of  estimating  values  between  data  points.  The
simplest  kind  of  interpolation  is  done  by  drawing  a  straight  line  between  the
points.  In  a  more  sophisticated  interpolation,  data  from  additional  points  is
used. How to interpolate with MATLAB is discussed in Sections 8.3 and 8.4.

8.1 POLYNOMIALS

Polynomials are functions that have the form:

The coefficients

 are real numbers, and n which is a nonnegative

262

Chapter 8: Polynomials, Curve Fitting, and Interpolation

integer, is the degree, or order, of the polynomial.

Examples of polynomials are:

f x

=

5x5

+

6x2

+

7x

+

3

polynomial of degree 5.

polynomial of degree 2.
polynomial of degree 1.

f x

6=

A constant (e.g.,

) is a polynomial of degree 0.
In MATLAB, polynomials are represented by a row vector in which the ele-
. The first element is the coefficient of
ments are the coefficients
the  x  with  the  highest  power.  The  vector  has  to  include  all  the  coefficients,
including the ones that are equal to 0. For example:

Polynomial

8x

5+

,  MATLAB form:

,  MATLAB form:

MATLAB representation

p = [8  5]

d = [2  –4  10]

h = [6  0  –150]

c = [5  0  0  6  7  0]

8.1.1 Value of a Polynomial

The value  of  a  polynomial  at  a  point  x  can  be  calculated  with  the  function
polyval that has the form:

polyval(p,x)

p is a vector with the coef-
ficients of the polynomial.

x is a number, or a variable that
has an assigned value, or a com-
putable expression.

x can also be a vector or a matrix. In such a case the polynomial is calculated
for each element (element-by-element), and the answer is a vector, or a matrix,
with the corresponding values of the polynomial.

Sample Problem 8-1: Calculating polynomials with MATLAB

For the polynomial
(a) Calculate
.
(b) Plot the polynomial for

f 9

Solution

.

:

The problem is solved in the Command Window.
(a) The coefficients of the polynomials are assigned to vector p. The function

8.1 Polynomials

263

polyval is then used to calculate the value at x = 9.

>> p = [1 -12.1 40.59 -17.015 -71.95 35.88];

>> polyval(p,9)

ans =
  7.2611e+003

(b) To  plot  the  polynomial,  a  vector  x  is  first  defined  with  elements  ranging
from –1.5 to 6.7. Then a vector y is created with the values of the polynomial for
every element of x. Finally, a plot of y vs. x is made.

>> x=-1.5:0.1:6.7;

>> y=polyval(p,x);

>> plot(x,y)

Calculating the value of the polyno-
mial for each element of the vector x.

The plot created by MATLAB is presented below (axis labels were added with
the Plot Editor).

y

150

100

50

0

-50

-100

-150

-200

-2

-1

0

1

2

3

4

5

6

7

x

8.1.2 Roots of a Polynomial

The roots of a polynomial are the values of the argument for which the value of
the  polynomial  is  equal  to  zero.  For  example,  the  roots  of  the  polynomial

  are  the  values  of  x  for  which

,  which  are

 and x = 3.

MATLAB has a function, called roots, that determines the root, or roots,

of a polynomial. The form of the function is:

r = roots(p)

r  is  a  column  vector  with
the roots of the polynomial.

p is a row vector with the coef-
ficients of the polynomial.

For example, the roots of the polynomial in Sample Problem 8-1 can be deter-
mined by:

264

Chapter 8: Polynomials, Curve Fitting, and Interpolation

>> p= 1 -12.1 40.59 -17.015 -71.95 35.88];

>> r=roots(p)

r =
    6.5000
    4.0000
    2.3000
   -1.2000
    0.5000

When  the  roots  are  known,  the  polynomial  can
actually be written as:

The roots command is very useful for finding the roots of a quadratic equa-

tion. For example, to find the roots of

, type:

>> roots([4 10 -8])

ans =
   -3.1375
    0.6375

When  the  roots  of  a  polynomial  are  known,  the  poly  command  can  be
used for determining the coefficients of the polynomial. The form of the poly
command is:

p = poly(r)

p is a row vector with the coef-
ficients of the polynomial.

r is a vector (row or column)
with the roots of the polynomial.

For example, the coefficients of the polynomial in Sample Problem 8-1 can be
obtained from the roots of the polynomial (see above) by:

>> r=[6.5 4 2.3 -1.2 0.5];

>> p=poly(r)

p =
    1.0000  -12.1000   40.5900  -17.0150  -71.9500   35.8800

8.1.3 Addition, Multiplication, and Division of Polynomials

Addition:

Two polynomials can be added (or subtracted) by adding (subtracting) the vec-
tors  of  the  coefficients.  If  the  polynomials  are  not  of  the  same  order  (which
means that the vectors of the coefficients are not of the same length), the shorter
vector has to be modified to be of the same length as the longer vector by add-
ing zeros (called padding) in front. For example, the polynomials

 and

 can be added

by:

8.1 Polynomials

265

>> p1=[3 15 0 -10 -3 15 -40];

>> p2=[3 0 -2 -6];

>> p=p1+[0 0 0 p2]

p =
     3    15     0    -7    -3    13   -46

Three 0s are added in front
of p2, since the order of p1
is 6 and the order of p2 is 3.

Multiplication:

Two polynomials can be multiplied using the MATLAB built-in function conv,
which has the form:

c = conv(a,b)

c is a vector of the coefficients
of the polynomial that is the
product of the multiplication.

a  and  b  are  the  vectors  of  the
coefficients  of  the  polynomials
that are being multiplied.

• The two polynomials do not have to be of the same order.

• Multiplication of three or more polynomials is done by using the conv function

repeatedly.

For example, multiplication of the polynomials

f1 x

 and

f2 x

 above gives:

>> pm=conv(p1,p2)

pm =
     9    45    -6   -78   -99    65   -54   -12   -10   240

which means that the answer is:

Division:

A polynomial can be divided by another polynomial with the MATLAB built-in
function deconv, which has the form:

[q,r] = deconv(u,v)

q  is  a  vector  with  the  coefficients
of the quotient polynomial.
r  is  a  vector  with  the  coefficients
of the remainder polynomial.

u is a vector with the coefficients of
the numerator polynomial.
v is a vector with the coefficients of
the denominator polynomial.

For example, dividing

 by

x

3+

 is done by:

>> u=[2 9 7 -6];

>> v=[1 3];

266

Chapter 8: Polynomials, Curve Fitting, and Interpolation

>> [a b]=deconv(u,v)

a =
     2     3    -2

b =
     0     0     0     0

The answer is:

.

Remainder is zero.

An  example  of  division  that  gives  a  remainder  is

divided by

:

>> w=[2 -13 0 75 2 0 -60];

>> z=[1 0 -5];

>> [g h]=deconv(w,z)

g =
    2  -13   10   10   52

The quotient is:

h =
    0   0   0   0   0   50   200

The remainder is:

.

.

The answer is:

.

8.1.4 Derivatives of Polynomials

The built-in function polyder can be used to calculate the derivative of a sin-
gle polynomial, a product of two polynomials, or a quotient of two polynomials,
as shown in the following three commands.

k = polyder(p)

k = polyder(a,b)

Derivative  of  a  single  polynomial.  p  is  a  vector  with
the coefficients of the polynomial. k is a vector with
the  coefficients  of  the  polynomial  that  is  the  deriva-
tive.

Derivative of a product of two polynomials. a and b
are  vectors  with  the  coefficients  of  the  polynomials
that are multiplied. k is a vector with the coefficients
of the polynomial that is the derivative of the product.

[n d]= polyder(u,v) Derivative of a quotient of two polynomials. u and v
are vectors with the coefficients of the numerator and
denominator polynomials. n and d are  vectors  with
the  coefficients  of  the  numerator  and  denominator
polynomials in the quotient that is the derivative.

The  only  difference  between  the  last  two  commands  is  the  number  of  output
arguments. With two output arguments MATLAB calculates the derivative of
the quotient of two polynomials. With one output argument, the derivative is of
the product.

8.2 Curve Fitting

267

For  example,  if

,  and

,  the  derivatives  of

,

, and

 can be determined by:

Creating the vectors of coefficients of f1 and f2.

>> f1= 3 -2 4];
>> f2=[1 0 5];

>> k=polyder(f1)

k =
     6    -2

>> d=polyder(f1,f2)

The derivative of f1 is:

.

.

d =
    12    -6    38   -10

The derivative of f1*f2 is:

>> [n d]=polyder(f1,f2)

n =
     2    22   -10

The derivative of

 is:

.

d =
     1     0    10     0    25

8.2 CURVE FITTING

Curve fitting, also called regression analysis, is a process of fitting a function to
a set of data points. The function can then be used as a mathematical model of
the  data.  Since  there  are  many  types  of  functions  (linear,  polynomial,  power,
exponential, etc.), curve fitting can be a complicated process. Many times one
has some idea of the type of function that might fit the given data and will need
only  to  determine  the  coefficients  of  the  function.  In  other  situations,  where
nothing is known about the data, it is possible to make different types of plots
that  provide  information  about  possible  forms  of  functions  that  might  fit  the
data well. This section describes some of the basic techniques for curve fitting
and the tools that MATLAB has for this purpose.

8.2.1 Curve Fitting with Polynomials; The polyfit Function

Polynomials can be used to fit data points in two ways. In one the polynomial
passes through all the data points, and in the other the polynomial does not nec-
essarily pass through any of the points but overall gives a good approximation
of the data. The two options are described below.

Polynomials that pass through all the points:
When n points (xi, yi) are given, it is possible to write a polynomial of degree
 that passes through all the points. For example, if two points are given it
is  possible  to  write  a  linear  equation  in  the  form  of
  that  passes
through  the  points.  With  three  points,  the  equation  has  the  form  of

b+

mx

=

y

268

Chapter 8: Polynomials, Curve Fitting, and Interpolation

.  With

n  points

the  polynomial  has

the

form

.  The  coefficients  of  the  polynomial  are  deter-
mined by substituting each point in the polynomial and then solving the n equa-
tions for the coefficients. As will be shown later in this section, polynomials of
high degree might give a large error if they are used to estimate values between
data points.

Polynomials that do not necessarily pass through any of the points:

When n points are given, it is possible to write a polynomial of degree less than
 that does not necessarily pass through any of the points but that overall
approximates the data. The most common method of finding the best fit to data
points  is  the  method  of  least  squares.  In  this  method,  the  coefficients  of  the
polynomial are determined by minimizing the sum of the squares of the residu-
als at all the data points. The residual at each point is defined as the difference
between  the  value  of  the  polynomial  and  the  value  of  the  data.  For  example,
consider the case of finding the equation of a straight line that best fits four data
,  and
points  as  shown  in  Figure  8-1. The  points  are

,

,

x1 y1,

x2 y2,

x3 y3,

y

f(x4)

f(x3)

f(x2)
f(x1)

(x2, y2)

R2

R1
(x1, y1)

(x4, y4)
R4

f(x) = a1x + a0

R3
(x3, y3)

x

Figure 8-1: Least squares fitting of first-degree polynomial to four points.

,  and  the  polynomial  of  the  first  degree  can  be  written  as
, at each point is the difference between the
a1x
. An equation for the sum of
,

x4 y4,
f x
=
value of the function at
xi
the squares of the residuals

. The residual,
 and
Ri

 of all the points is given by:

Ri
yi

a0+

or, after substituting the equation of the polynomial at each point, by:

At this stage R is a function of
by taking the partial derivative of R with respect to
and equating them to zero:

 and

a0

a1

. The minimum of R can be determined
 (two equations)

 and

a1

a0

  and

8.2 Curve Fitting

269

. The
This results in a system of two equations with two unknowns,
solution of these equations gives the values of the coefficients of the polynomial
that  best  fits  the  data.  The  same  procedure  can  be  followed  with  more  points
and higher-order polynomials. More details on the least squares method can be
found in books on numerical analysis.

 and

a0

a1

Curve  fitting  with  polynomials  is  done  in  MATLAB  with  the  polyfit
function, which uses the least squares method. The basic form of the polyfit
function is:

p = polyfit(x,y,n)

p is the vector of the coeffi-
cients of the polynomial
that fits the data.

x is a vector with the horizontal coordinates
of the data points (independent variable).
y is a vector with the vertical coordinates of
the data points (dependent variable).
n is the degree of the polynomial.

For the same set of m points, the polyfit function can be used to fit poly-
. If n = 1 the polynomial is a straight line, if n
nomials of any order up to
= 2 the polynomial is a parabola, and so on. The polynomial passes through all
the points if
 (the order of the polynomial is one less than the number
of points). It should be pointed out here that a polynomial that passes through
all the points, or polynomials with higher order, do not necessarily give a better
fit  overall.  High-order  polynomials  can  deviate  significantly  between  the  data
points.

Figure  8-2  shows  how  polynomials  of  different  degrees  fit  the  same  set  of
data points. A set of seven points is given by (0.9, 0.9), (1.5, 1.5), (3, 2.5), (4, 5.1),

y

7

6

5

4

3

2

1

0

n=1

0

2

4

x

6

8

10

y

7

6

5

4

3

2

1

0

n=2

0

2

4

6

8

10

Figure 8-2: Fitting data with polynomials of different order.

270

Chapter 8: Polynomials, Curve Fitting, and Interpolation

y

7

6

5

4

3

2

1

0

n=3

0

2

4

6

x

8

10

y

7

6

5

4

3

2

1

0

n = 4
n=4

0

2

4

x

6

8

10

y

7

6

5

4

3

2

1

0

n=5

0

2

4

x

6

8

10

y

10

8

6

4

2

0

0

n=6

2

4

x

6

8

10

Figure 8-2: Fitting data with polynomials of different order. (Continued)

(6, 4.5), (8, 4.9), and (9.5, 6.3). The points are fitted using the polyfit func-
tion with polynomials of degrees 1 through 6. Each plot in Figure 8-2 shows the
same data points, marked with circles, and a curve-fitted line that corresponds
to a polynomial of the specified degree. It can be seen that the polynomial with n
= 1 is a straight line, and that with n = 2 is a slightly curved line. As the degree of
the polynomial increases, the line develops more bends such that it passes closer
to more points. When n = 6, which is one less than the number of points, the line
passes  through  all  the  points.  However,  between  some  of  the  points,  the  line
deviates significantly from the trend of the data.

The script file used to generate one of the plots in Figure 8-2 (the polyno-
mial with n = 3) is shown below. Note that in order to plot the polynomial (the
line),  a  new  vector  xp  with  small  spacing  is  created.  This  vector  is  then  used

x=[0.9 1.5 3 4 6 8 9.5];

y=[0.9 1.5 2.5 5.1 4.5 4.9 6.3];

Create vectors x and y with the
coordinates of the data points.

p=polyfit(x,y,3)

Create a vector p using the polyfit function.

xp=0.9:0.1:9.5;

yp=polyval(p,xp);

Create a vector xp to be used for plotting the polynomial.
Create a vector yp with values of the polynomial at each xp.

plot(x,y,'o',xp,yp)

A plot of the seven points and the polynomial.

xlabel('x'); ylabel('y')

8.2 Curve Fitting

271

with the function polyval to create a vector yp with the value of the polyno-
mial for each element of xp.

When  the  script  file  is  executed,  the  following  vector  p  is  displayed  in  the

Command Window.

p =
    0.0220   -0.4005    2.6138   -1.4158

This means that the polynomial of the third degree in Figure 8-2 has the form

.

8.2.2 Curve Fitting with Functions Other than Polynomials

Many situations in science and engineering require fitting functions that are not
polynomials  to  given  data.  Theoretically,  any  function  can  be  used  to  model
data within some range. For a particular data set, however, some functions pro-
vide a better fit than others. In addition, determining the best-fitting coefficients
can  be  more  difficult  for  some  functions  than  for  others.  This  section  covers
curve  fitting  with  power,  exponential,  logarithmic,  and  reciprocal  functions,
which are commonly used. The forms of these functions are:

y

y

=

=

y

=

bxm

bemx
m xln

  or
y
=
  or
b+

b10mx
y
=

m

log

x

b+

(power function)
(exponential function)
 (logarithmic function)

(reciprocal function)

All of these functions can easily be fitted to given data with the polyfit func-
tion. This is done by rewriting the functions in a form that can be fitted with a
linear polynomial (n = 1), which is

The  logarithmic  function  is  already  in  this  form,  and  the  power,  exponential,
and reciprocal equations can be rewritten as:

y

=

mx

b+

ln

ln

y

y

=

=

m xln
mx

ln+

bln+
b

  or

log

y

=

mx

log+

b

(power function)
(exponential function)

(reciprocal function)

These equations describe a linear relationship between
 for the
ln
 and x for the exponential function, between y
power function, between
ln
 for the logarithmic function, and between 1/y and x for the
 or
and
reciprocal  function.  This  means  that  the  polyfit(x,y,1)  function  can  be
used to determine the best-fit constants m and b for best fit if, instead of x and y,

 and

xln

xln

log

x

y

y

272

Chapter 8: Polynomials, Curve Fitting, and Interpolation

the following arguments are used.

Function

polyfit function form

power

y

=

bxm

p=polyfit(log(x),log(y),1)

exponential
y

y

=

bemx
=
b10mx

  or

p=polyfit(x,log(y),1)  or
p=polyfit(x,log10(y),1)

logarithmic
y

y
=

=
m

m xln
x
log

b+
b+

   or

p=polyfit(log(x),y,1) or
p=polyfit(log10(x),y,1)

reciprocal

p=polyfit(x,1./y,1)

b
e p 2

The  result  of  the  polyfit  function  is  assigned  to  p,  which  is  a  two-element
vector.  The  first  element,  p(1),  is  the  constant  m,  and  the  second  element,
 for the
p(2), is b for the logarithmic and reciprocal functions,

 or

log

ln

b

exponential  function,  and

ln

b

  for  the  power  function  (

b

=

  or

10 p 2

b
=
tion).

  for  the  exponential  function,  and

b

=

e p 2

  for  the  power  func-

For given data it is possible to estimate, to some extent, which of the func-
tions has the potential for providing a good fit. This is done by plotting the data
using different combinations of linear and logarithmic axes. If the data points in
one of the plots appear to fit a straight line, the corresponding function can pro-
vide a good fit according to the list below.

x axis

linear

y axis

linear

Function

linear

y

=

mx

b+

logarithmic

logarithmic

power

y

=

bxm

linear

logarithmic

exponential

y

=

bemx

  or

y

=

b10mx

logarithmic

linear

logarithmic

y

=

m xln

b+

 or

y

=

m

log

x

b+

linear

linear
(plot 1/y)

reciprocal

Other considerations in choosing a function:

• Exponential functions cannot pass through the origin.

• Exponential functions can fit only data with all positive y’s or all negative y’s.

• Logarithmic functions cannot model x = 0 or negative values of x.

• For the power function y = 0 when x = 0.

• The reciprocal equation cannot model y = 0.

8.2 Curve Fitting

273

The following example illustrates the process of fitting a function to a set of data
points.

Sample Problem 8-2: Fitting an equation to data points

The  following  data  points  are  given.  Determine  a  function
  (t  is  the
independent variable, w is the dependent variable) with a form discussed in this
section that best fits the data.

f t=

w

t

w

0.0

0.5

1.0

1.5

2.0

2.5

3.0

3.5

4.0

4.5

5.0

6.00

4.83

3.70

3.15

2.41

1.83

1.49

1.21

0.96

0.73

0.64

Solution

6

4

5

The data is first plotted with linear scales
on  both  axes.  The  figure  indicates  that  a
linear  function  will  not  give  the  best  fit
since the points do not appear to line up
along a straight line. From the other pos-
sible functions, the logarithmic function is
excluded  since  for  the  first  point
,
0=
and the  power  function is  excluded since
at
.  To  check  if  the  other
two functions (exponential and reciprocal) might give a better fit, two additional
plots, shown below, are made. The plot on the left has a log scale on the vertical
axis and linear  horizontal axis.  In the plot on the  right, both axes have linear
scales, and the quantity 1/w is plotted on the vertical axis.

0=

,

t

t

w

2

1

3

3

4

5

0

1

2

0

t

101

w

100

0

1

2

3

4

5

t

2

1.5

w
1

/

1

0.5

0

0

1

2

t

3

4

5

In  the  left  figure,  the  data  points  appear  to  line  up  along  a  straight  line.  This
indicates that an exponential function of the form
 can give a good fit
to the data. A program in a script file that determines the constants b and  m,
and that plots the data points and the function is given below.

bemx

=

y

t=0:0.5:5;

Create vectors t and w with the coordinates of the data points.

w=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];

p=polyfit(t,log(w),1);

Use the polyfit function with t and log(w).

274

Chapter 8: Polynomials, Curve Fitting, and Interpolation

m=p(1)

b=exp(p(2))

tm=0:0.1:5;

wm=b*exp(m*tm);

Determine the coefficient b.
Create a vector tm to be used for plotting the polynomial.
Calculate the function value at each element of tm.

plot(t,w,'o',tm,wm)

Plot the data points and the function.

When the program is executed, the values of the constants m and b are displayed
in the Command Window.

m =
   -0.4580

b =
    5.9889

The plot generated by the program, which shows the data points and the func-
tion (with axis labels added with the Plot Editor) is

6

5

4

w

3

2

1

0

0

1

2

3

4

5

t

It should be pointed out here that in addition to the power, exponential, log-
arithmic, and reciprocal functions that are discussed in this section, many other
functions can be written in a form suitable for curve fitting with the polyfit

function. One example where a function of the form
 is fitted
to  data  points  using  the  polyfit  function  with  a  third-order  polynomial  is
described in Sample Problem 8-7.

=

y

e

a2x2

+

a1x

+

a0

8.3 INTERPOLATION

Interpolation  is  the  estimation  of  values  between  data  points.  MATLAB  has
interpolation  functions  that  are  based  on  polynomials,  which  are  described  in
this section, and on Fourier transformation, which is outside the scope of this
book. In one-dimensional interpolation, each point has one independent vari-
able (x) and one dependent variable (y). In two-dimensional interpolation, each
point has two independent variables (x and y) and one dependent variable (z).

8.3 Interpolation

275

One-dimensional interpolation:

If  only  two  data points  exist,  the  points  can  be connected with  a straight  line
and a linear equation (polynomial of first order) can be used to estimate values
between the points. As was discussed in the previous section, if three (or four)
data points exist, a second- (or a third-) order polynomial that passes through
the points can be determined and then be used to estimate values between the
points. As the number of points increases, a higher-order polynomial is required
for the polynomial to pass through all the points. Such a polynomial, however,
will not necessarily give a good approximation of the values between the points.
This is illustrated in Figure 8-2 with n = 6.

A more accurate interpolation can be obtained if instead of considering all
the points in the data set (by using one polynomial that passes through all the
points), only a few data points in the neighborhood where the interpolation is
needed  are  considered.  In  this  method,  called  spline  interpolation,  many  low-
order polynomials are used, where each is valid only in a small domain of the
data set.

The  simplest  method  of  spline  interpola-
tion is called linear spline interpolation. In this
method,  shown  on  the  right,  every  two  adja-
cent  points  are  connected  with  a  straight  line
(a polynomial of first degree). The equation of
a straight line that passes through two adjacent
points  (xi,  yj)  and  (xi+1,  yj+1)  and  that  can  be
used  to  calculate  the  value  of  y  for  any  x
between the points is given by:

In  a  linear  interpolation,  the  line  between  two  data  points  has  a  constant
slope, and there is a change in the slope at every point. A smoother interpola-
tion  curve  can  be  obtained  by  using  quadratic  or  cubic  polynomials.  In  these
methods,  called  quadratic  splines  and  cubic  splines,  a  second-,  or  third-order
polynomial is used to interpolate between every two points. The coefficients of
the polynomial are determined by using data from points that are adjacent to
the  two  data  points.  The  theoretical  background  for  the  determination  of  the
constants of the polynomials is beyond the scope of this book and can be found
in books on numerical analysis.

276

Chapter 8: Polynomials, Curve Fitting, and Interpolation

One-dimensional interpolation in MATLAB is done with the interp1 (the

last character is the numeral one) function, which has the form:

yi is the
interpo-
lated value.

yi = interp1(x,y,xi,‘method’)

x is a vector with the horizontal coordinates of
the input data points (independent variable).
y  is  a  vector  with  the  vertical  coordinates  of
the input data points (dependent variable).
xi is the horizontal coordinate of the interpo-
lation point (independent variable).

Method of
interpola-
tion, typed
as a string
(optional).

• The  vector  x  must  be  monotonic  (with  elements  in  ascending  or  descending

order).

• xi  can  be  a  scalar  (interpolation  of  one  point)  or  a  vector  (interpolation  of
many points). yi is a scalar or a vector with the corresponding interpolated val-
ues.

• MATLAB  can  do  the  interpolation  using  one  of  several  methods  that  can  be

specified. These methods include:

‘nearest’

‘linear’
‘spline’
‘pchip’

returns  the  value  of  the  data  point  that  is  nearest  to  the
interpolated point.
uses linear spline interpolation.
uses cubic spline interpolation.
uses  piecewise  cubic  Hermite  interpolation,  also  called
‘cubic’

• When the ‘nearest’ and the ‘linear’ methods are used, the value(s) of
xi must be within the domain of x. If the ‘spline’ or the ‘pchip’ meth-
ods  are  used,  xi  can  have  values  outside  the  domain  of  x  and  the  function
interp1 performs extrapolation.

• The  ‘spline’  method  can  give  large  errors  if  the  input  data  points  are

nonuniform such that some points are much closer together than others.

• Specification of the method is optional. If no method is specified, the default is

‘linear’.

Sample Problem 8-3:

Interpolation

The following data points, which are points of the function
,
are  given.  Use  linear,  spline,  and pchip interpolation methods  to  calculate the
value of y between the points. Make a figure for each of the interpolation meth-
ods. In the figure show the points, a plot of the function, and a curve that corre-

cos

f x

2x

=

1.5x

8.3 Interpolation

277

sponds to the interpolation method.

x

y

0

1.0

1

2

3

4

5

–0.6242

–1.4707

3.2406

–0.7366

–6.3717

Solution

The following is a program written in a script file that solves the problem:

x=0:1.0:5;

Create vectors x and y with coordinates of the data points.

y=[1.0 -0.6242 -1.4707 3.2406 -0.7366 -6.3717];

xi=0:0.1:5;

yilin=interp1(x,y,xi,'linear');

yispl=interp1(x,y,xi,'spline');

yipch=interp1(x,y,xi,'pchip');

yfun=1.5.^xi.*cos(2*xi);

Create vector xi with points for interpolation.
Calculate y points from linear interpolation.
Calculate y points from spline interpolation.
Calculate y points from pchip interpolation.
Calculate y points from the function.

subplot(1,3,1)

plot(x,y,'o',xi,yfun,xi,yilin,'--');

subplot(1,3,2)

plot(x,y,'o',xi,yfun,xi,yispl,'--');

subplot(1,3,3)

plot(x,y,'o',xi,yfun,xi,yipch,'--');

The three figures generated by the program are shown below (axes labels were
added with the Plot Editor). The data points are marked with circles, the inter-
polation curves are plotted with dashed lines, and the function is shown with a
solid line. The left figure shows the linear interpolation, the middle is the spline,
and the figure on the right shows the pchip interpolation.

4

2

0

4

2

0

4

2

0

y

−2

y

−2

y

−2

−4

−6

−8
0

−4

−6

−8
0

2

x

4

6

−4

−6

−8
0

2

x

4

6

2

x

4

6

278

Chapter 8: Polynomials, Curve Fitting, and Interpolation

8.4 THE BASIC FITTING INTERFACE

The basic fitting interface is a tool that can be used to perform curve fitting and
interpolation interactively. By using the interface the user can:
• Curve-fit the data points with polynomials of various degrees up to 10, and with

spline and Hermite interpolation methods.

• Plot the various fits on the same graph so that they can be compared.

• Plot the residuals of the various polynomial fits and compare the norms of the

residuals.

• Calculate the values of specific points with the various fits.

• Add the equations of the polynomials to the plot.

To  activate  the  basic  fitting  inter-
face,  the  user  first  has  to  make  a  plot
of  the  data  points.  Then  the  interface
is  activated  by  selecting  Basic  Fitting
in  the  Tools  menu,  as  shown  on  the
right.  This  opens  the  Basic  Fitting
Window,  shown  in  Figure  8-3.  When
the window first opens, only one panel
(the
 panel) is visible. The win-
dow can be extended to show a second
panel (the
 panel) by
  button.  One  click
clicking  on  the
adds the first section of the panel, and
a second click makes the window look
as shown in Figure 8-3. The window can be reduced back by clicking on the
button. The first two items in the Basic Fitting Window are related to the selec-
tion of the data points:

Used to select a specific set of data points for curve fitting in a fig-
ure that has more than one set of data points. Only one set of data points can
be curve-fitted at a time, but multiple fits can be performed simultaneously on
the same set.

   When this box is checked, the data is centered at zero
mean and scaled to unit standard deviation. This might be needed in order to
improve the accuracy of numerical computation.

The next four items are in the
fit.

 panel and are related to the display of the

   The user selects the fits to be displayed in the
figure. The selections include interpolation with spline interpolant (interpola-
tion  method)  that  uses  the  spline  function,  interpolation  with  Hermite
interpolant that uses the pchip function, and polynomials of various degrees

8.4 The Basic Fitting Interface

279

Figure 8-3: The Basic Fitting Window.

that  use  the  polyfit  function.  Several  fits  can  be  selected  and  displayed
simultaneously.

   When this box is checked, the equations of the polynomials
that were selected for the fit are displayed in the figure. The equations are dis-
played  with  the  number  of  significant  digits  selected  in  the  adjacent  sign
menu.

   When this box is checked, a plot that shows the residual at each
data  point  is  created  (residuals  are  defined  in  Section  8.2.1).  Choices  in  the
menus include a bar plot, a scatter plot, and a line plot that can be displayed
as a subplot in the same Figure Window that has the plot of the data points or
as a separate plot in a different Figure Window.

   When this box is checked, the norm of the residuals
is displayed in the plot of the residuals. The norm of the residual is a measure
of the quality of the fit. A smaller norm corresponds to a better fit.

The  next  three  items  are  in  the
numerical information for one fit, independently of the fits that are displayed:

  panel.  They  provide  the

   The user selects the fit to be examined numerically. The fit is shown on the
 panel.

plot only if it is selected in the

      Displays  the  numerical  results  for  the
polynomial fit that is selected in the
 menu. It includes the coefficients of
the  polynomial  and  the  norm  of  the  residuals.  The  results  can  be  saved  by

280

Chapter 8: Polynomials, Curve Fitting, and Interpolation

clicking on the

 button.

      Provides  a  means  for  obtaining  interpolated  (or  extrapolated)
numerical  values  for  specified  values  of  the  independent  variable.  Enter  the
value of the independent variable in the box, and click on the
 but-
ton. When the
 box is checked, the point is displayed on
the plot.

As an example, the basic fitting interface is used for fitting the data points
from Sample Problem 8-3. The Basic Fitting Window is the one shown in Figure

Figure 8-4: A Figure Window modified by the Basic Fitting Interface.

8-3, and the corresponding Figure Window is shown in Figure 8-4. The Figure
Window includes a plot of the points, one interpolation fit (spline), two polyno-
mial fits (linear and cubic), a display of the equations of the polynomial fits, and
 box of the Basic
a mark of the point x = 1.5 that is entered in the
Fitting Window. The Figure Window also includes a plot of the residuals of the
polynomial fits and a display of their norm.

8.5 Examples of MATLAB Applications

281

8.5 EXAMPLES OF MATLAB APPLICATIONS

Sample Problem 8-4: Determining wall thickness of a box

The  outside  dimensions  of  a  rectangular
box (bottom and four sides, no top), made
of aluminum, are 24 by 12 by 4 inches. The
wall thickness of the bottom and the sides
is x. Derive an expression that relates the
weight of the box and the wall thickness x.
Determine  the  thickness  x  for  a  box  that
weighs 15 lb. The specific weight of alumi-
num is 0.101 lb/in.3.

Solution

The volume of the aluminum VAl is calculated from the weight W of the box by:

where   is the specific weight. The volume of the aluminum based on the dimen-
sions of the box is given by

where the inside volume of the box is subtracted from the outside volume. This
equation can be rewritten as

which  is  a  third-degree  polynomial.  A  root  of  this  polynomial  is  the  required
thickness x. A program in a script file that determines the polynomial and solves
for the roots is:

W=15; gamma=0.101;

VAlum=W/gamma;

a=[-2  24];

b=[-2  12];

c=[-1  4];

Vin=conv(c, conv(a,b));

polyeq=[0 0 0 (VAlum-24*12*4)]+Vin

x=roots(polyeq)

Assign W and gamma.

Calculate the volume of the aluminum.
Assign the polynomial 24 – 2x to a.
Assign the polynomial 12 – 2x to b.

Assign the polynomial 4 – x to c.

Multiply the three polynomials above.
Add VAl – 24*12*4 to Vin.
Determine the roots of the polynomial.

Note in the second-to-last line that in order to add the quantity
to the polynomial Vin it has to be written as a polynomial of the same order as
Vin  (Vin  is  a  polynomial  of  third  order).  When  the  program  (saved  as
Chap8SamPro4) is executed, the coefficients of the polynomial and the value of
x are displayed:

282

Chapter 8: Polynomials, Curve Fitting, and Interpolation

>> Chap8SamPro4

polyeq =
 -4.0000  88.0000 -576.0000  148.5149

The polynomial is:

.

x =
  10.8656 + 4.4831i
  10.8656 - 4.4831i
  0.2687

The polynomial has one real root, x = 0.2687
in., which is the thickness of the aluminum

Sample Problem 8-5: Floating height of a buoy

An aluminum thin-walled sphere is used as a
marker  buoy.  The  sphere  has  a  radius  of  60
cm and a wall thickness of 12 mm. The den-
  kg/m3.  The
sity  of  aluminum  is
Al
buoy is placed in the ocean, where the density
of  the  water  is  1030  kg/m3.  Determine  the
height h between the top of the buoy and the
surface of the water.

2690

=

Solution

According to Archimedes’s law, the buoyancy
force applied to an object that is placed in a fluid is equal to the weight of the
fluid that is displaced by the object. Accordingly, the aluminum sphere will be at
a depth such that the weight of the sphere is equal to the weight of the fluid dis-
placed by the part of the sphere that is submerged.

The weight of the sphere is given by

VAl

where
radii of the sphere, respectively; and g is the gravitational acceleration.

 is the volume of the aluminum;

 and

 are the outside and inside

ro

ri

The weight of the water that is displaced by the spherical portion that is sub-

merged is given by:

Setting the two weights equal to each other gives the following equation:

The last equation is a third-degree polynomial for h. The root of the polynomial
is the answer.

A solution with MATLAB is obtained by writing the polynomials and using
the  roots  function  to  determine  the  value  of  h.This  is  done  in  the  following
script file:

8.5 Examples of MATLAB Applications

283

rout=0.60; rin=0.588;

rhoalum=2690; rhowtr=1030;

a0=4*rout^3-4*rhoalum*(rout^3-rin^3)/rhowtr;

Assign the radii to variables.
Assign the densities to variables.
Assign the coefficient a0.
Assign the coefficient vector of the polynomial.
Calculate the roots of the polynomial.

p = [1 -3*rout 0 a0];

h = roots(p)

When the script file is executed in the Command Window, as shown below, the
answer  is  three  roots,  since  the  polynomial  is  of  the  third  degree.  The  only
answer that is physically possible is the second, where h = 0.9029 m.

>> Chap8SamPro5

h =
    1.4542
    0.9029
   -0.5570

The polynomial has three roots. The only one that
is physically possible for the problem is 0.9029 m.

Sample Problem 8-6: Determining the size of a capacitor

An  electrical  capacitor  has  an  unknown
its
capacitance.  In  order  to  determine
capacitance,  the  capacitor  is  connected  to
the  circuit  shown.  The  switch  is  first  con-
nected  to  B  and  the  capacitor  is  charged.
Then, the switch is connected to A and the
capacitor  discharges  through  the  resistor.
As the capacitor is discharging, the voltage across the capacitor is measured for
10 s in intervals of 1 s. The recorded measurements are given in the table below.
Plot  the  voltage  as  a  function  of  time  and  determine  the  capacitance  of  the
capacitor by fitting an exponential curve to the data points.

t (s)

V (V)

1

9.4

Solution

2

3

4

5

6

7

8

9

10

7.31

5.15

3.55

2.81

2.04

1.26

0.97

0.74

0.58

When a capacitor discharges through a resistor, the voltage of the capacitor as a
function of time is given by

V0

where
 is the initial voltage, R the resistance of the resistor, and C the capaci-
tance of the capacitor. As was explained in Section 8.2.2 the exponential func-
tion can be written as a linear equation for ln(V) and t in the form:

284

Chapter 8: Polynomials, Curve Fitting, and Interpolation

, can be fitted to the data points
This equation, which has the form
by using the polyfit(x,y,1) function with t as the independent variable x
and ln(V) as the dependent variable y. The coefficients m and b determined by
the polyfit function are then used to determine C and

 by:

b+

mx

=

y

V0

  and

V0

eb=

The following program written in a script file determines the best-fit exponential
, and plots the points and the
function to the data points, determines C and
fitted function.

V0

R=2000;

t=1:10;

Define R.
Assign the data points to vectors t and v.

v=[9.4 7.31 5.15 3.55 2.81 2.04 1.26 0.97 0.74 0.58];

p=polyfit(t,log(v),1);

C=-1/(R*p(1))

V0=exp(p(2))

tplot=0:0.1:10;

Use the polyfit function with t and log(v).
Calculate C from p(1), which is m in the equation.
Calculate V0 from p(2), which is b in the equation.
Create vector tplot of time for plotting the function.

vplot=V0*exp(-tplot./(R*C));

Create vector vplot for plotting the function.

plot(t,v,'o',tplot,vplot)

When the script file is executed (saved as Chap8SamPro6) the values of C and
V0

 are displayed in the Command Window as shown below:

>> Chap8SamPro6

C =
    0.0016

V0 =
   13.2796

The capacitance of the capacitor is 1,600  F.

The program creates also the following plot (axis labels were added to the plot
using the Plot Editor):

)

V

(

V

14

12

10

8

6

4

2

0

0

2

4

6

8

10

t (s)

8.5 Examples of MATLAB Applications

285

Sample Problem 8-7: Temperature dependence of viscosity

Viscosity,
, is a property of gases and fluids that characterizes their resistance
to flow. For most materials, viscosity is highly sensitive to temperature. Below is
a table that gives the viscosity of SAE 10W oil at different temperatures (data
from  B.R.  Munson,  D.F.  Young,  and  T.H.  Okiishi,  Fundamentals  of  Fluid
Mechanics,  4th  ed.,  John  Wiley  and  Sons,  2002).  Determine  an  equation  that
can be fitted to the data.

T   (°C)

–20

0

20

40

60

80

100

120

 (N s/m2)

(

)

Solution

4

0.38

0.095

0.032

0.015

0.007
8

0.004
5

0.003
2

)

(

101

100

2
m
/
s
*
N

To determine what type of equation
might provide a good fit to the data,
 is plotted as a function of T (abso-
lute temperature) with a linear scale
for  T  and  a  logarithmic  scale  for
.
The  plot,  shown  on  the  right,  indi-
cates  that  the  data  points  do  not
appear  to  line  up  along  a  straight
line. This means that a simple expo-
form
nential
function  of
,  which  models  a  straight
y
=
line with these axes, will not provide
the  best  fit.  Since  the  points  in  the  figure  appear  to  lie  along  a  curved  line,  a
function that can possibly have a good fit to the data is:

Temperature (K)

bemx

the

y
t
i
s
o
c
s
V

10-1

10-2

10-3

350

250

400

300

i

=

ln

a2T2
This function can be fitted to the data by using MATLAB’s polyfit(x,y,2)
function (second-degree polynomial), where the independent variable is  T and
the dependent variable is ln( ). The equation above can be solved for
 to give
the viscosity as a function of temperature:

a1T a0
+

+

a2T2

+

a1T a0
+

a1T

a0e

e

e

=

a2T2

=

e

The following program determines the best fit to the function and creates a plot
that displays the data points and the function.

T=[-20:20:120];

mu=[4 0.38 0.095 0.032 0.015 0.0078 0.0045 0.0032];

TK=T+273;

p=polyfit(TK,log(mu),2)

286

Chapter 8: Polynomials, Curve Fitting, and Interpolation

Tplot=273+[-20:120];

muplot = exp(p(1)*Tplot.^2 + p(2)*Tplot + p(3));

semilogy(TK,mu,'o',Tplot,muplot)

When the program executes (saved as Chap8SamPro7), the coefficients that are
determined by the polyfit function are displayed in the Command Window
(shown below) as three elements of the vector p.

>> Chap8SamPro7

p =
    0.0003   -0.2685   47.1673

With these coefficients the viscosity of the oil as a function of temperature is:

The  plot  that  is  generated  shows  that  the  equation  correlates  well  to  the  data
points (axis labels were added with the Plot Editor).

101

100

10-1

10-2

)

2
m
/
s
*
N

(

y
t
i
s
o
c
s
V

i

10-3

250

300

350

400

Temperature (K)

8.6 PROBLEMS

1. Plot  the  polynomial

  in  the  domain
.  First  create  a  vector  for  x,  next  use  the  polyval  function  to

calculate y, and then use the plot function.

2. Plot  the  polynomial

.
First create a vector for x, next use the polyval function to calculate y, and
then use the plot function.

  in  the  domain

3. Determine  the  polynomial

,
.  Make  a  plot  of  the  polynomial  in  the  domain

  that  has  roots  at

,

,  and
.

8.6 Problems

287

4. Use MATLAB to carry out the following multiplication of two polynomi-

als:

5. Use MATLAB to carry out the following multiplication of polynomials:

Plot the polynomial in the domain

.

6. Use MATLAB to divide the polynomial

 by the polynomial

.

7. Use MATLAB to divide the polynomial

 by the polynomial

.

8. The  product  of  four  consecutive  even  integers  is  1,488,384.  Using  MAT-
LAB’s built-in function for operations with polynomials, determine the two
integers.

9. The product of three integers with spacing of 3 between them (e.g., 9, 12, 15)
is 11,960. Using MATLAB’s built-in functions for operations with polyno-
mials, determine the three integers.

10. The product of three distinct integers is 6,240. The sum of the numbers is
85. The difference between the largest and the smallest is 57. Using MAT-
LAB’s  built-in  functions  for  operations  with  polynomials,  determine  the
three integers.

11. A rectangular steel container (no top) has the
outside  dimensions  shown  in  the  figure.  The
thickness  of  the  bottom  surface  is  t,  and  the
thickness  of  side  walls  is
.  Determine  t  if
the  weight  of  the  container  is  1,300  lb.  The
specific weight of steel is 0.284 lb/in.3.

80 in.

120 in.

240 in.

288

Chapter 8: Polynomials, Curve Fitting, and Interpolation

12. An  aluminum  container  has  the  geometry
shown in the figure (the bottom part is a rect-
angular box and the top is half a cylinder). The
outside dimensions are shown. The wall thick-
ness of the bottom and all the vertical walls is
2t,  and  the  walls  thickness  of  the  cylindrical
section is t. Determine t if the tank weight is 30
lb. The specific weight of aluminum is 0.101 lb/
in.3.

24 in.

10 in.

12 in.

13. A  rectangular  box  (no  top)  is  welded  together  using
sheet metal. The length of the box’s base is 18 in. longer
than its width. The total surface area of the sheet metal
that is used is 2,500 in.2.
(a) Using polynomials write an expression for the vol-

h

ume V in terms of x.

(b) Make a plot of V versus x for
(c) Determine  the  dimensions  of  the  box  that  maxi-

in.

mizes the volume and determine that volume.

x+18

x

14. The  probability  P  of  selecting  three  distinct  numbers  out  of  n  numbers  is

calculated by:

Determine how many numbers, n, should be in a lottery game such that the
probability of matching three numbers out of n numbers will be at least 1/
100,000, but not greater than 1/95,000.

15. Write a user-defined function that adds or subtracts two polynomials of any
order.  Name  the  function  p=polyadd(p1,p2,operation).  The  first
two input arguments p1 and p2 are the vectors of the coefficients of the two
polynomials. (If the two polynomials are not of the same order, the function
adds  the  necessary  zero  elements  to  the  shorter  vector.)  The  third  input
argument operation is a string that can be either ‘add’ or ‘sub’, for
adding  or  subtracting  the  polynomials,  respectively,  and  the  output  argu-
ment is the resulting polynomial.

Use the function to add and subtract the following polynomials:

 and

16. Write  a  user-defined  function  that  multiplies  two  polynomials.  Name  the
function p=polymult(p1,p2). The two input arguments p1 and p2 are
vectors of the coefficients of the two polynomials. The output argument p is
the resulting polynomial.

Use the function to multiply the following polynomials:

8.6 Problems

289

Check the answer with MATLAB’s built-in function conv.

 and

17. Write a user-defined function that calculates the maximum (or minimum) of

a quadratic equation of the form:

f x

=

ax2

+

bx

+

c

Name the function [x,y,w] = maxormin(a,b,c). The input arguments
are the coefficients a, b, and c. The output arguments are x, the coordinate
of the maximum (or minimum); y, the maximum (or minimum) value; and
w, which is equal to 1 if y is a maximum and equal to 2 if y is a minimum.

Use the function to determine the maximum or minimum of the follow-

ing functions:
(a)

              (b)

18. A cylinder with base radius r and height h is con-
structed inside a sphere such that it is in contact
with the surface of a sphere, as shown in the fig-
ure. The radius of the sphere is
(a) Create  a  polynomial  expression  for  the  vol-

11=

in.

R

r

R

h

ume V of the cylinder in terms of h.

(b) Make a plot of V versus h for
(c) Using  the  roots  command  determine  h  if
the volume of the cylinder is 2,000 in.3.

in.

(d) Determine the value of h that corresponds to the cylinder with the larg-

est possible volume, and determine that volume.

19. Consider the parabola:

, and the point

.

P 3 4,
(a) Write  a  polynomial  expres-
sion  for  the  distance  d  from
point P to an arbitrary point Q
on the parabola.

(b) Make  a  plot  of  d  versus  y  for

.

y

5
4
3
2
1
0
-1

P (3,4)

d

0

2

4

Q

6
x

8

10

12

(c) Determine the coordinates of Q if
(d) Determine the coordinates of Q that correspond to the smallest d, and

 (there are two points).

3=

d

calculate the corresponding value of d.

(e) Make a plot that shows the parabola, point P, the two points from part

(c), and the point from part (d).

290

Chapter 8: Polynomials, Curve Fitting, and Interpolation

20. The following data is given:

x
y

–5
12

–4
10

–1
6

1
2

4
–3

6
–6

9
–11

10
–12

(a) Use linear least-squares regression to determine the coefficients m and b in
 that best fits the data.

the function

b+

mx

=

y

(b) Make a plot that shows the function and the data points.

21. The  boiling  temperature  of  water

  at  various altitudes  h is given  in  the
following table. Determine a linear equation in the form
 that
best fits the data. Use the equation for calculating the boiling temperature
at 5,000 m. Make a plot of the points and the equation.

b+

TB

TB

mh

=

h (ft)

–1,000

T ( °F )

213.9

0

212

3,000

206.2

8,000

196.2

15,000

22,000

28,000

184.4

172.6

163.1

=

22. The U.S. population in selected years between 1815 and 1965 is listed in the
table  below.  Determine
form
, where t is the number of years after 1800 and P is the
a1t
P
population in millions, that best fits the data. Use the equation to estimate
the population in 1915 (the population was 98.8 millions). Make a plot of
the population versus the year that shows the data points and the equation.

a  quadratic

equation

a2t2

the

in

a0

+

+

Year

Population
(millions)

1815

8.3

1845

19.7

1875

44.4

1905

83.2

1935

127.1

1965

190.9

23. The number of bacteria

 measured at different times t is given in the fol-
Ne t
lowing  table.  Determine  an  exponential  function  in  the  form
that best fits the data. Use the equation to estimate the number of bacteria
after 5 h. Make a plot of the points and the equation.

NB

NB

=

t (h)
NB

0

500

1

600

3

4

6

7

9

1,000

1,400

2,100

2,700

4,100

24. Growth data of a sunflower plant is given in the following table:

Day

Height (in.)

7

8.5

21

21

35

50

49

77

63

89

77

98

91

99

8.6 Problems

291

The data can be modeled with a function in the form

, where y

is  the  height,  H  is  a  maximum  height,  a  and  b  are  constants,  and  t  is  the
number of days. By using the method described in Section 8.2.2, and assum-
in., determine the constants a and b such that the function
ing that
best fits the data. Use the function to estimate the height in day 40. In one
figure, plot the function and the data points.

102

H

=

25. Use the growth data from Problem 24 for the following:

(a) Curve-fit the data with a third-order polynomial. Use the polynomial to

estimate the height in day 40.

(b) Fit the data with linear and spline interpolations and use each interpo-

lation to estimate the height in day 40.

In each part make a plot of the data points (circle markers) and the fitted
curve  or  the  interpolated  curves.  Note  that  part  (b)  has  two  interpolation
curves.

26. The following points are given:

x

y

1

12

2.2

9

3.7

6.6

6.4

5.5

9

7.2

11.5

14.2

17.8

20.5

23.2

9.2

9.6

8.5

6.5

2.2

(a) Fit the data with a first-order polynomial. Make a plot of the points and

the polynomial.

(b) Fit the data with a second-order polynomial. Make a plot of the points

and the polynomial.

(c) Fit the data with a third-order polynomial. Make a plot of the points

and the polynomial.

(d) Fit the data with an fifth-order polynomial. Make a plot of the points

and the polynomial.

27. The  standard  air  density,  D  (average  of  measurements  made),  at  different

heights, h, from sea level up to a height of 33 km is given below.

h (km)
D (kg/m3)
h (km)

D (kg/m3)

0

1.2

18

3

0.91

21

6

0.66

24

9

0.47

27

12

0.31

30

15

0.19

33

0.12

0.075

0.046

0.029

0.018

0.011

(a) Make the following four plots of the data points (density as a function
of height): (1) both axes with linear scale; (2) h with log axis, D with lin-
ear axis; (3) h with linear axis, D with log axis; (4) both log axes. Accord-
ing  to  the  plots,  choose  a  function  (linear,  power,  exponential,  or

292

Chapter 8: Polynomials, Curve Fitting, and Interpolation

logarithmic) that best fits the data points and determine the coefficients
of the function.

(b) Plot the function and the points using linear axes.

the

28. Write a user-defined function that determines the best fit of an exponential
function  of
function  [b,m]  =
expofit(x,y), where the input arguments x and y are vectors with the
coordinates of the data points, and the output arguments b and m are the
constants of the fitted exponential equation. Use  expofit to fit the data
below. Make a plot that shows the data points and the function.

.  Name

form

the

x

y

0.4

1.7

2.2

10.1

3.1

26.9

5.0

61.2

6.6

158

7.6

398

29. Estimated values of thermal conductivity of silicon at different temperatures

are given in the following table.

T   (K)

k (W/m-K)

T   (K)

2

46

80

4

300

100

k (W/m-K)

1,350

900

6

8

10

20

40

60

820

1,560

2,300

5,000

3,500

2,100

150

400

250

190

350

120

500

1,000

1,400

75

30

20

(a) Make a plot of k versus T using log scale on both axes.

(b) Curve-fit  the  data  with  a  second-order  polynomial

  in
.  Once  the  coefficients  a,  b,  and  c  are
which
determined,  write an equation  for  k as a function of
.  Use this
equation for curve-fitting the data. Make a second plot that shows the
data points with markers and the curve-fitted equation with a solid line.

  and

(c) Repeat part (b) using a third-order polynomial.

 30. Measurements  of  the  concentration,  C,  of  a  substance  during  a  chemical

reaction at different times t are shown in the table.

t (h)

C (g/L)

0.5

1.7

1.0

3.1

1.5

5.7

2.0

9.1

2.5

6.4

3.0

3.7

3.5

2.8

4.0

1.6

4.5

1.2

5.0

0.8

5.5

0.7

6.0

0.6

(a) Suppose that the data can be modeled with an equation in the form:

Determine the coefficients a0, a1, and a2 such that the equation best fits
h.
the  data.  Use  the  equation  to  estimate  the  concentration  at

8.6 Problems

293

Make a plot of the data points and the equation.

(b) Suppose that the data can be modeled with an equation in the form:

Determine the coefficients a0, a1, a2, and a3 such that the equation best
fits the data. Use the equation to estimate the concentration at
h.
Make a plot of the data points and the equation.

31. Use the data from Problem 30 for the following:

(a) Fit  the  data  with  linear  interpolation.  Estimate  the  concentration  at
.  Make  a  plot  that  shows  the  data  points  and  curve  made  of

interpolated points.

(b) Fit  the  data  with  spline  interpolation.  Estimate  the  concentration  at
h. Make a plot that shows the data points and a curve made of

interpolated points.

32. The relationship between two variables y and x is known to be:

The following data points are given:

y

=

a

x
-------------
x+
b

x
y

5
15

10
25

15
32

20
33

25
37

30
35

35
38

40
39

45
41

50
42

Determine  the constants  a  and  b by  curve-fitting the  equation  to  the  data
points.  Make  a  plot  of  y  versus  x.  In  the  plot  show  the  data  points  with
markers and the curve-fitted equation with a solid line. Use the equation to
estimate y at
. (The curve fitting can be done by writing the reciprocal
of the equation and using a first-order polynomial.)

33. Curve-fit the data from the previous problem with a third-order polynomial.
. Make a plot of the points and

Use the polynomial to estimate y at
the polynomial.

34. When  rubber  is  stretched,  its  elongation  is  initially  proportional  to  the
applied  force,  but  as  it  reaches  about  twice  its  original  length,  the  force
required to stretch the rubber increases rapidly. The force, as a function of
elongation, that was required to stretch a rubber specimen that was initially
3 in. long is displayed in the following table.
(a) Curve-fit the data with a fourth-order polynomial. Make a plot of the
data  points  and  the  polynomial.  Use  the  polynomial  to  estimate  the
force when the rubber specimen was 11.5 in. long.

(b) Fit the data with spline interpolation (use MATLAB’s built-in function
interp1). Make a plot that shows the data points and a curve made by
interpolation. Use interpolation to estimate the force when the rubber

294

Chapter 8: Polynomials, Curve Fitting, and Interpolation

specimen was 11.5 in. long.

Force (lb)
Elongation (in.)
Force (lb)
Elongation (in.)

0
0
1.92
9.6

0.6
1.2
3.12
10.8

0.9
2.4
4.14
12.0

1.16
3.6
5.34
13.2

1.18
4.8
6.22
14.4

1.19
6.0
7.12
15.6

1.24
7.2
7.86
16.8

1.48
8.4
8.42
18

35. The transmission of light through a transparent solid can be described by

the equation:

  is  the  transmitted  intensity,

  is  the  intensity  of  the  incident
  where
I0
IT
 is the absorption coefficient, L is the length of the transparent solid,
beam,
and R is the fraction of light which is reflected at the interface. If the light is
normal  to  the  interface  and  the  beams  are  transmitted  through  air,

  where  n  is  the  index  of  refraction  for  the  transparent  solid.

Experiments measuring the intensity of light transmitted through specimens
of a transparent solid of various lengths are given in the following table. The
intensity of the incident beam is 5 W/m2.

L (cm)
 (W/m2)

IT

0.5
4.2

1.2
4.0

1.7
3.8

2.2
3.6

4.5
2.9

6.0
2.5

Use this data and curve fitting to determine the absorption coefficient and
index of refraction of the solid.

