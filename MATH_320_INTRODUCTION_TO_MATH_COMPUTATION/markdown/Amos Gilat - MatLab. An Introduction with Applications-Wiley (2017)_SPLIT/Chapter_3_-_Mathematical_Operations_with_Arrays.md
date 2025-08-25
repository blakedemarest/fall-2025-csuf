Chapter 3
Mathematical
Operations with Arrays

Once variables are created in MATLAB they can be used in a wide variety of
mathematical  operations.  In  Chapter  1  the  variables  that  were  used  in  mathe-
matical  operations  were  all  defined  as  scalars.  This  means  that  they  were  all
 arrays (arrays with one row and one column that have only one element)
and the mathematical operations were done with single numbers. Arrays, how-
ever, can be one-dimensional (arrays with one row, or with one column), two-
dimensional  (arrays  with  multiple  rows  and  columns),  and  even  of  higher
dimensions.  In  these  cases  the  mathematical  operations  are  more  complex.
MATLAB, as its name indicates, is designed to carry out advanced array opera-
tions that have many applications in science and engineering. This chapter pres-
ents the basic, most common mathematical operations that MATLAB performs
using arrays.

Addition and  subtraction  are  relatively  simple  operations  and  are  covered
first,  in  Section  3.1.  The  other  basic  operations—multiplication,  division,  and
exponentiation—can  be  done  in  MATLAB  in  two  different  ways.  One  way,
which uses the standard symbols (*, /, and ^), follows the rules of linear algebra
and  is  presented  in  Sections  3.2  and  3.3.  The  second  way,  which  is  called  ele-
ment-by-element operations, is covered in Section 3.4. These operations use the
symbols .*, ./, and .^ (a period is typed in front of the standard operation sym-
bol). In addition, in both types of calculations, MATLAB has left division oper-
ators ( .\ or \ ), which are also explained in Sections 3.3 and 3.4.
A Note to First-Time Users of MATLAB:

Although matrix operations are presented first and element-by-element opera-
tions  next,  the  order  can  be  reversed  since  the  two  are  independent  of  each
other. It is expected that almost every MATLAB user has some knowledge of
matrix operations and linear algebra, and thus will be able to follow the material
covered in Sections 3.2 and 3.3 without any difficulty. Some readers, however,
might prefer to read Section 3.4 first. MATLAB can be used with element-by-
element operations in numerous applications that do not require linear algebra
multiplication (or division) operations.

64

Chapter 3: Mathematical Operations with Arrays

3.1 ADDITION AND SUBTRACTION

The operations + (addition) and – (subtraction) can be used to add (subtract)
arrays  of  identical  size  (the  same  numbers  of  rows  and  columns)  and  to  add
(subtract) a scalar to an array. When two arrays are involved the sum, or the dif-
ference, of the arrays is obtained by adding, or subtracting, their corresponding
elements.

In general, if A and B are two arrays (for example,

 matrices),

then the matrix that is obtained by adding A and B is:

  and

Examples are:

>> VectA=[8 5 4]; VectB=[10 2 7];

Define two vectors.

>> VectC=VectA+VectB

VectC =
    18     7    11

>> A=[5 -3 8; 9 2 10]

A =
     5    -3      8
     9     2     10

>> B=[10 7 4; -11 15 1]

B =
    10      7     4
   -11     15     1

Define a vector VectC that is
equal to VectA+VectB.

Define two

 matrices A and B.

>> A-B

Subtracting matrix B from matrix A.

ans =
     -5   -10     4
     20   -13     9

>> C=A+B

C =
    15     4    12
    -2    17    11

>> VectA+A

Define a matrix C that is equal to A+B.

Trying to add arrays of different size.

??? Error using ==> plus
Matrix dimensions must agree.

An error message is displayed.

>>

3.2 Array Multiplication

65

When a scalar (number) is added to (or subtracted from) an array, the scalar

is added to (or subtracted from) all the elements of the array. Examples are:

>> VectA=[1 5 8 -10 2]
VectA =
     1     5     8   -10     2

>> VectA+4

Define a vector named VectA.

Add the scalar 4 to VectA.

ans =
     5     9    12    -6     6

4 is added to each element of VectA.

>> A=[6 21 -15; 0 -4 8]

Define a

 matrix A.

A =
     6    21   -15
     0    -4     8

>> A-5
ans =
     1    16   -20
    -5    -9     3

Subtract the scalar 5 from A.

5 is subtracted from each element of A.

3.2 ARRAY MULTIPLICATION

The multiplication operation  *  is executed by MATLAB according to the rules
of  linear  algebra.  This  means  that  if  A  and  B  are  two  matrices,  the  operation
A*B can be carried out only if the number of columns in matrix A is equal to the
number of rows in matrix B. The result is a matrix that has the same number of
rows as A and the same number of columns as B. For example, if A is a
matrix and B is a

 matrix:

  and

then the matrix that is obtained with the operation A*B has dimensions
with the elements:

A numerical example is:

66

Chapter 3: Mathematical Operations with Arrays

The product of the multiplication of two square matrices (they must be of
the same size) is a square matrix of the same size. However, the multiplication of
matrices is not commutative. This means that if A and B are both
, then
.  Also,  the  power  operation  can  be  executed  only  with  a  square
matrix (since A*A can be carried out only if the number of columns in the first
matrix is equal to the number of rows in the second matrix).

Two  vectors  can  be  multiplied  only  if  they  have  the  same  number  of  ele-
ments, and one is a row vector and the other is a column vector. The multiplica-
 matrix, which is a scalar.
tion of a row vector by a column vector gives a
This is the dot product of two vectors. (MATLAB also has a built-in function,
dot(a,b), that computes the dot product of two vectors.) When using the dot
function, the vectors a and b can each be a row vector or a column vector (see
Table 3-1). The multiplication of a column vector by a row vector, each with n
elements, gives an
 matrix Multiplication of array is demonstrated in Tuto-
rial 3-1.

Tutorial 3-1: Multiplication of arrays.

>> A=[1 4 2; 5 7 3; 9 1 6; 4 2 8]

A =
     1     4     2
     5     7     3
     9     1     6
     4     2     8

Define a

 matrix A.

>> B=[6 1; 2 5; 7 3]

Define a

 matrix B.

B =
     6     1
     2     5
     7     3

>> C=A*B

