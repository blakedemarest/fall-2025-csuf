Chapter 1
Starting with
MATLAB

This chapter begins by describing the characteristics and purpose of the differ-
ent windows in MATLAB. Next, the Command Window is introduced in detail.
The chapter shows how to use MATLAB for arithmetic operations with scalars
in much to the way that a calculator is used. This includes the use of elementary
math functions with scalars. The chapter then shows how to define scalar vari-
ables (the assignment operator) and how to use these variables in arithmetic cal-
culations. The last section in the chapter introduces script files. It shows how to
write, save, and execute simple MATLAB programs.

1.1  STARTING MATLAB, MATLAB WINDOWS

It is assumed that the software is installed on the computer, and that the user
can start the program. Once the program starts, the MATLAB desktop window
opens with the default layout, Figure 1-1. The layout has a Toolstrip at the top,
the Current Folder Toolbar below it, and four windows underneath. At the top
of the Toolstrip there are three tabs: HOME, PLOTS, and APPS. Clicking on
the tabs changes the icons in the Toolstrip. Commonly, MATLAB is used with
the  HOME  tab  selected.  The  associated  icons  are  used  for  executing  various
commands,  as  explained  later  in  this  chapter.  The  PLOTS  tab  can  be  used  to
create plots, as explained in Chapter 5 (Section 5.12), and the APPS tab can be
used for opening additional applications and Toolboxes of MATLAB.
The default layout
The default layout (Figure 1-1) consists of the following four windows that are
displayed under the Toolstrip: the Command Window (the larger window), the
Current  Folder  Window  (on  the top  left), the  Details  Window  and the  Work-
space  Window  (on  the  bottom  lest).  A  list of  several  MATLAB  windows  and
their purposes is given in Table 1-1.

Four of the windows—the Command Window, the Figure Window, the Edi-
tor Window, and the Help Window—are used extensively throughout the book

6

Chapter 1: Starting with MATLAB

Figure 1-1: The default view of MATLAB desktop.

and are briefly described on the following pages. More detailed descriptions are
included in the chapters where they are used. The Command History Window,
Current Folder Window, and the Workspace Window are described in Sections
1.2, 1.8.4, and 4.1, respectively.

Command Window:  The Command Window is MATLAB’s main window and
opens when MATLAB is started. It is convenient to have the Command Win-
dow as the only visible window. This can be done either by closing all the other
windows, or by selecting Command Window Only in the menu that opens when
the Layout icon on the Toolstrip is selected. To close a window, click on the pull-
down  menu  at  the  top  right-hand  side  of  the  window  and  then  select  Close.
Working in the Command Window is described in detail in Section 1.2.

Table 1-1: MATLAB windows

Window

Purpose

Command Window

Figure Window

Editor Window

Main  window,  enters  variables,  runs
programs.

Contains  output  from  graphic  com-
mands.

Creates  and  debugs  script  and  func-
tion files.

Help Window

Provides help information.

Command History Win-
dow

Logs commands entered in the Com-
mand Window.

1.1 Starting MATLAB, MATLAB Windows

7

Table 1-1: MATLAB windows

Window

Purpose

Workspace Window

Provides information about the vari-
ables that are stored.

Current Folder Window

Shows the files in the current folder.

Figure Window:  The Figure Window opens automatically when graphics com-
mands are executed, and contains graphs created by these commands. An exam-
ple of a Figure Window is shown in Figure 1-2. A more detailed description of
this window is given in Chapter 5.

Figure 1-2: Example of a Figure Window.

Editor Window:  The Editor Window is used for writing and editing programs.
This window is opened by clicking on the New Script icon in the Toolstrip, or by
clicking on the New icon and then selecting Script from the menu that opens. An
example of an Editor Window is shown in Figure 1-3. More details on the Edi-
tor Window are given in Section 1.8.2, where it is used for writing script files,
and in Chapter 7, where it is used to write function files.
Help Window:  The Help Window contains help information. This window can
be opened from the Help icon in the Toolstrip of the Command Window or the
toolbar of any MATLAB window. The Help Window is interactive and can be
used to obtain information on any feature of MATLAB. Figure 1-4 shows an
open Help Window.

When  MATLAB  is  started  for  the  first  time,  the  screen  looks  like  that
shown in Figure 1-1. For most beginners it is probably more convenient to close

8

Chapter 1: Starting with MATLAB

Figure 1-3: Example of an Editor Window.

Figure 1-4: The Help Window.

1.2 Working in the Command Window

9

all  the  windows  except  the  Command  Window.  The  closed  windows  can  be
reopened by selecting them from the layout icon in the Toolstrip. The windows
shown in Figure 1-1 can be displayed by clicking on the layout icon and selecting
Default in the menu that opens. The various windows in Figure 1-1 are docked
to  the  desktop.  A  window  can  be  undocked  (become  a  separate,  independent
window) by dragging it out. An independent window can be redocked by click-
ing on the pull-down menu at the top right-hand side of the window and then
selecting Dock.

1.2 WORKING IN THE COMMAND WINDOW

The Command Window is MATLAB’s main window and can be used for execut-
ing  commands,  opening  other  windows,  running  programs written  by  the  user,
and managing the software. An example of the Command Window, with several
simple commands that will be explained later in this chapter, is shown in Figure
1-5.

To  type  a  command  the  cursor  is  placed
next to the command prompt ( >> ).

Figure 1-5: The Command Window.

Notes for working in the Command Window:

• To type a command, the cursor must be placed next to the command prompt (

>> ).

• Once  a  command  is  typed  and  the  Enter  key  is  pressed,  the  command  is  exe-
cuted. However, only the last command is executed. Everything executed previ-
ously (that might be still displayed) is unchanged.

• Several  commands  can  be  typed  in  the  same  line.  This  is  done  by  typing  a
comma between the commands. When the Enter key is pressed, the commands
are executed in order from left to right.

