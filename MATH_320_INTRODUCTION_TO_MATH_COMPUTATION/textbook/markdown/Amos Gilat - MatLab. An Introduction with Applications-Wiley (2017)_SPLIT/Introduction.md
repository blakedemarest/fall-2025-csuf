8.3   INTERPOLATION 274
8.4   THE BASIC FITTING INTERFACE 278
8.5   EXAMPLES OF MATLAB APPLICATIONS
8.6   PROBLEMS

286

281

Applications in Numerical Analysis 295

9.1   SOLVING AN EQUATION WITH ONE VARIABLE 295
9.2   FINDING A MINIMUM OR A MAXIMUM OF A FUNCTION 298
9.3   NUMERICAL INTEGRATION 300
9.4   ORDINARY DIFFERENTIAL EQUATIONS
9.5   EXAMPLES OF MATLAB APPLICATIONS
9.6   PROBLEMS

303
307

313

Three-Dimensional Plots 323

323

10.1   LINE PLOTS
10.2   MESH AND SURFACE PLOTS
10.3   PLOTS WITH SPECIAL GRAPHICS
10.4   THE view COMMAND 333
10.5   EXAMPLES OF MATLAB APPLICATIONS
10.6   PROBLEMS

324

331

341
Symbolic Math 347

336

11.1   SYMBOLIC OBJECTS AND SYMBOLIC EXPRESSIONS

348

11.1.1   Creating Symbolic Objects
11.1.2   Creating Symbolic Expressions 350
11.1.3  The findsym Command and the Default Symbolic

348

Variable

353

11.2   CHANGING THE FORM OF AN EXISTING SYMBOLIC EXPRESSION 354

11.2.1   The collect, expand, and factor Commands
11.2.2   The simplify Command 356
11.2.3   The pretty Command 356

354

357

11.3   SOLVING ALGEBRAIC EQUATIONS
11.4   DIFFERENTIATION 362
11.5   INTEGRATION 363
11.6   SOLVING AN ORDINARY DIFFERENTIAL EQUATION 365
11.7   PLOTTING SYMBOLIC EXPRESSIONS
11.8   NUMERICAL CALCULATIONS WITH SYMBOLIC EXPRESSIONS 371
11.9   EXAMPLES OF MATLAB APPLICATIONS
11.10 PROBLEMS

375

368

382

Summary of Characters, Commands, and Functions

391

Answers to Selected Problems

  www.wiley.com/college/gilat

Index 399

Introduction

MATLAB  is  a  powerful  language  for  technical  computing.  The  name  MAT-
LAB stands for MATrix LABoratory, because its basic data element is a matrix
(array).  MATLAB can be used  for math  computations, modeling  and simula-
tions,  data  analysis  and  processing,  visualization  and  graphics,  and  algorithm
development.

MATLAB  is  widely  used  in  universities  and  colleges  in  introductory  and
advanced  courses  in  mathematics,  science,  and  especially  engineering.  In
industry  the  software  is  used  in  research,  development,  and  design.  The
standard  MATLAB  program  has  tools  (functions)  that  can  be  used  to  solve
common  problems.  In  addition,  MATLAB  has  optional  toolboxes  that  are
collections of specialized programs designed to solve specific types of problems.
Examples  include  toolboxes  for  signal  processing,  symbolic  calculations,  and
control systems.

Until  recently,  most  of  the  users  of  MATLAB  have  been  people  with
previous knowledge of programming languages such as FORTRAN and C who
switched  to  MATLAB  as  the  software  became  popular.  Consequently,  the
majority of the literature that has been written about MATLAB assumes that
the reader has knowledge of computer programming. Books about MATLAB
often address advanced topics or applications that are specialized to a particular
field. Today, however, MATLAB is being introduced to college students as the
first (and often the only) computer program they will learn. For these students
there is a need for a book that teaches MATLAB assuming no prior experience
in computer programming.

The Purpose of This Book

MATLAB: An Introduction with Applications is intended for students who are
using MATLAB for the first time and have little or no experience in computer
programming. It can be used as a textbook in freshmen engineering courses or
in  workshops  where  MATLAB  is  being  taught.  The  book  can  also  serve  as  a
reference in more advanced science and engineering courses where MATLAB is
used  as  a  tool  for  solving  problems.  It  also  can  be  used  for  self-study  of
MATLAB by students and practicing engineers. In addition, the book can be a
supplement  or  a  secondary  book  in  courses  where  MATLAB  is  used  but  the
instructor does not have the time to cover it extensively.

Topics Covered
MATLAB is a huge program, and therefore it is impossible to cover all of it in

2

 Introduction

one book. This  book focuses primarily on the foundations  of MATLAB.  The
assumption is that once these foundations are well understood, the student will
be  able  to  learn  advanced  topics  easily  by  using  the  information  in  the  Help
menu.

The  order  in  which  the  topics  are  presented  in  this  book  was  chosen
carefully,  based  on  several  years  of  experience  in  teaching  MATLAB  in  an
introductory  engineering  course.  The  topics  are  presented  in  an  order  that
allows  the  student  to  follow  the  book  chapter  after  chapter.  Every  topic  is
presented completely in one place and then used in the following chapters.