C =
    28    27
    65    49
    98    32
    84    38

>> F=[1 3; 5 7]

F =
     1     3
     5     7

>> G=[4 2; 1 6]

Multiply matrix A by matrix B and assign
the result to variable C.

>> D=B*A
??? Error using ==> *
Inner matrix dimensions must agree.

Trying to multiply B by A,
B*A, gives an error since
the number of columns in
B is 2 and the number of
rows in A is 4.

Define two

 matrices F and G.

3.2 Array Multiplication

67

Tutorial 3-1: Multiplication of arrays. (Continued)

G =
     4     2
     1     6

>> F*G

ans =
     7    20
    27    52

>> G*F

ans =
    14    26
    31    45

>> AV=[2 5 1]

AV =
     2     5     1

>> BV=[3; 1; 4]

BV =
     3
     1
     4

>> AV*BV

ans =
    15

>> BV*AV

ans =
     6    15     3
     2     5     1
     8    20     4
>>

Multiply F*G

Multiply G*F

Note that the answer for G*F is not the
same as the answer for F*G.

Define a three-element row vector AV.

Define a three-element column vector BV.

Multiply AV by BV. The answer is a scalar.
(Dot product of two vectors.)

Multiply BV by AV. The
 matrix.
answer is a

When an array is multiplied by a number (actually a number is a
each element in the array is multiplied by the number. For example:

 array),

>> A=[2 5 7 0; 10 1 3 4; 6 2 11 5]

Define a

 matrix A.

A =
     2     5     7     0
    10     1     3     4
     6     2    11     5

>> b=3

b =
     3

Assign the number 3 to the variable b.

68

>> b*A

Chapter 3: Mathematical Operations with Arrays

Multiply the matrix A by b. This can be
done by either typing b*A or A*b.

ans =
     6    15    21     0
    30     3     9    12
    18     6    33    15

>> C=A*5

C =
    10    25    35     0
    50     5    15    20
    30    10    55    25

Multiply the matrix A by 5 and assign
the result to a new variable C. (Typing
C=5*A gives the same result.)

Linear  algebra  rules  of  array  multiplication  provide  a  convenient  way  for
writing a system of linear equations. For example, the system of three equations
with three unknowns

can be written in a matrix form as:

and in matrix notation as

AX = B  where

,

, and

.

3.3 ARRAY DIVISION

The division operation is also associated with the rules of linear algebra. This
operation is more complex, and only a brief explanation is given below. A full
explanation can be found in books on linear algebra.

The division operation can be explained with the help of the identity matrix

and the inverse operation.

Identity matrix:

The identity matrix is a square matrix in which the diagonal elements are 1s and
the rest of the elements are 0s. As was shown in Section 2.2.1, an identity matrix
can be created in MATLAB with the eye command. When the identity matrix
multiplies another matrix (or vector), that matrix (or vector) is unchanged (the

3.3 Array Division

69

multiplication has to be done according to the rules of linear algebra). This is
equivalent to multiplying a scalar by 1. For example:

   or

  or

If a matrix A is square, it can be multiplied by the identity matrix, I, from the left
or from the right:

AI = IA = A

Inverse of a matrix:

The matrix B is the inverse of the matrix A if, when the two matrices are multi-
plied, the product is the identity matrix. Both matrices must be square, and the
multiplication order can be BA or AB.

Obviously B is the inverse of A, and A is the inverse of B. For example:

BA = AB = I

The inverse of a matrix A is typically written as A-1. In MATLAB the inverse of
a matrix can be obtained either by raising A to the power of –1, A^-1, or with
the inv(A) function. Multiplying the matrices above with MATLAB is shown
below.

>> A=[2 1 4; 4 1 8; 2 -1 3]

Creating the matrix A.

A =
     2     1     4
     4     1     8
     2    -1     3

>> B=inv(A)

B =
    5.5000   -3.5000    2.0000
    2.0000   -1.0000         0
   -3.0000    2.0000   -1.0000

Use the inv function to find the
inverse of A and assign it to B.

>> A*B

Multiplication of A and B gives the identity matrix.

ans =
     1     0     0
     0     1     0
     0     0     1

70

Chapter 3: Mathematical Operations with Arrays

>> A*A^-1

ans =
     1     0     0
     0     1     0
     0     0     1

Use  the  power  –1  to  find  the  inverse  of  A.
Multiplying it by A gives the identity matrix.

Not every matrix has an inverse. A matrix has an inverse only if it is square and
its determinant is not equal to zero.
Determinants:

A determinant is a function associated with square matrices. A short review on
determinants is given below. For a more detailed coverage refer to books on lin-
ear algebra.

The determinant is a function that associates with each square matrix A a
number,  called  the  determinant  of  the  matrix.  The  determinant  is  typically
denoted  by  det(A)  or  |A|.  The  determinant  is  calculated  according  to  specific
 matrix, the rule is:
rules. For a second-order

,  for example,

The determinant of a square matrix can be calculated with the det command
(see Table 3-1).

Array division:

MATLAB has two types of array division, right division and left division.

Left division, \ :

Left division is used to solve the matrix equation
. In this equation X
and B are column vectors. This equation can be solved by multiplying, on the
left, both sides by the inverse of A:

The left-hand side of this equation is X, since

So the solution of

 is:

In MATLAB the last equation can be written by using the left division charac-
ter:

X = A\B
It should be pointed out here that although the last two operations appear to
give the same result, the method by which MATLAB calculates X is different. In
the first, MATLAB calculates
 and then uses it to multiply B. In the second
(left  division),  the  solution  X  is  obtained  numerically  using  a  method  that  is
based on Gauss elimination. The left division method is recommended for solv-

3.3 Array Division

71

ing a set of linear equations, because the calculation of the inverse may be less
accurate than the Gauss elimination method when large matrices are involved.

Right division, / :

. In this equation
The right division is used to solve the matrix equation
X  and  D  are  row  vectors.  This  equation  can  be  solved  by  multiplying,  on  the
right, both sides by the inverse of C:

which gives

In MATLAB the last equation can be written using the right division character:

The following example demonstrates the use of the left and right division,

and the inv function to solve a set of linear equations.

X = D/C

Sample Problem 3-1: Solving three linear equations (array division)

Use matrix operations to solve the following system of linear equations.

Solution

