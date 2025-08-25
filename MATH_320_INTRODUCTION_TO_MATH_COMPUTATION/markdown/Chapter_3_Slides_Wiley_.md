Mathematical Operations with Arrays

MATLAB  An Introduction With Applications, 6th Edition
Dr. Amos Gilat
The Ohio State University

Slide deck by
Dr. Greg Reese
Miami University

3.0

Previously dealt with scalars (single
numbers). Will now work with
arrays, which in general have more
than one number

This chapter covers basics of using
arrays

2

3.0

array – a rectangular arrangement of
numbers with one or more
dimensions
vector – an array with only one
column or one row
scalar – an array with exactly one row
and one column, i.e., a single number
Note – "matrix" and "array" are often
used synonymously

3

3.1 ADDITION AND SUBTRACTION

• Use + to add two arrays or to add a scalar

to an array

• Use – to  subtract one array from another

or to subtract a scalar from an array
 When using two arrays, they must both

have the same dimensions (number of rows
and number of columns)

 Vectors must have the same dimensions
(rows and columns), not just the same
number of elements

4

3.1 ADDITION AND SUBTRACTION

When adding two arrays A and B,
MATLAB adds the corresponding
elements, i.e.,
• It adds the element in the first row and
first column of A to the element in the
first row and column of B

• It adds the element in the first row and

second column of A to the element in the
first row and second column of B, etc.

This called elementwise addition

5

3.1 ADDITION AND SUBTRACTION

When subtracting two arrays
A and B, MATLAB performs an
elementwise subtraction
In general, an operation between
two arrays that works on
corresponding elements is called
an elementwise operation

6

3.1 ADDITION AND SUBTRACTION

EXAMPLE

For

and

𝐴𝐴 =

𝐴𝐴11 𝐴𝐴12 𝐴𝐴13
𝐴𝐴21 𝐴𝐴22 𝐴𝐴23

𝐵𝐵 =

𝐵𝐵11 𝐵𝐵12 𝐵𝐵13
 𝐵𝐵21 𝐵𝐵22 𝐵𝐵23

𝐴𝐴 + 𝐵𝐵 =

𝐴𝐴11 + 𝐵𝐵11 𝐴𝐴12 + 𝐵𝐵12 𝐴𝐴13 + 𝐵𝐵13
𝐴𝐴21 + 𝐵𝐵21 𝐴𝐴22 + 𝐵𝐵22 𝐴𝐴23 + 𝐵𝐵23

𝐴𝐴 − 𝐵𝐵 =

𝐴𝐴11 − 𝐵𝐵11 𝐴𝐴12 − 𝐵𝐵12 𝐴𝐴13 − 𝐵𝐵13
𝐴𝐴21 − 𝐵𝐵21 𝐴𝐴22 − 𝐵𝐵22 𝐴𝐴23 − 𝐵𝐵23

7

3.1 ADDITION AND SUBTRACTION

When adding a scalar to an array,
MATLAB adds the scalar to every
element of the array

When subtracting a scalar from an
array, MATLAB subtracts the scalar
from every element of the array

8

3.1 ADDITION AND SUBTRACTION

EXAMPLE

For c a scalar and

𝐴𝐴 =

𝐴𝐴11 𝐴𝐴12 𝐴𝐴13
𝐴𝐴21 𝐴𝐴22 𝐴𝐴23

𝐴𝐴 + 𝑐𝑐 =

𝐴𝐴11 + 𝑐𝑐 𝐴𝐴12 + 𝑐𝑐 𝐴𝐴13 + 𝑐𝑐
𝐴𝐴21 + 𝑐𝑐 𝐴𝐴22 + 𝑐𝑐 𝐴𝐴23 + 𝑐𝑐

𝐴𝐴 − 𝑐𝑐 =

𝐴𝐴11 − 𝑐𝑐 𝐴𝐴12 − 𝑐𝑐 𝐴𝐴13 − 𝑐𝑐
𝐴𝐴21 − 𝑐𝑐 𝐴𝐴22 − 𝑐𝑐 𝐴𝐴23 − 𝑐𝑐

9

3.2 ARRAY MULTIPLICATION

There are two ways of multiplying
matrices – matrix multiplication and
elementwise multiplication
MATRIX MULTIPLICATION
• Type used in linear algebra
• MATLAB denotes this with asterisk (*)
• Number of columns in left matrix must

be same as number of rows in right
matrix

10

3.2 ARRAY MULTIPLICATION

11

3.2 ARRAY MULTIPLICATION

Example:

>> A = [ 1 4 3; 2 6 1; 5 2 8 ]
A =   1     4     3
      2     6     1
      5     2     8
>> B = [ 5 4; 1 3; 2 6 ]
B = 5     4
    1     3
    2     6
>> A * B
ans = 15    34
      18    32
      43    74

12

3.2 ARRAY MULTIPLICATION

Example:
Note that B*A is not even defined,
because the number of columns in B is
not equal to the number of rows in A.
Attempting to compute B*A produces
an error:

>> B * A
Error using  *
Inner matrix dimensions must agree.

13

3.2 ARRAY MULTIPLICATION

When performing matrix
multiplication on two square matrices
• They must both have the same

dimensions

• The result is a matrix of the same

dimension

• In general, the product is not

commutative, i.e.,

𝐴𝐴 ∗ 𝐵𝐵 ≠ 𝐵𝐵 ∗ 𝐴𝐴

14

3.2 ARRAY MULTIPLICATION

>> A = randi(3,3)
A =

3     3     1
3     2     2
1     1     3

>> B=randi(3,3)
B =

3     3     1
1     2     2
3     3     3

>> AB = A*B
AB =

15    18    12
17    19    13
13    14    12

>> BA = B*A
BA =

19    16    12
11     9    11
21    18    18

>> AB == BA
ans =

0     0     1
0     0     0
0     0     0

15

3.2 ARRAY MULTIPLICATION

When performing matrix
multiplication on two vectors
• They must both be the same size
• One must be a row vector and the other

a column vector

• If the row vector is on the left, the

product is a scalar

• If the row vector is on the right, the

product is a square matrix whose side is
the same size as the vectors

16

3.2 ARRAY MULTIPLICATION

>> h = [ 2 4 6 ]
h =

2     4     6
>> v = [ -1 0 1 ]'
v =

>> h * v
ans =

4

>> v * h
ans =

-1
0
1

-2    -4    -6
0     0     0
2     4     6

17

3.2 ARRAY MULTIPLICATION

dot(a,b) computes
the inner product, also
called the dot product
• a and b must be same size
• Any combination of

vertical or horizontal
vectors

• Result is always a scalar

EXAMPLE
>> h = [ 2 4 6 ]
h =

2     4     6
>> v = [ -1 0 1 ]'
v =

-1
0
1
>> dot(h,v)
ans =

4
>> dot(v,h)
ans = 4

18

3.2 ARRAY MULTIPLICATION

19

3.3 ARRAY DIVISION

Identity matrix
• Square matrix with ones on main diagonal

and zeros elsewhere
 Main diagonal goes from top left to bottom

right

• When do matrix multiplication on any array
or vector with the identity matrix, array or
vector is unchanged
 True whether multiply with identity matrix on

left or on right

• MATLAB command eye(n) makes an n×n
identity matrix

20

3.3 ARRAY DIVISION

Inverse of a matrix:
Matrix B is the inverse of matrix A if
matrix product of A and B is the
identity matrix I
• Both matrices must be square and same

dimensions

• Multiplication can be from either side, i.e.,

EXAMPLE

𝐵𝐵𝐴𝐴 = 𝐴𝐴𝐵𝐵 = 𝐼𝐼

21

3.3 ARRAY DIVISION

In math, inverse of a matrix A is
written as A-1
In MATLAB, get inverse with A^-1
or inv(A)

22

3.3 ARRAY DIVISION

Determinants:
A determinant is a function
associated with square matrices
• In math, determinant of A is written as

det(A) or |A|

• In MATLAB, compute determinant of A
with det(A)
• A matrix has an inverse only if it is

square and its determinant is not zero
If you don't remember much about determinants, go
back to your linear algebra book and review them

23

3.3 ARRAY DIVISION

Left division, \:
Left division is one of MATLAB's two
kinds of array division
• Used to solve the matrix equation AX=B

 A is a square matrix, X, B are column

vectors

 Solution is   X = A-1B

In MATLAB, solve by using left
division operator (\), i.e.,

>> X = A \ B

24

3.3 ARRAY DIVISION

When solving set of linear equations,
use left division, not inverse, i.e., use
X=A\B  not X=inv(A)*B
Left division is
• 2-3 times faster
• Often produces smaller error than

inv()
• Sometimes inv()can produce
erroneous results

25

3.3 ARRAY DIVISION

Right division, /:
Right division is the other kind of
MATLAB's array division
• Used to solve the matrix equation

XC=D
 C is a square matrix, X, D are row vectors
 Solution is   X = D·C-1

In MATLAB, solve by using right
division operator (/), i.e.,

>> X = D / C

26

3.4 ELEMENT-BY-ELEMENT OPERATIONS

Another way of saying elementwise
operations is element-by-element
operations
• Addition and subtraction of arrays is

always elementwise

• Multiplication, division, exponentiation

of arrays can be elementwise

• Both arrays must be same dimension

27

3.4 ELEMENT-BY-ELEMENT OPERATIONS

Do elementwise multiplication,
division, exponentiation by putting a
period in front of the arithmetic
operator

28

3.4 ELEMENT-BY-ELEMENT OPERATIONS

29

3.4 ELEMENT-BY-ELEMENT OPERATIONS

30

3.4 ELEMENT-BY-ELEMENT OPERATIONS

ELEMENTWISE MULTIPLICATION
• Use .* to get elementwise multiplication
(notice period before asterisk)