The  first  chapter  describes  the  basic  structure  and  features  of  MATLAB
and  how  to  use  the  program  for  simple  arithmetic  operations  with  scalars  as
with  a  calculator.  Script  files  are  introduced  at  the  end  of  the  chapter.  They
allow  the  student  to  write,  save,  and  execute  simple  MATLAB  programs.  The
next  two  chapters  are  devoted  to  the  topic  of  arrays.  MATLAB’s  basic  data
element  is  an  array  that  does  not  require  dimensioning.  This  concept,  which
makes MATLAB a very powerful program, can be a little difficult to grasp for
students who have only limited knowledge of and experience with linear algebra
and  vector  analysis.  The    concept  of  arrays  is  introduced  gradually  and  then
explained  in  extensive  detail.  Chapter  2  describes  how  to  create  arrays,  and
Chapter 3 covers mathematical operations with arrays.

Following  the  basics,  more  advanced  topics  that  are  related  to  script  files
and  input  and  output  of  data  are  presented  in  Chapter  4.  This  is  followed  by
coverage  of  two-dimensional  plotting  in  Chapter  5.  Programming  with
MATLAB  is  introduced  in  Chapter  6.  This  includes  flow  control  with
functions,  anonymous
conditional  statements  and
functions, and function functions are covered next in Chapter 7. The coverage
of  function  files  (user-defined  functions)  is  intentionally  separated  from  the
subject  of  script  files.  This  has  proven  to  be  easier  to  understand  by  students
who are not familiar with similar concepts from other computer programs.

loops.  User-defined

The  next  three  chapters  cover  more  advanced  topics.  Chapter  8  describes
how MATLAB can be used for carrying out calculations with polynomials, and
how  to  use  MATLAB  for  curve  fitting  and  interpolation.  Chapter  9  covers
applications  of  MATLAB  in  numerical  analysis.  It  includes  solving  nonlinear
equations,  finding  minimum  or  a  maximum  of  a  function,  numerical
integration, and solution of first-order ordinary differential equations. Chapter
10  describes  how  to  produce  three-dimensional  plots,  an  extension  of  the
chapter on two-dimensional plots. Chapter 11 covers in great detail how to use
MATLAB in symbolic operations.

The Framework of a Typical Chapter

In every chapter the topics are introduced gradually in an order that makes the
concepts easy to understand. The use of MATLAB is demonstrated extensively
within the text and by examples. Some of the longer examples in Chapters 1–3
are titled as tutorials. Every use of MATLAB is printed with a different font and
with a gray  background.  Additional explanations  appear  in boxed  text with a

Introduction

3

white background. The idea is that the reader will execute these demonstrations
and tutorials in order to gain experience in using MATLAB. In addition, every
chapter  includes  formal  sample  problems that  are  examples of  applications of
MATLAB for solving problems in math, science, and engineering. Each exam-
ple  includes  a  problem  statement  and  a  detailed  solution.  Some  sample  prob-
lems  are  presented  in  the  middle  of  the  chapter.  All  of  the  chapters  (except
Chapter 2) have a section at the end with several sample problems of applica-
tions. It should be pointed out that problems with MATLAB can be solved in
many different ways. The solutions of the sample problems are written such that
they are easy to follow. This means that in many cases the problem can be solved
by writing a shorter, or sometimes “trickier,” program. The students are encour-
aged to try to write their own solutions and compare the end results. At the end
of each chapter there is a set of homework problems. They include general prob-
lems from math and science and problems from different disciplines of engineer-
ing.

Symbolic Calculations

MATLAB  is  essentially  a  software  for  numerical  calculations.  Symbolic  math
operations, however, can be executed if the Symbolic Math toolbox is installed.
The Symbolic Math toolbox is included in the student version of the software
and can be added to the standard program.

Software and Hardware

The  MATLAB  program,  like  most  other  software,  is  continually  being
developed and new versions are released frequently. This book covers MATLAB
Version 9.0.0.341360, Release 2016a. It should be emphasized, however, that the
book covers the basics of MATLAB, which do not change much from version to
version.  The  book  covers  the  use  of  MATLAB  on  computers  that  use  the
Windows operating system. Everything is essentially the same when MATLAB
is  used  on  other  machines.  The  user  is  referred  to  the  documentation  of
MATLAB  for  details  on  using  MATLAB  on  other  operating  systems.  It  is
assumed that the software is installed on the computer, and the user has basic
knowledge of operating the computer.

The Order of Topics in the Book

It is probably impossible to write a textbook where all the subjects are presented
in an order that is suitable for everyone. The order of topics in this book is such
that the fundamentals of MATLAB are covered first (arrays and array opera-
tions), and, as mentioned before, every topic is covered completely in one loca-
tion, which makes the book easy to use as a reference. The order of the topics in
this sixth edition is the same as in the previous edition. Programming is intro-
duced  before  user-defined  functions.  This  allows  using  programming  in  user-
defined functions. Also, applications of MATLAB in numerical analysis follow
Chapter 8 which covers polynomials, curve fitting, and interpolation.