Using the rules of linear algebra demonstrated earlier, the above system of equa-
tions can be written in the matrix form AX=B or in the form XC=D:

     or

Solutions for both forms are shown below:

>> A=[4 -2 6; 2 8 2; 6 10 3];

Solving the form AX = B.

>> B=[8; 4; 0];

>> X=A\B
X =
   -1.8049
    0.2927
    2.6341

Solving by using left division: X = A \ B.

>> Xb=inv(A)*B

Solving by using the inverse of A: X=A-1B.

Xb =
   -1.8049
    0.2927
    2.6341

72

Chapter 3: Mathematical Operations with Arrays

>> C=[4 2 6; -2 8 10; 6 2 3];

Solving the form XC = D.

>> D=[8 4 0];

>> Xc=D/C

Solving by using right division: X = D/C.

Xc =
   -1.8049    0.2927    2.6341

>> Xd=D*inv(C)

Solving by using the inverse of C: X=DC-1.

Xd =
   -1.8049    0.2927    2.6341

3.4 ELEMENT-BY-ELEMENT OPERATIONS

In Sections 3.2 and 3.3 it was shown that when the regular symbols for multipli-
cation and division (* and /) are used with arrays, the mathematical operations
follow  the  rules  of  linear  algebra.  There  are,  however,  many  situations  that
require  element-by-element  operations.  These  operations  are  carried  out  on
each of the elements of the array (or arrays). Addition and subtraction are by
definition  already  element-by-element  operations,  since  when  two  arrays  are
added (or subtracted) the operation is executed with the elements that are in the
same  position  in  the  arrays.  Element-by-element  operations  can  be  done  only
with arrays of the same size.

Element-by-element multiplication, division, or exponentiation of two vec-
tors or matrices is entered in MATLAB by typing a period in front of the arith-
metic operator.

Symbol

Description

Symbol

Description

.*

.^

Multiplication

Exponentiation

./

.\

Right division

Left Division

If two vectors a and b are a=[a1 a2 a3 a4] and b=[b1 b2 b3 b4], then element-
by-element multiplication, division, and exponentiation of the two vectors gives:

3.4 Element-by-Element Operations

If two matrices A and B are

73

A

=

A11 A12 A13
A21 A22 A23
A31 A32 A33

  and

B

=

B11 B12 B13
B21 B22 B23
B31 B32 B33

then element-by-element multiplication and division of the two matrices give:

A .* B =

A11B11 A12B12 A13B13
A21B21 A22B22 A23B23
A31B31 A32B32 A33B33

     A ./ B =

A11 B11 A12 B12 A13 B13
A21 B21 A22 B22 A23 B23
A31 B31 A32 B32 A33 B33

Element-by-element exponentiation of matrix A gives:

A .^ n =

A11

A21

A31

n A12
n A22
n A32

n A13
n A23
n A33

n

n

n

Element-by-element  multiplication,  division,  and  exponentiation  are

demonstrated in Tutorial 3-2.

Tutorial 3-2: Element-by-element operations.

>> A=[2 6 3; 5 8 4]

A =
     2     6     3
     5     8     4

>> B=[1 4 10; 3 2 7]

B =
     1     4    10
     3     2     7

>> A.*B

ans =
     2    24    30
    15    16    28

>> C=A./B

C =
    2.0000    1.5000    0.3000
    1.6667    4.0000    0.5714

Define a

2

3

 array A.

Define a

2

3

 array B.

Element-by-element multipli-
cation of array A by B.

Element-by-element division
of array A by B. The result is
assigned to variable C.

74

Chapter 3: Mathematical Operations with Arrays

Tutorial 3-2: Element-by-element operations. (Continued)

>> B.^3

ans =
     1     64   1000
    27      8    343

>> A*B

Element-by-element exponen-
tiation of array B. The result
is an array in which each term
is the corresponding term in B
raised to the power of 3.

Trying to multiply A*B gives
an error, since A and B cannot
be multiplied according to lin-
ear algebra rules. (The number
of columns in A is not equal to
the number of rows in B.)

??? Error using ==> *
Inner matrix dimensions must agree.

Element-by-element calculations are very useful for calculating the value of
a function at many values of its argument. This is done by first defining a vector
that contains values of the independent variable, and then using this vector in
element-by-element computations to create a vector in which each element is the
corresponding value of the function. One example is:

>> x=[1:8]

Create a vector x with eight elements.

x =
   1   2   3   4   5   6   7   8

>> y=x.^2-4*x

y =
  -3  -4  -3   0   5  12  21  32
>>

Vector x is used in element-
by-element calculations of
the elements of vector y.

. Element-by-element operation is needed when
In the example above
x is squared. Each element in the vector y is the value of y that is obtained when
the value of the corresponding element of the vector x is substituted in the equa-
tion. Another example is:

>> z=[1:2:11]

Create a vector z with six elements.

z =
    1    3    5    7    9   11

>> y=(z.^3 + 5*z)./(4*z.^2 - 10)

Vector z is used in element-
by-element calculations of
the elements of vector y.

 y =
   -1.0000    1.6154    1.6667    2.0323    2.4650    2.9241

In the last example

. Element-by-element operations are used in this

example three times: to calculate z3 and z2, and to divide the numerator by the
denominator.

3.5 Using Arrays in MATLAB Built-in Math Functions

75

3.5 USING ARRAYS IN MATLAB BUILT-IN MATH
FUNCTIONS

The  built-in  functions  in  MATLAB  are  written  such  that  when  the  argument
(input) is an array, the operation that is defined by the function is executed on
each  element  of  the  array.  (One  can  think  of  the  operation  as  element-by-ele-
ment application of the function.) The result (output) from such an operation is
an array in which each element is calculated by entering the corresponding ele-
ment of the argument (input) array into the function. For example, if a vector
with seven elements is substituted in the function cos(x), the result is a vector
with  seven  elements  in  which  each  element  is  the  cosine  of  the  corresponding
element in x. This is shown below.

>> x=[0:pi/6:pi]

x =
    0   0.5236   1.0472   1.5708   2.0944    2.6180    3.1416

>>y=cos(x)

y =
    1.0000      0.8660      0.5000      0.0000    -0.5000    -0.8660    -
1.0000
>>

An example in which the argument variable is a matrix is:

>> d=[1 4 9; 16 25 36; 49 64 81]

Creating a

 array.