• Both matrices must have the same

dimensions

>> A = [1 2; 3 4];
>> B = [0 1/2; 1 -1/2];
>> C = A .* B
>> C =

0  1
3 -2

31

3.4 ELEMENT-BY-ELEMENT OPERATIONS

If matrices not same dimensions
in elementwise multiplication,
MATLAB gives error
>> A = [ 1 2; 3 4];
>> B = [1 0]';
>> A .* B % Meant matrix
multiplication!
??? Error using ==> times
Matrix dimensions must agree.
>> A * B % this works
ans =
1
3

32

3.4 ELEMENT-BY-ELEMENT OPERATIONS

Be careful – when multiplying square
matrices
• Both types of multiplication always work
• If you specify the wrong operator,

MATLAB will do the wrong computation
and there will not report an error!
 Difficult to find this kind of mistake

33

3.4 ELEMENT-BY-ELEMENT OPERATIONS

EXAMPLE

>> A = [1 2; 3 4];
>> B = [0 1/2; 1 -1/2];
>> A .* B
>> ans

0  1
3 -2
>> A * B
ans =

2.0000  -0.5000
4.0000  -0.5000

34

3.4 ELEMENT-BY-ELEMENT OPERATIONS

Elementwise computations useful for
calculating value of a function at
many values of its argument

35

3.5 USING ARRAYS IN MATLAB BUILT-IN FUNCTIONS

Built-in MATLAB functions can
accept arrays as inputs
• When input is array, output is array of

same size with each element being result
of function applied to corresponding
input element
 Example: if x is a 7-element row vector,
cos(x) is [cos(x1) cos(x2) cos(x3) cos(x4)

cos(x5) cos(x6) cos(x7)]

36

3.5 USING ARRAYS IN MATLAB BUILT-IN FUNCTIONS

Example with matrix argument

Vectorization is MATLAB’s ability to use arrays
as arguments to functions. Vectorized
computations are very efficient

37

3.6 BUILT-IN FUNCTIONS FOR ANALYZING ARRAYS

MATLAB has lots of functions for
operating on arrays. For a vector v
• mean(v) – mean (average)
• max(v) – maximum value, optionally
with index of maximum
• min(v) – minimum value, optionally
with index of minimum
• sum(v) – sum
• sort(v) – elements sorted into
ascending order

38

3.6 BUILT-IN FUNCTIONS FOR ANALYZING ARRAYS

• median(v) – median
• std(v) – standard deviation
• det(A) – determinant of square matrix A
• dot(v,w) – dot (inner product); v, w
both vectors of same size but any dimension
• cross(v,w) – cross product; v, w must
both have three elements but any
dimension
• inv(A) – inverse of square matrix A

39

3.6 BUILT-IN FUNCTIONS FOR ANALYZING ARRAYS

See Table 3-1 in book for details on
the preceding functions

Note that in all functions of Table 3-1,
except for det(A) and inv(A), A is
a vector, not a matrix. Except for
those two functions, the table does
not apply if A is a matrix

40

3.7 GENERATION OF RANDOM NUMBERS

Random numbers often used in
MATLAB engineering applications
• Simulate noise
• Useful in certain mathematical
computations, such as Monte Carlo
simulations

41

3.7 GENERATION OF RANDOM NUMBERS

MATLAB has three commands that
create random numbers – rand,
randn, randi
• All can create scalars, vectors, or
matrices of random numbers

42

3.7 GENERATION OF RANDOM NUMBERS

rand generates random numbers
uniformly distributed between 0 and 1
• To get numbers between a and b, multiply
output of rand by b-a and add a, i.e.,   (b-
a)*rand + a

See Table 3-2 in book for some of
different ways of calling rand

43

3.7 GENERATION OF RANDOM NUMBERS

randi generates uniformly distributed
random integers in a specified range
For example, to make a 3×4 of random
numbers between 50 and 90

>> d=randi( [50 90],3,4)
d =

57  82  71  75
66  52  67  61
84  66  76  67

See Table 3-3 in book for some of different
ways of calling randi

44

3.7 GENERATION OF RANDOM NUMBERS

randn generates random numbers
from a normal distribution with
mean 0 and standard deviation 1

Call randn in same ways as rand, as
Table 3-2 in book shows

45

3.7 GENERATION OF RANDOM NUMBERS

To get normally-distributed numbers
with mean μ and standard deviation
σ, multiply output of randn by μ and
add σ, e.g.,

>> A = randn( 100, 100 ); % mean=0, std dev = 1
>> mu = 20;
>> sigma = 3;
>> B = sigma * A + mu; % mean = 20, std dev = 3

46

3.7 GENERATION OF RANDOM NUMBERS

To get normally distributed integers
apply the round function to
previous formula, i.e.,

round( sigma * rand + mu )
EXAMPLE

>> w = round(4*randn(1,6)+50)
W =
51  49  46  49  50  44

47