•

It is not possible to go back to a previous line that is displayed in the Command

10

Chapter 1: Starting with MATLAB

Window, make a correction, and then re-execute the command.

• A previously typed command can be recalled to the command prompt with the
 ). When the command is displayed at the command prompt, it
 ) can be

up-arrow key (
can be modified if needed and then executed. The down-arrow key (
used to move down the list of previously typed commands.

•

If a command is too long to fit in one line, it can be continued to the next line by
typing three periods  … (called an ellipsis) and pressing the Enter key. The con-
tinuation of the command is then typed in the new line. The command can con-
tinue line after line up to a total of 4,096 characters.

The semicolon ( ; ):
When  a  command  is  typed  in  the  Command  Window  and  the  Enter  key  is
pressed, the command is executed. Any output that the command generates is
displayed in the Command Window. If a semicolon ( ; ) is typed at the end of a
command, the output of the command is not displayed. Typing a semicolon is
useful when the result is obvious or known, or when the output is very large.

If several commands are typed in the same line, the output from any of the
commands  will  not  be  displayed  if  a  semicolon  instead  of  a  comma  is  typed
between the commands.
Typing  %:
When the symbol % (percent) is typed at the beginning of a line, the line is desig-
nated as a comment. This means that when the Enter key is pressed the line is
not  executed.  The  %  character  followed  by  text  (comment)  can  also  be  typed
after a command (in the same line). This has no effect on the execution of the
command.

Usually  there  is  no  need  for  comments  in  the  Command  Window.  Com-
ments,  however,  are  frequently  used  in  a  program  to  add  descriptions  or  to
explain the program (see Chapters 4 and 6).
The clc command:
The clc command (type clc and press Enter) clears the Command Window.
After typing in the Command Window for a while, the display may become very
long.  Once  the  clc  command  is  executed,  a  clear  window  is  displayed.  The
command does not change anything that was done before. For example, if some
variables  were  defined  previously  (see  Section  1.6),  they  still  exist  and  can  be
used. The up-arrow key can also be used to recall commands that were typed
before.
The Command History Window:
The Command History Window lists the commands that have been entered in
the  Command  Window.  This  includes  commands  from  previous  sessions.  A
command  in  the  Command  History  Window  can  be  used  again  in  the  Com-
mand Window. By double-clicking on the command, the command is reentered
in the Command Window and executed. It is also possible to drag the command
to the Command Window, make changes if needed, and then execute it. The list

1.3 Arithmetic Operations with Scalars

11

in  the  Command  History  Window  can  be  cleared  by  selecting  the  lines  to  be
deleted  and  then  right-clicking  the  mouse  and  selecting  Delete  Selection.  The
whole history can be deleted by right-clicking the mouse and selecting choose
Clear Command History in the menu that opens.

1.3 ARITHMETIC OPERATIONS WITH SCALARS

In  this  chapter  we  discuss  only  arithmetic  operations  with  scalars,  which  are
numbers. As will be explained later in the chapter, numbers can be used in arith-
metic calculations directly (as with a calculator) or they can be assigned to vari-
ables, which can subsequently be used in calculations. The symbols of arithmetic
operations are:

Operation

Addition

Subtraction

Multiplication

Right division

Left division

Exponentiation

Symbol

Example

+

–

*

/

\

^

5 + 3

5 – 3

5 * 3

5 / 3

5 \ 3 = 3 / 5

5 ^ 3 (means 53 = 125)

It should be pointed out here that all the symbols except the left division are
the same as in most calculators. For scalars, the left division is the inverse of the
right  division.  The  left  division,  however,  is  mostly  used  for  operations  with
arrays, which are discussed in Chapter 3.

1.3.1 Order of Precedence

MATLAB  executes  the  calculations  according  to  the  order  of  precedence  dis-
played below. This order is the same as used in most calculators.

Precedence

Mathematical Operation

First

Second

Third

Fourth

Parentheses. For nested parentheses, the innermost
are executed first.

Exponentiation.

Multiplication, division (equal precedence).

Addition and subtraction.

In an expression that has several operations, higher-precedence operations
are executed before lower-precedence operations. If two or more operations have
the same precedence, the expression is executed from left to right. As illustrated
in the next section, parentheses can be used to change the order of calculations.

12

Chapter 1: Starting with MATLAB

1.3.2 Using MATLAB as a Calculator

The simplest way to use MATLAB is as a calculator. This is done in the Com-
mand Window by typing a mathematical expression and pressing the Enter key.
MATLAB calculates the expression and responds by displaying ans =  followed
by the numerical result of the expression in the next line. This is demonstrated in
Tutorial 1-1.

Tutorial 1-1: Using MATLAB as a calculator.

>> 7+8/2

ans =
    11

>> (7+8)/2

ans =
    7.5000

>> 4+5/3+2

ans =
    7.6667

>> 5^3/2

ans =
   62.5000

>> 27^(1/3)+32^0.2

ans =
     5

>> 27^1/3+32^0.2

ans =
    11

Type and press Enter.

8/2 is executed first.

Type and press Enter.

7+8 is executed first.

5/3 is executed first.

5^3 is executed first, /2 is executed next.

1/3  is  executed  first,  27^(1/3)  and  32^0.2  are
executed next, and + is executed last.

27^1  and  32^0.2  are  executed  first,  /3  is  exe-
cuted next, and + is executed last.

>> 0.7854-(0.7854)^3/(1*2*3)+0.785^5/(1*2*3*4*5)...
-(0.785)^7/(1*2*3*4*5*6*7)

ans =
    0.7071
>>

1.4 DISPLAY FORMATS

Type  three  periods  ...  (and  press  Enter)  to
continue the expression on the next line.

The  last  expression  is  the  first  four
terms of the Taylor series for sin( /4).

The  user  can  control  the  format  in  which  MATLAB  displays  output  on  the
screen. In Tutorial 1-1, the output format is fixed-point with four decimal digits
(called short), which is the default format for numerical values. The format can

1.4 Display Formats

13

be changed with the format command. Once the format command is entered,
all  the  output  that  follows  is  displayed  in  the  specified  format.  Several  of  the
available formats are listed and described in Table 1-2.

MATLAB  has  several  other  formats  for  displaying  numbers.  Details  of
these formats can be obtained by typing help format in the Command Win-
dow. The format in which numbers are displayed does not affect how MATLAB
computes and saves numbers.

Table 1-2: Display formats

Command

Description

format short

format long

Fixed-point with 4 decimal
digits for:
number
0.001
Otherwise display format
short e.

1000

Fixed-point with 15 deci-
mal digits for:
number
0.001
Otherwise display format
long e.

100

Example

>> 290/7
ans =
   41.4286

>> 290/7
ans =
  41.428571428571431

format short e Scientific notation with 4

decimal digits.

>> 290/7
ans =
  4.1429e+001

format long e

Scientific notation with 15
decimal digits.

>> 290/7
ans =

format short g Best of 5-digit fixed or

floating point.

4.142857142857143e+0
01

>> 290/7
ans =
       41.429

format long g

Best of 15-digit fixed or
floating point.

>> 290/7
ans =

format bank

Two decimal digits.

41.4285714285714

>> 290/7
ans =
         41.43

format compact Eliminates blank lines to allow more lines with informa-

tion displayed on the screen.

format loose

Adds blank lines (opposite of compact).

14

Chapter 1: Starting with MATLAB

1.5 ELEMENTARY MATH BUILT-IN FUNCTIONS

In addition to basic arithmetic operations, expressions in MATLAB can include
functions. MATLAB has a very large library of built-in functions. A function
has a name and an argument in parentheses. For example, the function that cal-
culates  the  square  root  of  a  number  is  sqrt(x).  Its  name  is  sqrt,  and  the
argument is x. When the function is used, the argument can be a number, a vari-
able  that  has  been  assigned  a  numerical  value  (explained  in  Section  1.6),  or  a
computable expression that can be made up of numbers and/or variables. Func-
tions can also be included in arguments, as well as in expressions. Tutorial 1-2
shows  examples  of  using  the  function  sqrt(x)  when  MATLAB  is  used  as  a
calculator with scalars.

Tutorial 1-2: Using the sqrt built-in function.

>> sqrt(64)

ans =
     8

>> sqrt(50+14*3)

ans =
    9.5917

Argument is a number.

Argument is an expression.

>> sqrt(54+9*sqrt(100))

Argument includes a function.

ans =
    12

>> (15+600/4)/sqrt(121)

Function is included in an expression.

ans =
    15
>>

Some  commonly  used  elementary  MATLAB  mathematical  built-in  func-
tions are given in Tables 1-3 through 1-5. A complete list of functions organized
by category can be found in the Help Window.

Table 1-3: Elementary math functions

Function

sqrt(x)

Description

Square root.

Example

>> sqrt(81)
ans =
     9

nthroot(x,n)

Real nth root of a real number
x. (If x is negative n must be an
odd integer.)

>> nthroot(80,5)
ans =
    2.4022

exp(x)

Exponential

ex

.

>> exp(5)
ans =
  148.4132

1.5 Elementary Math Built-in Functions

15

Table 1-3: Elementary math functions (Continued)

Function

abs(x)

log(x)

Description

Absolute value.

Natural logarithm.
Base e logarithm (ln).

log10(x)

Base 10 logarithm.

factorial(x)

The factorial function x!
(x must be a positive integer.)

Example

>> abs(-24)
ans =
    24

>> log(1000)
ans =
    6.9078

>> log10(1000)
ans =
    3.0000

>> factorial(5)
ans =
   120

Table 1-4: Trigonometric math functions

Function

sin(x)
sind(x)

Description

Sine of angle x (x in radians).
Sine of angle x (x in degrees).

cos(x)
cosd(x)

Cosine of angle x (x in radians).
Cosine of angle x (x in degrees).

tan(x)
tand(x)

Tangent  of  angle  x  (x  in  radians).
Tangent of angle x (x in degrees).

cot(x)
cotd(x)

Cotangent of angle x (x in radians).
Cotangent of angle x (x in degrees).

Example

>> sin(pi/6)
ans =
    0.5000

>> cosd(30)
ans =
    0.8660

>> tan(pi/6)
ans =
    0.5774

>> cotd(30)
ans =
    1.7321

The  inverse  trigonometric  functions  are  asin(x),  acos(x),  atan(x),
acot(x)  for  the  angle  in  radians;  and  asind(x),  acosd(x),  atand(x),
acotd(x) for the angle in degrees. The hyperbolic trigonometric functions are
sinh(x),  cosh(x),  tanh(x),  and  coth(x).  Table  1-4  uses  pi,  which  is
equal to

 (see Section 1.6.3).

Table 1-5: Rounding functions

Function

round(x)

Description

Round to the nearest integer.

Example

>> round(17/5)
ans =
     3

16

Chapter 1: Starting with MATLAB

Table 1-5: Rounding functions (Continued)

Function

fix(x)

Description

Round toward zero.

ceil(x)

Round toward infinity.

floor(x)

Round toward minus infinity.

rem(x,y)

sign(x)

Returns  the  remainder  after  x
is divided by y.

Signum  function.  Returns  1  if
,  and  0  if
x
x
x

0>
0=

,  –1  if

0<

.

Example

>> fix(13/5)
ans =
     2

>> ceil(11/5)
ans =
     3

>> floor(-9/4)
ans =
    -3

>> rem(13,5)
ans =
     3

>> sign(5)
ans =
     1

1.6 DEFINING SCALAR VARIABLES

A variable is a name made of a letter or a combination of several letters (and
digits) that is assigned a numerical value. Once a variable is assigned a numerical
value, it can be used in mathematical expressions, in functions, and in any MAT-
LAB  statements  and  commands.  A  variable  is  actually  a  name  of  a  memory
location.  When  a  new  variable  is  defined,  MATLAB  allocates  an  appropriate
memory  space  where  the  variable’s  assignment  is  stored.  When  the  variable  is
used the stored data is used. If the variable is assigned a new value the content of
the    memory location is replaced. (In Chapter 1 we consider only variables that
are  assigned  numerical  values  that  are  scalars.  Assigning  and  addressing  vari-
ables that are arrays is discussed in Chapter 2.)

1.6.1 The Assignment Operator

In  MATLAB  the    =    sign  is  called  the  assignment  operator.  The  assignment
operator assigns a value to a variable.

Variable_name = A numerical value, or a computable expression

• The  left-hand  side  of  the  assignment  operator  can  include  only  one  variable
name. The right-hand side can be a number, or a computable expression that can
include numbers and/or variables that were previously assigned numerical val-
ues. When the Enter key is pressed the numerical value of the right-hand side is
assigned  to  the  variable,  and  MATLAB  displays  the  variable  and  its  assigned
value in the next two lines.

1.6 Defining Scalar Variables

17

The following shows how the assignment operator works.

>> x=15

x =
    15

>> x=3*x-12

x =
    33
>>

The number 15 is assigned to the variable x.

MATLAB  displays  the  variable
name and its assigned value.

A  new  value  is  assigned  to  x.
The new value is 3 times the pre-
vious value of x minus 12.

The last statement (
) illustrates the difference between the assignment
operator  and  the  equal  sign.  If  in  this  statement  the  =  sign  meant  equal,  the
value of x would be 6 (solving the equation for x).

The use of previously defined variables to define a new variable is demon-

strated next.

>> a=12

a =
    12

>> B=4

B =
     4

Assign 12 to a.

Assign 4 to B.

>> C=(a-B)+40-a/B*10

C =
    18

Assign the value of the
expression on the right-hand
side to the variable C.

•

•

If a semicolon is typed at the end of the command, then when the Enter key is
pressed,  MATLAB  does  not  display  the  variable  with  its  assigned  value  (the
variable still exists and is stored in memory).

If a variable already exists, typing the variable’s name and pressing the Enter key
will display the variable and its value in the next two lines.

As an example, the last demonstration is repeated below using semicolons.

>> a=12;

>> B=4;

>> C=(a-B)+40-a/B*10;

The variables a, B, and C are defined but
are  not  displayed,  since  a  semicolon  is
typed at the end of each statement.

>> C
C =
    18

The value of the variable C is displayed
by typing the name of the variable.

• Several assignments can be typed in the same line. The assignments must be sep-
arated with a comma (spaces can be added after the comma). When the Enter
key is pressed, the assignments are executed from left to right and the variables

18

Chapter 1: Starting with MATLAB

and their assignments are displayed. A variable is not displayed if a semicolon is
typed instead of a comma. For example, the assignments of the variables a, B,
and C above can all be done in the same line.

>> a=12, B=4; C=(a-B)+40-a/B*10

a =
    12

C =
    18

The variable B is not displayed because a semi-
colon is typed at the end of the assignment.

• A variable that already exists can be reassigned a new value. For example:

>> ABB=72;

>> ABB=9;

>> ABB

ABB =
     9
>>

A value of 72 is assigned to the variable ABB.

A new value of 9 is assigned to the variable ABB.

The  current  value  of  the  variable  is  dis-
played  when  the  name  of  the  variable  is
typed and the Enter key is pressed.

• Once a variable is defined it can be used as an argument in functions. For exam-

ple:

>> x=0.75;

>> E=sin(x)^2+cos(x)^2
E =
     1
>>

1.6.2 Rules About Variable Names

A variable can be named according to the following rules:
• Must begin with a letter.

• Can be up to 63 characters long.

• Can contain letters, digits, and the underscore character.

• Cannot contain punctuation characters (e.g., period, comma, semicolon).

• MATLAB  is  case-sensitive:  it  distinguishes  between  uppercase  and  lowercase
letters. For example, AA, Aa, aA, and aa are the names of four different vari-
ables.

• No spaces are allowed between characters (use the underscore where a space is

desired).

• Avoid using the name of a built-in function for a variable (i.e., avoid using cos,
sin, exp, sqrt, etc.). Once a function name is used to for a variable name, the
function cannot be used.

1.7 Useful Commands for Managing Variables

19

1.6.3 Predefined Variables and Keywords

There are 20 words, called keywords, that are reserved by MATLAB for various
purposes and cannot be used as variable names. These words are:

break  case  catch  classdef  continue  else  elseif  end  for
function  global  if  otherwise  parfor  persistent  return
spmd switch try while

When  typed,  these  words  appear  in  blue.  An  error  message  is  displayed  if  the
user tries to use a keyword as a variable name. (The keywords can be displayed
by typing the command iskeyword.)

A number of frequently used variables are already defined when MATLAB

is started. Some of the predefined variables are:

ans A variable that has the value of the last expression that was not assigned
to  a  specific  variable  (see  Tutorial  1-1).  If  the  user  does  not  assign  the
value  of  an  expression  to a variable,  MATLAB  automatically  stores  the
result in ans.
pi  The number  .
eps The smallest difference between two numbers. Equal to 2^(–52), which is

approximately 2.2204e–016.

inf Used for infinity.

Defined as
Same as i.

i
j
NaN Stands  for  Not-a-Number.  Used  when  MATLAB  cannot  determine  a

, which is: 0 + 1.0000i.

valid numeric value. Example: 0/0.

The predefined variables can be redefined to have any other value. The vari-
ables pi, eps, and inf, are usually not redefined since they are frequently used
in many applications. Other predefined variables, such as  i and j, are sometime
redefined (commonly in association with loops) when complex numbers are not
involved in the application.

1.7 USEFUL COMMANDS FOR MANAGING VARIABLES

The following are commands that can be used to eliminate variables or to obtain
information about variables that have been created. When these commands are
typed in the Command Window and the Enter key is pressed, either they pro-
vide information, or they perform a task as specified below.

Command

clear

Outcome

Removes all variables from the memory.

20

Chapter 1: Starting with MATLAB

Command

clear x y z

who

whos

Outcome

Removes  only  variables  x,  y,  and  z  from  the
memory.

Displays a list of the variables currently in the
memory.

Displays a list of the variables currently in the
memory and their sizes together with informa-
tion  about  their  bytes  and  class  (see  Section
4.1).

1.8 SCRIPT FILES

So far all the commands were typed in the Command Window and were exe-
cuted when the Enter key was pressed. Although every MATLAB command can
be executed in this way, using the Command Window to execute a series of com-
mands—especially if they are related to each other (a program)—is not conve-
nient and may be difficult or even impossible. The commands in the Command
Window cannot be saved and executed again. In addition, the Command Win-
dow is not interactive. This means that every time the Enter key is pressed only
the last command is executed, and everything executed before is unchanged. If a
change  or  a  correction  is  needed  in  a  command  that  was  previously  executed
and the result of this command is used in commands that follow, all the com-
mands have to be entered and executed again.

A different (better) way of executing commands with MATLAB is first to
create a file with a list of commands (program), save it, and then run (execute)
the file. When the file runs, the commands it contains are executed in the order
that  they  are  listed.  If  needed,  the  commands  in  the  file  can  be  corrected  or
changed and the file can be saved and run again. Files that are used for this pur-
pose are called script files.

IMPORTANT  NOTE:  This  section  covers  only  the  minimum  required  in
order to run simple programs. This will allow the student to use script files when
practicing the material that is presented in this and the next two chapters (instead
of typing repeatedly in the Command Window). Script files are considered again in
Chapter  4,  where  many  additional  topics  that  are  essential  for  understanding
MATLAB and writing programs in script file are covered.

1.8.1 Notes About Script Files

• A script file is a sequence of MATLAB commands, also called a program.

• When a script file runs (is executed), MATLAB executes the commands in the
order they are written, just as if they were typed in the Command Window.

• When a script file has a command that generates an output (e.g., assignment of a

1.8 Script Files

21

value to a variable without a semicolon at the end), the output is displayed in the
Command Window.

• Using a script file is convenient because it can be edited (corrected or otherwise

changed) and executed many times.

• Script files can be typed and edited in any text editor and then pasted into the

MATLAB editor.

• Script files are also called M-files because the extension .m is used when they are

saved.

1.8.2 Creating and Saving a Script File

In MATLAB script files are created and edited in the Editor/Debugger Window.
This  window  is  opened  from  the  Command  Window  by  clicking  on  the  New
Script icon in the Toolstrip, or by clicking New in the Toolstrip and then select-
ing  Script  from  the  menu  that  open.  An  open  Editor/Debugger  Window  is
shown in Figure 1-6.

Line
number

The  commands  in  the  script  file  are
typed line by line. The lines are num-
bered automatically. A new line starts
when the Enter key is pressed.

Figure 1-6: The Editor/Debugger Window.

The  Editor/Debugger  Window  has  a  Toolstrip  at  the  top  and  three  tabs
EDITOR,  PUBLISH,  and  VIEW  above  it.  Clicking  on  the  tabs  changes  the
icons  in  the  Toolstrip.  Commonly,  MATLAB  is  used  with  the  HOME  tab
selected.  The  associated  icons  are  used  for  executing  various  commands,  as
explained later in the Chapter. Once the window is open, the commands of the
script  file  are  typed  line  by  line.  MATLAB  automatically  numbers  a  new  line
every time the Enter key is pressed. The commands can also be typed in any text
editor  or  word  processor  program  and  then  copied  and  pasted  in  the  Editor/
Debugger Window. An example of a short program typed in the Editor/Debug-
ger Window is shown in Figure 1-7. The first few lines in a script file are typi-
cally comments (which are not executed, since the first character in the line is %)

22

Chapter 1: Starting with MATLAB

that describe the program written in the script file.

Define  three
variables.

The Run icon.

Comments.

Calculating the two roots.

Figure 1-7: A program typed in the Editor/Debugger Window.

Before a script file can be executed it has to be saved. This is done by click-
ing  Save  in  the  Toolstrip  and  selecting  Save  As...  from  the  menu  that  opens.
When saved, MATLAB adds the extension .m to the name. The rules for nam-
ing a script file follow the rules of naming a variable (must begin with a letter,
can include digits and underscore, no spaces, and up to 63 characters long). The
names of user-defined variables, predefined variables, and MATLAB commands
or functions should not be used as names of script files.

1.8.3 Running (Executing) a Script File

A script file can be executed either directly from the Editor Window by clicking
on  the  Run  icon  (see  Figure  1-7)  or  by  typing  the  file  name  in  the  Command
Window and then pressing the Enter key. For a file to be executed, MATLAB
needs to know where the file is saved. The file will be executed if the folder where
the file is saved is the current folder of MATLAB or if the folder is listed in the
search path, as explained next.

1.8.4 Current Folder

The current folder is shown in the “Current Folder” field in the desktop toolbar
of the Command Window, as shown in Figure 1-8. If an attempt is made to exe-
cute a script file by clicking on the Run icon (in the Editor Window) when the
current  folder  is  not  the  folder  where  the  script  file  is  saved,  then  the  prompt
shown in Figure 1-9 opens. The user can then change the current folder to the
folder where the script file is saved,  or add it to the search path. Once two or
more different current folders are used in a session, it is possible to switch from
one to another in the Current Folder field in the Command Window. The cur-

1.8 Script Files

23

The current folder is shown here.

Figure 1-8: The Current folder field in the Command Window.

Figure 1-9: Changing the current directory.

rent folder can also be changed in the Current Folder Window, shown in Figure
1-10, which can be opened from the Desktop menu. The Current Folder can be
changed by choosing the drive and folder where the file is saved.

Click here to
browse  for  a
folder.

Click here to
go  up  one
level  in  the
file system.

Current  folder
shown here.

Click  here  to
the
change
folder.

Figure 1-10: The Current Folder Window.

24

Chapter 1: Starting with MATLAB

An alternative simple way to change the current folder is to use the cd com-
mand  in  the  Command  Window.  To  change  the  current  folder  to  a  different
drive, type cd, space, and then the name of the directory followed by a colon :
and  press  the  Enter  key.  For  example,  to  change  the  current  folder  to  drive  E
(e.g., the flash drive) type cd  E:. If the script file is saved in a folder within a
drive, the path to that folder has to be specified. This is done by typing the path
as a string in the cd command. For example, cd('E:\Chapter 1') sets the
path to the folder Chapter 1 in drive F. The following example shows how the
current  folder  is  changed  to  be  drive  E.  Then  the  script  file  from  Figure  1-7,
which  was  saved  in  drive  E  as  ProgramExample.m,  is  executed  by  typing  the
name of the file and pressing the Enter key.

>> cd('E:\Chapter 1')

The current directory is changed to drive E.

>> Chap1_Examp1

x1 =
    3.5000
x2 =
   -1.2500

The  script  file  is  executed  by  typing  the
name of the file and pressing the Enter key.

The output generated by the script file (the roots x1
and x2) is displayed in the Command Window.

1.9 EXAMPLES OF MATLAB APPLICATIONS

Sample Problem 1-1: Trigonometric identity

A trigonometric identity is given by:

cos2

x
---
2

=

x
xsin+
tan
-------------------------------
x
tan
2

Verify that the identity is correct by calculating each side of the equation, substi-

tuting

x

---=
5

.

Solution

The problem is solved by typing the following commands in the Command Win-
dow.

>> x=pi/5;

>> LHS=cos(x/2)^2

LHS =
    0.9045

Define x.

Calculate the left-hand side.

>> RHS=(tan(x)+sin(x))/(2*tan(x))

Calculate the right-hand side.

RHS =
    0.9045

1.9 Examples of MATLAB Applications

25

Sample Problem 1-2: Geometry and trigonometry

Four circles are placed as shown in the figure.
At each point where two circles are in contact,
they are tangent to each other. Determine the
distance between the centers C2 and C4.
The radii of the circles are:
mm,

mm,  and

mm,
mm.

C2

C1

C3

C4

Solution

The  lines  that  connect  the  centers  of  the  circles
create four triangles. In two of the triangles,  C1C2C3
and  C1C3C4,  the  lengths  of  all  the  sides  are  known.
This information is used to calculate the angles  1 and
2  in  these  triangles  by  using  the  law  of  cosines.  For
example,  1 is calculated from:

Next,  the  length  of  the  side  C2C4  is  calculated  by
considering  the  triangle  C1C2C4.  This  is  done,  again,  by  using  the  law  of
cosines (the lengths C1C2 and C1C4 are known and the angle  3 is the sum of the
angles  1 and  2).

The problem is solved by writing the following program in a script file:

% Solution of Sample Problem 1-2

R1=16; R2=6.5; R3=12; R4=9.5;

C1C2=R1+R2; C1C3=R1+R3; C1C4=R1+R4;

C2C3=R2+R3; C3C4=R3+R4;

Define the R’s.

Calculate the lengths
of the sides.

Gama1=acos((C1C2^2+C1C3^2-C2C3^2)/(2*C1C2*C1C3));

Gama2=acos((C1C3^2+C1C4^2-C3C4^2)/(2*C1C3*C1C4));

Gama3=Gama1+Gama2;

Calculate  1,  2, and  3.

C2C4=sqrt(C1C2^2+C1C4^2-2*C1C2*C1C4*cos(Gama3))

When the script file is executed, the following (the value of the variable C2C4) is
displayed in the Command Window:

Calculate the length of side C2C4.

C2C4 =
   33.5051

26

Chapter 1: Starting with MATLAB

Sample Problem 1-3: Heat transfer

An object with an initial temperature of
chamber that has a constant temperature of
change according to the equation

 that is placed at time t = 0 inside a
 will experience a temperature

where T is the temperature of the object at time t, and k is a constant. A soda
can  at  a  temperature  of  120°  F  (after  being  left  in  the  car)  is  placed  inside  a
refrigerator where the temperature is 38° F. Determine, to the nearest degree, the
temperature of the can after three hours. Assume k = 0.45. First define all of the
variables and then calculate the temperature using one MATLAB command.

Solution

The problem is solved by typing the following commands in the Command Win-
dow.

>> Ts=38;  T0=120; k=0.45; t=3;

>> T=round(Ts+(T0-Ts)*exp(-k*t))

T =
    59

Round to the nearest integer.

Sample Problem 1-4: Compounded interest

The balance B of a savings account after t years when a principal P is invested at
an annual interest rate r and the interest is compounded n times a year is given
by:

If the interest is compounded yearly, the balance is given by:

       (1)

       (2)

Suppose $5,000 is invested for 17 years in one account for which the interest is
compounded yearly. In addition, $5,000 is invested in a second account in which
the interest is compounded monthly. In both accounts the interest rate is 8.5%.
Use MATLAB to determine how long (in years and months) it would take for
the  balance  in  the  second  account  to  be  the  same  as  the  balance  of  the  first
account after 17 years.

Solution

Follow these steps:
(a) Calculate  B  for  $5,000  invested  in  a  yearly  compounded  interest  account
after 17 years using Equation (2).
(b) Calculate t for the B calculated in part (a), from the monthly compounded

1.10 Problems

27

interest formula, Equation (1).
(c) Determine the number of years and months that correspond to t.

The problem is solved by writing the following program in a script file:

% Solution of Sample Problem 1-4

P=5000;  r=0.085;  ta=17; n=12;

B=P*(1+r)^ta

Step (a): Calculate B from Eq. (2).

t=log(B/P)/(n*log(1+r/n))

Step (b): Solve Eq. (1)
for t, and calculate t.

years=fix(t)

Step (c): Determine the number of years.

months=ceil((t-years)*12)

Determine the number of months.

When the script file is executed, the following (the values of the variables B, t,
years, and months) is displayed in the Command Window:

>> format short g
B =
        20011

t =
       16.374

years =
    16

months =
     5

1.10 PROBLEMS

The  values  of  the  variables  B,  t,
years,  and  months  are  displayed
(since  a  semicolon  was  not  typed  at
the  end  of  any  of  the  commands  that
calculate the values).

The following problems can be solved by writing commands in the Command
Window or by writing a program in a script file and then executing the file.

1. Calculate:

(a)

2. Calculate:

(a)

(b)

(b)

28

Chapter 1: Starting with MATLAB

3. Calculate:

(a)

4. Calculate:

(a)

5. Calculate:

(a)

(b)

(b)

(b)

6. Define the variable z as z = 4.5; then evaluate:

(a)

(b)

7. Define the variable t as t = 3.2; then evaluate:

(a)

(b)

8. Define the variables x and y as x = 6.5 and y = 3.8; then evaluate:

(a)

(b)

9. Define the variables a, b, c, and d as:

,

,

, and

; then evaluate:

(a)

(b)

10. Two trigonometric identities are given by:

(a)

(b)

For each part, verify that the identity is correct by calculating the values of
the left and right sides of the equation, substituting

.

11. Two trigonometric identities are given by:

(a)

       (b)

For each part, verify that the identity is correct by calculating the values of
the left and right sides of the equation, substituting

.

1.10 Problems

29

12. Define two variables:  alpha =  /8, and beta =  /6. Using these variables, show
that the following trigonometric identity is correct by calculating the values
of the left and right sides of the equation.

13. Given:

. Use MATLAB to calculate the

following definite integral:

.

14. A rectangular box has the dimensions shown.
(a) Determine  the  angle  BAC  to  the  nearest

A

degree.

(b) Determine the area of the triangle ABC to

the nearest tenth of a centimeter.

Law of cosines:
Heron’s formula for triangular area:

, where

B

23 cm

.

15. The arc length of a segment of a parabola ABC is

given by:

16 cm
C

43 cm

y

B

h

Determine LABC if a=8 in. and h=13 in.

A

a

a

C

x

16. The  three  shown  circles,  with  radius  15  in.,
10.5 in., and 4.5 in., are tangent to each other.
(a) Calculate  the  angle
  (in  degrees)  by

using the law of cosines.

(Law of cosines:
(b) Calculate  the  angles    and
using the law of sines.

)
  (in  degrees)

(c) Check that the sum of the angles is 180º.

17. A  frustum  of  cone  is  filled  with  ice  cream  such  that
the  portion  above  the  cone  is  a  hemisphere.  Define
the  variables  di=1.25  in.,  d0=2.25  in.,  h=2  in.,  and
determine the volume of the ice cream.

do

h

di

30

Chapter 1: Starting with MATLAB

18. In  the  triangle  shown

  in.,

in.,  and

in. Define a, b, and c as variables, and then:

(a) Calculate the angles

,  , and   by substituting the

variables in the law of cosines.

(Law of cosines:
(b) Verify  the  law  of  tangents  by  substituting  the

)

results into the right and left sides of:

law of tangents:

19. For the triangle shown,
,

Define
(a) Calculate  the  triangle  sides  (Use  the  law  of

, and p, as variables, and then:

,

, and its perimeter is

 mm.

sines).

(b) Calculate the radius r of the circle inscribed in

the triangle using the formula:

where

.

20. The  distance  d  from  a  point  P

  to  the
line  that  passes  through  the  two  points  A
  and  B
  can  be  calculated  by
  where  r  is  the  distance  between  the
B,
by

points

given

and

A

 and S is the
area of the triangle defined by the three points cal-

A

culated by

 where

z

B

y

P

x

.  Determine  the  distance  of

 from the line that passes through point A

point P
. First define the variables xP, yP, zP, xA, yA, zA, xB,
and point B
yB, and zB, and then use the variable to calculate s1, s2, s3, and r. Finally cal-
culate S and d.

1.10 Problems

31

21. The perimeter of an ellipse can be approximated

by:

y

b

x

a

Calculate  the  perimeter  of  an  ellipse  with

in. and

in.

22. A total of 4217 eggs have to be packed in boxes that can hold 36 eggs each.
By  typing  one  line  (command)  in  the  Command  Window,  calculate  how
many  eggs  will  remain  unpacked  if  every  box  that  is  used  has  to  be  full.
(Hint: Use MATLAB built-in function fix.)

23. A total of 777 people have to be transported using buses that have 46 seats
and vans that have 12 seats. Calculate how many buses are needed if all the
buses have to be full, and how many seats will remain empty in the vans if
enough  vans  are  used  to  transport  all  the  people  that  did  not  fit  into  the
buses. (Hint: Use MATLAB built-in functions fix and ceil.)

24. Change the display to format  long  g. Assign the number 7E8/13 to a
variable, and then use the variable in a mathematical expression to calculate
the following by typing one command:
(a) Round the number to the nearest tenth.
(b) Round the number to the nearest million.

25. The  voltage  difference  Vab  between  points  a
and b in the Wheatstone bridge circuit is given
by:

where
the Vab if

  and
V,

, and

.  Calculate
,

,

.

26. The current in a series RCL circuit is given

+

V

a

R1

R4

R2

R3

b

L

C

R

V

. Calculate I for the circuit shown if the supply voltage is 80

Hz,

,

H, and

F.

by:

where
V,

32

Chapter 1: Starting with MATLAB

27. The monthly payment M of a mortgage  P for  n years with a fixed annual

interest rate r can be calculated by the formula:

Determine the monthly payment of a 30-year $450,000 mortgage with inter-
).  Define  the  variables  P,  r,  and  n  and  then  use
est  rate  of  4.2%  (
them in the formula to calculate M.

28. The number of permutations
out repetition is given by:

 of taking r objects out of n objects with-

(a) Determine  how  many  six-letter  passwords  can  be  formed  from  the  26

letters in the English alphabet if a letter can only be used once.

(b) How  many  passwords  can  be  formed  if  the  digits  0,  1,  2,  ...,  9  can  be

used in addition to the letters.

29. The number of combinations

 of taking r objects out of n objects is given

by:

In  the  Powerball  lottery  game  the  player  chooses  five  numbers  from  1
through 59, and then the Powerball number from 1 through 35.
Determine how many combinations are possible by calculating
(Use the built-in function factorial.)

 .

30. The  equivalent  resistance  of  two  resistors
R1 and R2 connected in parallel is given by

.  The  equivalent  resistance  of

two resistors R1 and R2 connected in series
is  given  by
.  Determine  the
equivalent resistance of the four resistors in the circuit shown in the figure.

31. The output voltage Vout in the circuit shown is given

by (Millman’s theorem):

R1

R2 R3

V1

V2 V3

Vout

Calculate  Vout  given
,,

,,

V,

V,

V,

,.

1.10 Problems

33

32. Radioactive  decay  of  carbon-14  is  used  for  estimating  the  age  of  organic

 is the amount of material at

,
material. The decay is modeled with the exponential function
where t is time,
 is the amount
of  material  at  time  t,  and  k  is  a  constant.  Carbon-14  has  a  half-life  of
approximately  5,730  years.  A  sample  taken  from  the  ancient  footprints  of
Acahualinca in Nicaragua shows that 77.45% of the initial (
) carbon-
14 is present. Determine the estimated age of the footprint. Solve the prob-
lem by writing a program in a script file. The program first determines the
constant  k,  then  calculates  t  for
,  and  finally  rounds  the
answer to the nearest year.

,

33. The greatest common divisor is the largest positive integer that divides the
numbers without a remainder. For example, the greatest common divisor of
8 and 12 is 4. Use the MATLAB Help Window to find a MATLAB built-in
function that determines the greatest common divisor of two numbers. Then
use the function to show that the greatest common divisor of:
(a) 91 and 147 is 7.
(b) 555 and 962 is 37.

34. The amount of energy E (in joules) that is released by an earthquake is given

by:

where M is the magnitude of the earthquake on the Richter scale.
(a) Determine the energy that was released from the Anchorage earthquake

(1964, Alaska, USA), magnitude 9.2.

(b) The energy released in Lisbon earthquake (Portugal) in 1755 was one-
half  the  energy  released  in  the  Anchorage  earthquake.  Determine  the
magnitude of the earthquake in Lisbon on the Richter scale.

35. According to the Doppler effect of light, the perceived wavelength

 of   a

p

light source with a wavelength of

 is given by:

m/s)  and  v  is  the  speed  the
where  c  is  the  speed  of  light  (about
observer  moves  toward  the  light  source.  Calculate  the  speed  the  observer
has to move in order to see a red light as green. Green wavelength is 530 nm
and red wavelength is 630 nm.

36. Newton’s law of cooling gives the temperature T(t) of an object at time t in
,  and  Ts,  the  temperature  of  the  sur-

terms  of  T0,  its  temperature  at
roundings.

34

Chapter 1: Starting with MATLAB

A police officer arrives at a crime scene in a hotel room at 9:18 PM, where
he finds a dead body. He immediately measures the body’s temperature and
finds  it  to  be  79.5ºF.  Exactly  one  hour  later  he  measures  the  temperature
again and finds it to be 78.0ºF. Determine the time of death, assuming that
victim  body  temperature  was  normal  (98.6ºF)  prior  to  death  and  that  the
room temperature was constant at 69ºF.

37. The velocity v and the falling distance d as a function of time of a skydiver

that experience the air resistance can be approximated by:

   and

kg/m is a constant, m is the skydiver mass,

m/s2 is the
where
acceleration  due  to  gravity,  and  t  is  the  time  in  seconds  since the  skydiver
s for a
starts falling. Determine the velocity and the falling distance at
95-kg skydiver

38. Use the Help Window to find a display format that displays the output as a
ratio of integers. For example, the number 3.125 will be displayed as 25/8.
Change the display to this format and execute the following operations:

(a)

(b)

39. Gosper’s approximation for factorials is given by:

Use the formula for calculating 19!. Compare the result with the true value
obtained with MATLAB’s built-in function factorial by calculating the
error (Error=(TrueVal-ApproxVal)/TrueVal).

40. According  to  Newton’s  law  of  universal  gravitation,  the  attraction  force

between two bodies is given by:

where m1 and m2 are the masses of the bodies, r is the distance between the
N-m2/kg2 is the universal gravitational constant.
bodies, and
Determine  how  many  times  the  attraction  force  between  the  sun  and  the
Earth is larger than the attraction force between the Earth and the moon.
m,  the  distance
The  distance  between  the  sun  and  Earth  is

between  the  moon  and  Earth  is

m,

kg,

kg, and

kg.