d =
     1     4     9
    16    25    36
    49    64    81

>> h=sqrt(d)

h =
     1     2     3
     4     5     6
     7     8     9

h  is  a
  array  in  which  each
element  is  the  square  root  of  the
corresponding element in array d.

The feature of MATLAB in which arrays can be used as arguments in functions
is called vectorization.

3.6 BUILT-IN FUNCTIONS FOR ANALYZING ARRAYS

MATLAB has many built-in functions for analyzing arrays. Table 3-1 lists some
of these functions.

76

Chapter 3: Mathematical Operations with Arrays

Function

mean(A)

C=max(A)

[d,n]=max(A)

min(A)

[d,n]=min(A)

sum(A)

sort(A)

Table 3-1: Built-in array functions

Description

Example

If A is a vector, returns the
mean value of the elements
of the vector.

>> A=[5 9 2 4];
>> mean(A)
ans =
     5

If A is a vector, C is the
largest element in A. If A is
a matrix, C is a row vector
containing the largest ele-
ment of each column of A.

>> A=[5 9 2 4 11 6 11
1];
>> C=max(A)
C =
    11

If A is a vector, d is the
largest element in A, and n
is the position of the ele-
ment (the first if several
have the max value).

The same as max(A), but
for the smallest element.

The same as [d,n]=
max(A), but for the small-
est element.

If A is a vector, returns the
sum of the elements of the
vector.

>> [d,n]=max(A)
d =
    11
n =
     5

>> A=[5 9 2 4];
>> min(A)
ans =
     2

>> A=[5 9 2 4];
>> sum(A)
ans =
    20

If A is a vector, arranges
the elements of the vector
in ascending order.

>> A=[5 9 2 4];
>> sort(A)
ans =
   2     4     5     9

median(A)

If A is a vector, returns the
median value of the ele-
ments of the vector.

>> A=[5 9 2 4];
>> median(A)
ans =
    4.5000

3.7 Generation of Random Numbers

77

Function

std(A)

Table 3-1: Built-in array functions (Continued)

Description

Example

If A is a vector, returns the
standard deviation of the
elements of the vector.

>> A=[5 9 2 4];
>> std(A)
ans =
    2.9439

det(A)

Returns the determinant of
a square matrix A.

dot(a,b)

cross(a,b)

inv(A)

Calculates the scalar (dot)
product of two vectors a
and b. The vectors can
each be row or column vec-
tors.

Calculates the cross prod-
uct of two vectors a and b,
(axb). The two vectors
must have each three ele-
ments.

Returns the inverse of a
square matrix A.

>> A=[2 4; 3 5];
>> det(A)
ans =
    -2

>> a=[1 2 3];
>> b=[3 4 5];
>> dot(a,b)
ans =
    26

>> a=[1 3 2];
>> b=[2 4 1];
>> cross(a,b)
ans =
    -5     3    -2

>> A=[2 -2 1; 3 2 -1; 2 -
3 2];
>> inv(A)
ans =
    0.2000    0.2000
0
  -1.6000    0.4000
1.0000
  -2.6000    0.4000
2.0000

3.7 GENERATION OF RANDOM NUMBERS

Simulations of many physical processes and engineering applications frequently
require using a number (or a set of numbers) with a random value. MATLAB
has three commands—rand, randn, and randi—that can be used to assign
random numbers to variables.

The rand command:

The rand command generates uniformly distributed random numbers with val-
ues between 0 and 1. The command can be used to assign these numbers to a
scalar, a vector, or a matrix, as shown in Table 3-2.

78

Chapter 3: Mathematical Operations with Arrays

Table 3-2: The rand command

Command

Description

Example

rand

rand(1,n)

rand(n)

rand(m,n)

Generates a single ran-
dom number between 0
and 1.

>> rand
ans =
    0.2311

Generates an n-element
row vector of random
numbers between 0 and 1.

n n

Generates an
matrix with random
numbers between 0 and
1.

m n

Generates an
matrix with random
numbers between 0 and
1.

>> a=rand(1,4)
a =
    0.6068    0.4860    0.8913
0.7621

>> b=rand(3)
b =
  0.4565  0.4447  0.9218
  0.0185  0.6154  0.7382
  0.8214  0.7919  0.1763

>> c=rand(2,4)
c =
  0.4057  0.9169  0.8936
0.3529
  0.9355  0.4103  0.0579
0.8132

>> randperm(8)
ans =
   8   2   7   4   3   6
5   1

rand-
perm(n)

Generates a row vector
with n elements that are
random permutation of
integers 1 through n.

Sometimes  there  is  a  need  for  random  numbers  that  are  distributed  in  an
interval other than (0,1), or for numbers that are integers only. This can be done
using mathematical operations with the rand function. Random numbers that
are distributed in a range (a,b) can be obtained by multiplying rand by (b – a)
and adding the product to a:

(b – a)*rand + a

For example, a vector of 10 elements with random values between –5 and 10 can
be created by (a = –5, b = 10):

>> v=15*rand(1,10)-5

v =
   -1.8640    0.6973    6.7499    5.2127    1.9164    3.5174
6.9132   -4.1123    4.0430   -4.2460

The randi command:

The  randi  command  generates  uniformly  distributed  random  integer.  The
command can be used to assign these numbers to a scalar, a vector, or a matrix,
as shown in Table 3-3.

3.7 Generation of Random Numbers

79

Table 3-3: The randi command

Command

Description

Example

randi(imax)

(imax is an
integer)

randi(imax
,n)

Generates a single ran-
dom number between 1
and imax.

>> a=randi(15)
a =
     9

n n

Generates an
matrix with random inte-
gers between 1 and imax.

>> b=randi(15,3)
b =
     4     8    11
    14     3     8
     1    15     8

randi(imax
,m,n)

m n

Generates an
matrix with random inte-
gers between 1 and imax.

>> c=randi(15,2,4)
c =
     1     1     8    13
    11     2     2    13

The range of the random integers can be set to be between any two integers
  matrix  with

by  typing  [imin  imax]  instead  of  imax.  For  example,  a
random integers between 50 and 90 is created by:

>> d=randi([50 90],3,4)

d =
    57    82    71    75
    66    52    67    61
    84    66    76    67

The randn command:

The randn command generates normally distributed numbers with mean 0 and
standard deviation of 1. The command can be used to generate a single number,
a  vector,  or  a  matrix  in  the  same  way  as  the  rand  command.  For  example,  a

 matrix is created by:

>> d=randn(3,4)

d =
   -0.4326    0.2877     1.1892    0.1746
   -1.6656   -1.1465    -0.0376   -0.1867
    0.1253    1.1909     0.3273    0.7258

The mean and standard deviation of the numbers can be changed by mathemat-
ical operations to have any values. This is done by multiplying the number gen-
erated by the randn function by the desired standard deviation, and adding the
desired mean. For example, a vector of six numbers with a mean of 50 and stan-
dard deviation of 6 is generated by:

80

Chapter 3: Mathematical Operations with Arrays

>> v=4*randn(1,6)+50

v =
   42.7785   57.4344   47.5819   50.4134   52.2527   50.4544

Integers  of  normally  distributed  numbers  can  be  obtained  by  using  the

round function.

>> w=round(4*randn(1,6)+50)

w =
    51    49    46    49    50    44

3.8 EXAMPLES OF MATLAB APPLICATIONS

Sample Problem 3-2: Equivalent force system (addition of vectors)

Three forces are applied to a bracket as
shown.  Determine  the  total  (equiva-
lent) force applied to the bracket.

y

F3 = 700 N

Solution

A force is a vector (a physical quantity
that has a magnitude and direction). In
a  Cartesian  coordinate  system  a  two-
dimensional vector F can be written as:

F2 = 500 N

143o

30o

x

20o

F1 = 400 N

F

=

Fxi Fyj+

=

F

cos

i

+

F

sin

j

=

F

cos

i

sin+

j

 is its angle relative to the x axis, Fx
where F is the magnitude of the force and
and  Fy  are  the  components  of  F  in  the  directions  of  the  x  and  y  axes,  respec-
tively, and i and j are unit vectors in these directions. If Fx and Fy are known,
then F and   can be determined by:

F

=

2+
2 Fy
Fx

  and

tan

Fy
------=
Fx

The  total  (equivalent)  force  applied  on  the  bracket  is  obtained  by  adding  the
forces  that  are  acting  on  the  bracket.  The  MATLAB  solution  below  follows
three steps:
• Write each force as a vector with two elements, where the first element is the x

component of the vector and the second element is the y component.

• Determine the vector form of the equivalent force by adding the vectors.

• Determine the magnitude and direction of the equivalent force.

The problem is solved in the following program, written in a script file.

3.8 Examples of MATLAB Applications

81

% Sample Problem 3-2 solution (script file)
clear

F1M=400; F2M=500; F3M=700;

Th1=-20; Th2=30; Th3=143;

Define variables with the
magnitude of each vector.

Define variables with the angle of each vector.

F1=F1M*[cosd(Th1) sind(Th1)]

F2=F2M*[cosd(Th2) sind(Th2)]

F3=F3M*[cosd(Th3) sind(Th3)]

Define the three vectors.

Ftot=F1+F2+F3

Calculate the total force vector.

FtotM=sqrt(Ftot(1)^2+Ftot(2)^2)

Th=atand(Ftot(2)/Ftot(1))

Calculate  the  magnitude
of the total force vector.

Calculate the angle of the total force vector.

When the program is executed, the following is displayed in the Command Win-
dow:

F1 =
  375.8770 -136.8081

F2 =
  433.0127  250.0000

F3 =
 -559.0449  421.2705

Ftot =
  249.8449  534.4625

FtotM =
  589.9768

Th =
   64.9453

The components of F1.

The components of F2.

The components of F3.

The components of the total force.

The magnitude of the total force.

The direction of the total force in degrees.

The equivalent force has a magnitude of 589.98 N, and is directed
relative to the x axis. In vector notation, the force is
+

249.84i

=

F

64.95

534.46j

 (ccw)
 N.

82

Chapter 3: Mathematical Operations with Arrays

Sample Problem 3-3: Friction experiment (element-by-element

calculations)

The coefficient of friction,
 can be determined in
an  experiment by  measuring the force  F  required
to move a mass m. When F is measured and m is
known, the coefficient of friction can be calculated
by:

=

F mg

  (g = 9.81 m/s2).

F

m

Friction

Results from measuring F in six tests are given in the table below. Determine the
coefficient of friction in each test, and the average from all tests.

Test

Mass m (kg)

1

2

2

4

Force F (N)

12.5

23.5

3

5

30

4

10

61

5

20

117

6

50

294

Solution

A  solution  using  MATLAB  commands  in  the  Command  Window  is  shown
below.

>> m=[2 4 5 10 20 50];

Enter the values of m in a vector.

>> F=[12.5 23.5 30 61 117 294];

Enter the values of F in a vector.

>> mu=F./(m*9.81)

mu =

A value for mu is calculated for each test,
using element-by-element calculations.

   0.6371   0.5989   0.6116   0.6218   0.5963   0.5994

>> mu_ave=mean(mu)

mu_ave =
    0.6109

The average of the elements in the vector mu
is determined by using the function mean.

3.8 Examples of MATLAB Applications

83

Sample Problem 3-4: Electrical resistive network analysis (solving a

system of linear equations)

The  electrical  circuit  shown  consists  of
resistors  and  voltage  sources.  Determine
the current in each resistor using the mesh
current method, which is based on Kirch-
hoff’s voltage law.

V,
V2
,
R2
,
R5
,
R8

20=
18=
6=
12=

V1
R1
R4
R7
Solution

V,
V3
,
R3
,
R6

12=
10=
15=
14=

V
40=
16=
8=

R1

i1

V1

+

_

R2

R4

R5

i2

R3

i3
R6

+
_

V2

_
+

i4

R7

V3

Kirchhoff’s  voltage  law  states  that  the
sum of the voltage around a closed circuit
is zero. In the mesh current method a cur-
rent is first assigned for each mesh (i1, i2,
i3, i4 in the figure). Then Kirchhoff’s volt-
age  law  is  applied  for  each  mesh.  This
results in a system of linear equations for the currents (in this case four equa-
tions). The solution gives the values of the mesh currents. The current in a resis-
tor that belongs to two meshes is the sum of the currents in the corresponding
meshes. It is convenient to assume that all the currents are in the same direction
(clockwise in this case). In the equation for each mesh, the voltage source is pos-
itive if the current flows to the – pole, and the voltage of a resistor is negative for
current in the direction of the mesh current.

R8

The equations for the four meshes in the current problem are:

The four equations can be rewritten in matrix form [A][x] = [B]:

84

Chapter 3: Mathematical Operations with Arrays

The problem is solved in the following program, written in a script file:

V1=20; V2=12; V3=40;

R1=18; R2=10; R3=16; R4=6;

R5=15; R6=8; R7=12; R8=14;

A=[-(R1+R2+R3) R2 R3 0
R2 -(R2+R4+R5+R7) R4 R7
R3 R4 -(R3+R4+R6) R6
0 R7 R6 -(R6+R7+R8)]

>> B=[-V1; 0; V2; -V3]

Define variables with the
values of the V’s and R’s.

Create the matrix A.

Create the vector B.

>> I=A\B

Solve for the currents by using left division.

When  the  script  file  is  executed,  the  following  is  displayed  in  the  Command
Window:

A =
   -44    10    16    0
    10   -43     6   12
    16     6   -30    8
     0    12     8  -34

B =
   -20
     0
    12
   -40

I =
    0.8411
    0.7206
    0.6127
    1.5750
>>

i1
i2
i3
i4

The numerical value
of the matrix A.

The numerical value
of the vector B.

The solution.

=

=

i1

i4

A,

0.7206

0.8411

A, and

The last column vector gives the current in each mesh. The currents in the resis-
tors R1, R5, and R8 are
A, respec-
i2
tively. The other resistors belong to two meshes and their current is the sum of
the currents in the meshes.
The current in resistor R2 is
The current in resistor R3 is
The current in resistor R4 is
The current in resistor R6 is
The current in resistor R7 is

A.
A.
A.
A.
A.

1.5750

=

3.8 Examples of MATLAB Applications

85

Sample Problem 3-5: Motion of two particles

t

0=

A train and a car are approaching a road crossing.
At time
 the train is 400 ft south of the cross-
ing traveling north at a constant speed of 54 mi/h.
At the same time the car is 200 ft west of the cross-
ing traveling east at a speed of 28 mi/h and acceler-
ating at 4 ft/s2. Determine the positions of the train
and  the  car,  the  distance  between  them,  and  the
speed  of  the  train  relative  to  the  car  every  second
for the next 10 seconds.

To show the results, create an

 matrix in
which each row has the time in the first column and
the  train  position,  car  position,  distance  between
the train and the car, car speed, and the speed of the train relative to the car in
the next five columns, respectively.

11

6

Solution

The position of an object that moves along a straight line at a constant accelera-

tion is given by

 where s0 and v0 are the position and velocity at
, and a is the acceleration. Applying this equation to the train and the car

t
0=
gives:

    (train)

    (car)

The distance between the car and the train is:
train is constant and in vector notation is given by
accelerating  and  its  velocity  at  time  t  is  given  by
velocity  of

relative

train

the

=

x2
vtrain
vcar

y2+
. The velocity of the
. The car is
=
.  The
acart
=
i
to
is  given  by
vt c
. The magnitude (speed) of this velocity

votrainj
vocar
+
,

car,

the

d

is the length of the vector.

The problem is solved in the following program, written in a script file. First
a vector t with 11 elements for the time from 0 to 10 s is created, then the posi-
tions of the train and the car, the distance between them, and the speed of the
train relative to the car at each time element are calculated.

v0train=54*5280/3600; v0car=28*5280/3600; acar=4;

Create variables for the initial velocities (in ft/s) and the acceleration.

t=0:10;

y=-400+v0train*t;

x=-200+v0car*t+0.5*acar*t.^2;

Create the vector t.

Calculate the train and
car positions.

d=sqrt(x.^2+y.^2);

Calculate the distance between the train and car.

86

Chapter 3: Mathematical Operations with Arrays

vcar=v0car+acar*t;

Calculate the car’s velocity.

speed_trainRcar=sqrt(vcar.^2+v0train^2);

Calculate the speed of the train relative to the car.

table=[t' y' x' d' vcar' speed_trainRcar']

Create a table (see note below).

Note:  In  the  commands  above,  table  is  the  name  of  the  variable  that  is  a
matrix containing the data to be displayed.

When the script file is executed, the following is displayed in the Command

Window:

table =
         0 -400.0000 -200.0000  447.2136   41.0667   89.2139
    1.0000 -320.8000 -156.9333  357.1284   45.0667   91.1243
    2.0000 -241.6000 -109.8667  265.4077   49.0667   93.1675
    3.0000 -162.4000  -58.8000  172.7171   53.0667   95.3347
    4.0000  -83.2000   -3.7333   83.2837   57.0667   97.6178
    5.0000   -4.0000   55.3333   55.4777   61.0667  100.0089
    6.0000   75.2000  118.4000  140.2626   65.0667  102.5003
    7.0000  154.4000  185.4667  241.3239   69.0667  105.0849
    8.0000  233.6000  256.5333  346.9558   73.0667  107.7561
    9.0000  312.8000  331.6000  455.8535   77.0667  110.5075
   10.0000  392.0000  410.6667  567.7245   81.0667  113.3333

Time
(s)

Train
position
(ft)

Car
position
(ft)

Car-train
distance
(ft)

Car
speed
(ft/s)

Train speed
relative to
the car (ft/s)

In this problem the results (numbers) are displayed  by MATLAB  without
any text. Instructions on how to add text to output generated by MATLAB are
presented in Chapter 4.

3.9 PROBLEMS

Note:      Additional  problems  for  practicing  mathematical  operations  with  arrays
are provided at the end of Chapter 4.

1. For the function

, calculate the value of y for the following val-

ues of x using element-by-element operations:

0 1 2 3 4 5 6 7

.

2. For the function

, calculate the value of y for the following values of

x using element-by-element operations:

1.5 2 2.5 3 3.5 4

.

3.9 Problems

87

3. For  the  function

,  calculate  the  value  of  y  for
the following values of x using element-by-element operations: –2, –1.5, –1,
–0.5, 0, 0.5, 1, 1.5, 2.

4. For the function

, calculate the value of y for the following

values of x using element-by-element operations:

15 25 35 45 55 65

.

5. The radius, r, of a sphere can be calculated from its volume, V, by:

The surface area of a sphere, S, is given by:
4 r2

=

S

Determine  the  radius  and  surface  area  of  spheres  with  volumes  of  4,000,
3,500,  3,000,  2,500,  2,000,  1,500,  and  1,000  in.3.  Display  the  results  in  a
three-column table where the values of r, V, and S are displayed in the first,
second, and third columns, respectively. The values of r and S that are dis-
played in the table should be rounded to the nearest tenth of an inch.

6. A 70 lb-bag of rice is being pulled by a per-
son  by  applying  a  force  F  at  an  angle
  as
shown. The force required to drag the bag is
given by:

=

where
0.35
(a) Determine
 for
(b) Determine the angle

 is the friction coefficient.
F
=
 where F is minimum. Do it by creating a vector

5 10 15 20 25 30

, and

35

.

with elements ranging from
for each value of
MATLAB’s built-in function max.

5

 and then find the maximum F and associated

 and spacing of 0.01. Calculate F
 with

 to

35

7. The remaining loan balance, B, of a fixed payment n years mortgage after x

years is given by:

where L is the loan amount, and r is the annual interest rate. Calculate the
balance  of  a  30-year,  $100,000  mortgage,  with  annual  interest  rate  of  6%
(use 0.06 in the equation) after 0, 5, 10, 15, 20, 25, and 30 years. Create a
seven-element vector for x and use element-by-element operations. Display
the results in a two-row table where the values of years and balance are dis-
played in the first and second rows, respectively.

88

Chapter 3: Mathematical Operations with Arrays

u

=

x2

8.  The  length
+

  (magnitude)  of  a  vector
z2

  is  given  by
,  determine  its
u
length by writing one MATLAB command in which the vector is multiplied
by  itself  using  element-by-element  operation  and  the  MATLAB  built-in
functions sum and sqrt are used.

.  Given  the  vector

y2

+

9.  A  unit  vector  un  in  the  direction  of  the  vector

  is  given  by

  where

  is  the  length  (magnitude)  of  the  vector,  given  by

. Given the vector

, determine the unit vec-

tor in the direction of u using the following steps:
(a) Assign the vector to a variable u.
(b) Using  element-by-element  operation  and  the  MATLAB  built-in  func-
tions sum and sqrt calculate the length of u and assign it to the vari-
able Lu.

(c) Use the variables from parts (a) and (b) to calculate un.
(d) Verify that the length of un is 1 using the same operations as in part (b).

10.  The angle between two vectors

can be determined by

 and

, where

.

Given  the  vectors
,  determine
the  angle  between  them  (in  degrees)  by  writing  one  MATLAB  command
that  uses  element-by-element  multiplication  and  the  MATLAB  built-in
functions  acosd, sum, and sqrt.

  and

11. The following vector is defined in MATLAB:
 d=[2 4 3]
By  hand  (pencil  and  paper)  write  what  will  be  displayed  if  the  following
commands are executed by MATLAB. Check your answers by executing the
commands with MATLAB.
(a) d+d

(d) d.^2

(b) d.^d

(c) d.*d

12. The following two vectors are defined in MATLAB:
v=[3 -1 2] ,   u=[6 4 -3]

By  hand  (pencil  and  paper)  write  what  will  be  displayed  if  the  following
commands are executed by MATLAB. Check your answers by executing the
commands with MATLAB.
(a) v.*u

(b) v.^u

(c) v*u’

13. Define  the  vector

.  Then  use  the  vector  in  a  mathematical

expression to create the following vectors:
(a)

(b)

3.9 Problems

89

(c)

(d)

14. Define  the  vector

.  Then  use  the  vector  in  a  mathematical

expression to create the following vectors:

(a)

(c)

(b)

(d)

15. Define  x  and  y  as

the  vectors
  and
. Then use them in the following expressions to

calculate z using element-by-element calculations.

(a)

(b)

16. Define r and s as scalars

, and, t, x, and y as vectors
.  Then
use these variables to calculate the following expressions using element-by-
element calculations for the vectors.

,  and

 and

,

(a)

(b)

17. The area of a triangle ABC can be calculated
,  where  rAB  and  rAC  are  vec-
by
tors  connecting  the  vertices  A  and  B,  and  A
and C, respectively. Determine the area of the
triangle  shown  in  the  figure.  Use  the  follow-
ing steps in a script file to calculate the area.
First,  define  the  vectors  rOA,  rOB,  and  rOC
from knowing the coordinates of points A, B,
and  C.  Then  determine  the  vectors  rAB  and
rAC from rOA, rOB, and rOC. Finally, determine the area by using MATLAB’s
built-in functions cross, sum, and sqrt.

18. The cross product of two vectors can be used for
determining the angle between two vectors:

Use  MATLAB’s  built-in  functions  asind,
cross,  sqrt,  and  dot  to  find  the  angle  (in
  and
degrees)  between

. Recall that

 .

90

Chapter 3: Mathematical Operations with Arrays

19. The center of mass,
be calculated by:

, of n particles can

,

,

where  xi,  yi,  and  zi  and  mi  are  the  coordinates
and the mass of particle i, respectively. The coordinates and mass of six par-
ticles  are  listed  in  the  following  table.  Calculate  the  center  of  mass  of  the
particles.

Particle  Mass

A
B
C
D
E
F

(kg)
0.5
0.8
0.2
1.1
0.4
0.9

Coordinate x
(mm)
-10
-18
-7
5
0
25

Coordinate y
(mm)
8
6
11
12
-8
-20

Coordinate z
(mm)
32
19
2
-9
-6
8

20. Define the vectors:

   Use the vectors to verify the identity:

,

, and

Using MATLAB’s built-in functions cross and dot, calculate the value of
the left and right sides of the identity.

21. The maximum distance s and the maximum

height h that a projectile shot at an angle
are given by:

  and

where  v0

is  the  shooting  velocity  and
m/s2.  Determine  s( )  and  h( )  for
m/s.

 if

22.  Use MATLAB to show that the sum of the infinite series

1
n2-----

n

1=

 converges

. Do this by computing the sum for:
,

to
(a)
For each part create a vector n in which the first element is 1, the increment
is 1 and the last term is 5, 50, or 5,000. Then use element-by-element calcula-

,    (b)

(c)

tions  to  create  a  vector  in  which  the  elements  are

.  Finally,  use  MAT-

3.9 Problems

91

LAB’s built-in function sum to sum the series. Compare the values to
Use format long to display the numbers.

.

23.  Use MATLAB to show that the sum of the infinite series

 converges

n

1=

to 6. Do this by computing the sum for
(a)
(c)
For each part, create a vector n in which the first element is 1, the increment
is 1 and the last term is 5, 15, or 30. Then use element-by-element calcula-

(b)

,

,

tions  to  create  a  vector  in  which  the  elements  are

.  Finally,  use  MAT-

LAB’s built-in function sum to sum the series. Use format long to display
the numbers.

24. The natural exponential function can be expressed by

. Deter-

n

0=

mine e2 by calculating the sum of the series for:
(a) n = 5,

(b) n = 15,

(c)   n = 25

For each part create a vector n in which the first element is 0, the increment
is 1, and the last term is 5, 15, or 25. Then use element-by-element calcula-

tions to create a vector in which the elements are

. Finally, use the MAT-

LAB  built-in  function  sum  to  add  the  terms  of  the  series.  Compare  the
values obtained in parts (a), (b), and (c) with the value of e2 calculated by
MATLAB.

25. Show that

. Do this by first creating a vector x that

has  the  elements
, and

,
,
. Then, create a new vector y in which each ele-

,

,

ment is determined from the elements of x by

. Compare the ele-

ments of y with the value

. Use format long to display the numbers.

26. Show that

. Do this by first creating a vector  x that has

the elements 1.0, 0.1,  0.01,  0.001,   and 0.0001. Then, create a new vector y in

which  each  element  is  determined  from  the  elements  of  x  by

.

Compare the elements of y with the value 7.5. Use format long to display
the numbers.

92

Chapter 3: Mathematical Operations with Arrays

27. The Hazen Williams equation can be used to calculate the pressure drop, Pd

(psi/ft of pipe) in pipes due to friction:

where Q is the flow rate (gpm), C is a design coefficient determined by the
type of pipe, and  d is pipe diameter in inches. Consider a 3.5-in.-diameter
steel pipe with
. Calculate the pressure drop in a 1000-ft-long pipe
for flow rates of 250, 300, 350, 400, and 450 gpm. To carry out the calcula-
tion, first create a five-element vector with the values of the flow rates (250,
300, ...). Then use the vector in the formula using element-by-element oper-
ations.

28. The monthly lease payment, Pmt, of a new car can be calculated by:

where Pv and Fv are the present value and the future value (at the end of the
lease) of the car, respectively. N is the duration of the lease in months, and i
is the interest rate per year. Consider a 36-months-lease of a car with a pres-
ent value of $38,000 and a future value of $23,400. Calculate the monthly
payments if the yearly interest rates are 3, 4, 5, 6, 7, and 8%. To carry out the
calculation, first create a five-element vector with the values of the interest
rates (0.03, 0.04, ...). Then use the vector in the formula using element-by-
element operations.

29.  Create the following three matrices:

,

,

(a) Calculate
tative.

A B+

 and

B A+

 to show that addition of matrices is commu-

(b) Calculate A*(B*C) and (A*B)*C to show that multiplication of matrices

is associative.

(c) Calculate  5(B+C)  and  5B+5C  to  show  that,  when  matrices  are  multi-

plied by a scalar, the multiplication is distributive.

(d) Calculate (A+B)*C and A*C+B*C to show that matrix multiplication is

distributive.

3.9 Problems

93

30. Use the matrices A, B, and C from the previous problem to answer the fol-

lowing:

(a)  Does

A B

=

B A

?

 (b)  Does (B*C)-1 = B-1*C-1?

(c)  Does

? (

t means transpose) (d)  Does (A + B)t = At + Bt?

31. Create a

 matrix A having random integer values between 1 and 5. Call
the matrix A and, using MATLAB, perform the following operations. For
each part explain the operation.

(a)  A.^A

(d)  A./A

(b)  A.*A

(e) det(A)

(c)  A*A-1

(f) inv(A)

32. The magic square is an arrangement of numbers in a square grid in such a
way that the sum of the numbers in each row, and in each column, and in
each  diagonal  is  the  same.  MATLAB  has  a  built-in  function  magic(n)
 magic
that returns an
square,  and then  test the  properties of the resulting matrix  by finding the
sum of the elements in each row, in each column and in both diagonals. In
each case, use MATLAB’s built-in function sum. (Other functions that can
be useful are diag and fliplr.)

 magic square. In a script file create a

5

5

n

n

33. Solve the following system of three linear equations:

34. Solve the following system of six linear equations:

35. A  football stadium  has  100,000  seats.  In  a  game  with  full  capacity people

with the following ticket and associated cost attended the game:

Student
$25

Alumni
$40

Faculty
$60

Public
$70

Veterans
$32

Guests
$0

Cost

Determine the number of people that attended the game in each cost cate-
gory  if  the  total  revenue  was  $4,897,000,  there  were  11,000  more  alumni
than  faculty,  the  number  of  public  plus  alumni  together  was  10  times  the
number  of  veterans,  the  number  of  faculty  plus  alumni  together  was  the

94

Chapter 3: Mathematical Operations with Arrays

same  as  the  number  of  students,  and  the  number  of  faculty  plus  students
together  was  four  times  larger  than  the  number  of  guests  and  veterans
together.

36. A food company manufactures five types of 8-oz trail mix packages using
different  mixtures  of  peanuts,  almonds,  walnuts,  raisins,  and  M&Ms.  The
mixtures have the following compositions:

Peanuts
(oz)
3
1
1
2
1

Almonds
(oz)
1
2
1
0
2

Walnuts
(oz)
1
1
0
3
3

Raisins
(oz)
2
3
3
1
0

M&Ms
(oz)
1
1
3
2
2

Mix 1
Mix 2
Mix 3
Mix 4
Mix 5

How many packages of each mix can be manufactured if 105 lb of peanuts,
74 lb of almonds, 102 lb of walnuts, 118 lb of raisins, and 121 lb of M&Ms
are available? Write a system of linear equations and solve.

37. The  electrical  circuit  shown  consists  of
resistors and voltage sources. Determine
, using the mesh current
method  based  on  Kirchhoff’s  voltage
law (see Sample Problem 3-4).

 and

R1

V1

+
_

i1

R2

i2

R3

R4

R6

V2
+

_

i3

R7

R5

V,

 ,
,

,

V,

V

,
,

i4

+ _

V3

R8

