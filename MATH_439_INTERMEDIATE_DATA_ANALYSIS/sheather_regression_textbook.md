Springer Texts in Statistics

Series Editors:
G. Casella
S. Fienberg
I. Olkin

Springer Texts in Statistics

For other titles published in this series, go to
www.springer.com/series/417

Simon J. Sheather

A Modern Approach
to Regression with R

Simon J. Sheather
Department of Statistics
Texas A&M University
College Station, TX, USA

Editorial Board
George Casella
Department of Statistics
University of Florida
Gainesville, FL 32611-8545
USA

Stephen Fienberg
Department of Statistics
Carnegie Mellon University
Pittsburgh, PA 15213-3890
USA

Ingram Olkin
Department of Statistics
Stanford University
Stanford, CA 94305
USA

ISBN: 978-0-387-09607-0
DOI: 10.1007/978-0-387-09608-7

e-ISBN: 978-0-387-09608-7

Library of Congress Control Number: 2008940909

© Springer Science+Business Media, LLC 2009
All rights reserved. This work may not be translated or copied in whole or in part without the written
permission  of  the  publisher  (Springer  Science+Business  Media,  LLC,  233  Spring  Street,  New  York,
NY  10013,  USA),  except  for  brief  excerpts  in  connection  with  reviews  or  scholarly  analysis.  Use  in
 connection with any form of information storage and retrieval, electronic adaptation, computer software,
or by similar or dissimilar methodology now known or hereafter developed is forbidden.
The use in this publication of trade names, trademarks, service marks, and similar terms, even if they are
not identified as such, is not to be taken as an expression of opinion as to whether or not they are subject
to proprietary rights.

Printed on acid-free paper

springer.com

Dedicated to
My mother, Margaret,
and my wife, Filomena

Preface

This  book  focuses  on  tools  and  techniques  for  building  regression  models  using
real-world data and assessing their validity. A key theme throughout the book is that
it makes sense to base inferences or conclusions only on valid models.

Plots are shown to be an important tool for both building regression models and
assessing their validity. We shall see that deciding what to plot and how each plot
should be interpreted will be a major challenge. In order to overcome this challenge
we  shall  need  to  understand  the  mathematical  properties  of  the  fitted  regression
models and associated diagnostic procedures. As such this will be an area of focus
throughout the book. In particular, we shall carefully study the properties of residu-
als in order to understand when patterns in residual plots provide direct information
about model misspecification and when they do not.

The regression output and plots that appear throughout the book have been gener-
ated using R. The output from R that appears in this book has been edited in minor
ways. On the book web site you will find the R code used in each example in the text.
You will also find SAS-code and Stata-code to produce the equivalent output on the
book  web  site.  Primers  containing  expanded  explanation  of  R,  SAS  and  Stata  and
their use in this book are also available on the book web site. Purpose-built functions
have been written in SAS and Stata to cover some of the regression procedures dis-
cussed in this book. Examples include a multivariate version of the Box-Cox trans-
formation method, inverse response plots and marginal model plots.

The  book  contains  a  number  of  new  real  data  sets  from  applications  ranging
from rating restaurants, rating wines, predicting newspaper circulation and maga-
zine revenue, comparing the performance of NFL kickers and comparing finalists
in the Miss America pageant across states. In addition, a number of real data sets
that have appeared in other books are also considered. The practice of considering
contemporary real data sets was begun based on questions from students about how
regression can be used in real life. One of the aspects of the book that sets it apart
from  many  other  regression  books  is  that  complete  details  are  provided  for  each
example.  This  completeness  helps  students  better  understand  how  regression  is
used in practice to build different models and assess their validity.

Included in the Exercises are two different types of problems involving data. In
the first, a situation is described and it is up to the students to develop a valid regres-
sion model. In the second type of problem a situation is described and then output

vii

viii

Preface

from  one  or  models  is  provided  and  students  are  asked  to  comment  and  provide
conclusions. This has been a conscious choice as I have found that both types of
problems enhance student learning.

Chapters 2, 3 and 4 look at the case when there is a single predictor. This again
has been a conscious choice as it enables students to look at many aspects of regres-
sion  in  the  simplest  possible  setting.  Chapters  5,  6,  7  and  9  focus  on  regression
models  with  multiple  predictors.  In  Chapter  8  we  consider  logistic  regression.
Chapter 9 considers regression models with correlated errors. Finally, Chapter 10
provides an introduction to random effects and mixed models.

Throughout  the  book  specific  suggestions  are  given  on  how  to  proceed  when
performing  a  regression  analysis.  Flow  charts  providing  step-by-step  instructions
are provided first for regression problems involving a single predictor and later for
multiple regression problems. The flow charts were first produced in response to
requests  from  students  when  this  material  was  first  taught.  They  have  been  used
with great success ever since.

Chapter 1 contains a discussion of four real examples. The first example high-
lights a key message of the book, namely, it is only sensible to base decisions of
inferences on a valid regression model. The other three examples provide an indica-
tion of the practical problems one can solve using the regression methods discussed
in the book.

In Chapter 2 we consider problems involving modeling the relationship between
two variables. Throughout this chapter we assume that the model under considera-
tion is a valid model (i.e., correctly specified.)

In  Chapter  3  we  will  see  that  when  we  use  a  regression  model  we  implicitly
make a series of assumptions. We then consider a series of tools known as regres-
sion  diagnostics  to  check  each  assumption.  Having  used  these  tools  to  diagnose
potential problems with the assumptions, we look at how to first identify and then
overcome or deal with problems with assumptions due to nonconstant variance or
nonlinearity. A primary aim of Chapter 3 is to understand what actually happens
when the standard assumptions associated with a regression model are violated, and
what should be done in response to each violation.

In Chapter 3, we show that it is sometimes possible to overcome nonconstant
error  variance  by  transforming  the  response  and/or  the  predictor  variables.  In
Chapter 4 we consider an alternative way of coping with nonconstant error vari-
ance, namely weighted least squares.

Chapter 5 considers multiple linear regression problems involving modeling the
relationship  between  a  dependent  variable  and  two  or  more  predictor  variables.
Throughout Chapter 5, we assume that the multiple linear regression model under
consideration is a valid model for the data. Chapter 6 considers regression diagnos-
tics  to  check  each  of  these  assumptions  associated  with  having  a  valid  multiple
regression model.

In Chapter 7 we consider methods for choosing the “best” model from a class of
multiple regression models, using what are called variable selection methods. We
discuss  the  consequences  of  variable  selection  on  subsequent  inferential  proce-
dures, (i.e., tests and confidence intervals).

Preface

ix

Chapter 8 considers the situation in which the response variable follows a bino-
mial distribution rather than a continuous distribution. We show that an appropriate
model in this circumstance is a logistic regression model. We consider both infer-
ential and diagnostic procedures for logistic regression models.

In many situations data are collected over time. It is common for such data sets
to exhibit serial correlation, that is, results from the current time period are corre-
lated  with  results  from  earlier  time  periods.  Thus,  these  data  sets  violate  the
assumption that the errors are independent, an important assumption necessary for
the validity of least squares based regression methods. Chapter 9 considers regres-
sion models when the errors are correlated over time. Importantly, we show how to
re-specify  a  regression  model  with  correlated  errors  as  a  different  but  equivalent
regression model with uncorrelated errors. We shall discover that this allows us to
use the diagnostic methods discussed in earlier chapters on problems with corre-
lated errors.

Chapter 10 contains an introduction to random effects and mixed models. We
again stress the use of re-specifying such models to obtain equivalent models with
uncorrelated errors.

Finally,  the  Appendix  discusses  two  nonparametric  smoothing  techniques,
namely,  kernel  density  estimation  and  nonparametric  regression  for  a  single
predictor.

The book is aimed at first-year graduate students in statistics. It could also be
used for a senior undergraduate class. The text grew out of a set of class notes, used
for both a graduate and a senior undergraduate semester-long regression course at
Texas A&M University. I am grateful to the students who took these courses.
I would like to make special mention of Brad Barney, Dana Bergstresser, Charles
Lindsey, Andrew Redd and Elizabeth Young. Charles Lindsey wrote the Stata code
that appears in the Stata primer that accompanies the book. Elizabeth Young, along
with Brad Barney and Charles Lindsey, wrote the SAS code that appears in the SAS
primer that accompanies the book. Brad Barney kindly provided the analyses of the
NFL kicker data in Chapter 1. Brad Barney and Andrew Redd contributed some of
the R code used in the book.

Readers of this book will find that the work of Cook and Weisberg has had a
profound influence on my thinking about regression. In particular, this book con-
tains many references to the books by Cook and Weisberg (1999b) and Weisberg
(2005).

The content of the book has also been influenced by a number of people. Robert
Kohn and Geoff Eagleson, my colleagues for more than 10 years at the University
of New South Wales, taught me a lot about regression but more importantly about
the importance of thoroughness when it comes to scholarship. My long-time col-
laborators on nonparametric statistics, Tom Hettmansperger and Joe McKean have
helped me enormously both professionally and personally for more than 20 years.
Lively discussions with Mike Speed about valid models and residual plots lead
to dramatic changes to the examples and the discussion of this subject in Chapter
6.  Mike  Longnecker,  kindly  acted  as  my  teaching  mentor  when  I  joined  Texas
A&M University in 2005. A number of reviewers provided valuable comments and

x

Preface

suggestions.  I  would  like  to  especially  acknowledge  Larry  Wasserman,  Bruce
Brown and Fred Lombard in this regard. Finally, I am grateful to Jennifer South
who painstakingly proofread the whole manuscript.

The  web  site  that  accompanies  the  book  contains  R,  SAS  and  Stata  code  and
primers, along with all the data sets from the book can be found at www.stat.tamu.
edu/~sheather/book.  Also  available  at  the  book  web  site  are  online  tutorials  on
matrices, R and SAS.

College Station, Texas
October 2008

Simon Sheather

Contents

1  Introduction ................................................................................................

1.1  Building Valid Models ........................................................................
1.2  Motivating Examples ..........................................................................
1.2.1  Assessing the Ability of NFL Kickers ....................................
1.2.2  Newspaper Circulation ...........................................................
1.2.3  Menu Pricing in a New Italian Restaurant

in New York City ....................................................................

1.2.4  Effect of Wine Critics’ Ratings on Prices

1

1
1
1
4

5

8
1.3  Level of Mathematics .........................................................................  13

of Bordeaux Wines ..................................................................

2  Simple Linear Regression ..........................................................................  15

2.1

2.2

Introduction and Least Squares Estimates ..........................................  15
2.1.1  Simple Linear Regression Models ..........................................  15
Inferences About the Slope and the Intercept .....................................  20
2.2.1  Assumptions Necessary in Order to Make Inferences

2.2.2
2.2.3

About the Regression Model .....................................................  21
Inferences About the Slope of the Regression Line ...............  21
Inferences About the Intercept of the Regression Line ..........  23
2.3  Confidence Intervals for the Population Regression Line ..................  24
2.4  Prediction Intervals for the Actual Value of Y ....................................  25
2.5  Analysis of Variance ...........................................................................  27
2.6  Dummy Variable Regression ..............................................................  30
2.7  Derivations of Results .........................................................................  33
Inferences about the Slope of the Regression Line.................  34
2.7.1
2.7.2
Inferences about the Intercept of the Regression Line ...........  35
2.7.3  Confidence Intervals for the Population Regression Line ......  36
2.7.4  Prediction Intervals for the Actual Value of Y ........................  37
2.8  Exercises .............................................................................................  38

xi

xii

Contents

3  Diagnostics and Transformations for Simple Linear Regression ..........  45

3.1  Valid and Invalid Regression Models:

Anscombe’s Four Data Sets ...............................................................  45
3.1.1  Residuals .................................................................................  48
3.1.2  Using Plots of Residuals to Determine Whether

the Proposed Regression Model Is a Valid Model ..................  49
3.1.3  Example of a Quadratic Model ...............................................  50

3.2  Regression Diagnostics: Tools for Checking

the Validity of a Model .......................................................................  50
3.2.1  Leverage Points .......................................................................  51
3.2.2  Standardized Residuals ...........................................................  59
3.2.3  Recommendations for Handling Outliers

and Leverage Points ................................................................  66
3.2.4  Assessing the Influence of Certain Cases ...............................  67
3.2.5  Normality of the Errors ...........................................................  69
3.2.6  Constant Variance ...................................................................  71
3.3  Transformations ..................................................................................  76
3.3.1  Using Transformations to Stabilize Variance .........................  76
3.3.2  Using Logarithms to Estimate Percentage Effects .................  79
3.3.3  Using Transformations to Overcome Problems

due to Nonlinearity ..................................................................  83
3.4  Exercises .............................................................................................  103

4  Weighted Least Squares ............................................................................  115

4.1  Straight-Line Regression Based on Weighted Least Squares .............  115
4.1.1  Prediction Intervals for Weighted Least Squares ....................  118
4.1.2  Leverage for Weighted Least Squares ....................................  118
4.1.3  Using Least Squares to Calculate Weighted Least Squares ....  119
4.1.4  Defining Residuals for Weighted Least Squares ....................  121
4.1.5  The Use of Weighted Least Squares .......................................  121
4.2  Exercises .............................................................................................  122

5  Multiple Linear Regression .......................................................................  125

5.1  Polynomial Regression .......................................................................  125
5.2  Estimation and Inference in Multiple Linear Regression ...................  130
5.3  Analysis of Covariance .......................................................................  140
5.4  Exercises .............................................................................................  146

6  Diagnostics and Transformations for Multiple Linear Regression .......  151

6.1  Regression Diagnostics for Multiple Regression ...............................  151
6.1.1  Leverage Points in Multiple Regression .................................  152
6.1.2  Properties of Residuals in Multiple Regression ......................  154
6.1.3  Added Variable Plots ..............................................................  162

Contents

xiii

6.2  Transformations ..................................................................................  167
6.2.1  Using Transformations to Overcome Nonlinearity .................  167
6.2.2  Using Logarithms to Estimate Percentage Effects:

Real Valued Predictor Variables ..............................................  184

6.3  Graphical Assessment of the Mean Function Using

Marginal Model Plots .........................................................................  189
6.4  Multicollinearity .................................................................................  195
6.4.1  Multicollinearity and Variance Inflation Factors ....................  203

6.5  Case Study: Effect of Wine Critics’ Ratings on Prices

of Bordeaux Wines .............................................................................  203
6.6  Pitfalls of Observational Studies Due to Omitted Variables ...............  210
6.6.1  Spurious Correlation Due to Omitted Variables .....................  210
6.6.2  The Mathematics of Omitted Variables ..................................  213
6.6.3  Omitted Variables in Observational Studies ...........................  214
6.7  Exercises .............................................................................................  215

7  Variable Selection .......................................................................................  227

7.1  Evaluating Potential Subsets of Predictor Variables ...........................  228
7.1.1  Criterion 1: R2-Adjusted .........................................................  228
7.1.2  Criterion 2: AIC, Akaike’s Information Criterion ..................  230
7.1.3  Criterion 3: AICC, Corrected AIC ...........................................  231
7.1.4  Criterion 4: BIC, Bayesian Information Criterion ..................  232
7.1.5  Comparison of AIC, AICC and BIC ........................................  232

7.2  Deciding on the Collection of Potential Subsets

of Predictor Variables .........................................................................  233
7.2.1  All Possible Subsets ................................................................  233
7.2.2  Stepwise Subsets .....................................................................  236
Inference After Variable Selection ..........................................  238
7.2.3
7.3  Assessing the Predictive Ability of Regression Models .....................  239
7.3.1  Stage 1: Model Building Using the Training Data Set ...........  239
7.3.2  Stage 2: Model Comparison Using the Test Data Set .............  247
7.4  Recent Developments in Variable Selection – LASSO ......................  250
7.5  Exercises .............................................................................................  252

8  Logistic Regression ....................................................................................  263

8.1  Logistic Regression Based on a Single Predictor ...............................  263
8.1.1  The Logistic Function and Odds .............................................  265
8.1.2  Likelihood for Logistic Regression with

a Single Predictor ....................................................................  268
8.1.3  Explanation of Deviance .........................................................  271
8.1.4  Using Differences in Deviance Values

to Compare Models .................................................................  272
8.1.5  R2 for Logistic Regression ......................................................  273
8.1.6  Residuals for Logistic Regression ..........................................  274

xiv

Contents

  8.2  Binary Logistic Regression .............................................................  277
  8.2.1  Deviance for the Case of Binary Data ...............................  280
  8.2.2  Residuals for Binary Data .................................................  281
  8.2.3  Transforming Predictors in Logistic Regression

for Binary Data ..................................................................  282
  8.2.4  Marginal Model Plots for Binary Data ..............................  286
  8.3  Exercises .........................................................................................  294

  9  Serially Correlated Errors ......................................................................  305

  9.1  Autocorrelation ...............................................................................  305
  9.2  Using Generalized Least Squares When the Errors Are AR(1) ......  310
  9.2.1  Generalized Least Squares Estimation  .............................  311
  9.2.2  Transforming a Model with AR(1) Errors into

a Model with iid Errors .....................................................  315
  9.2.3  A General Approach to Transforming GLS into LS .........  316
  9.3  Case Study ......................................................................................  319
  9.4  Exercises .........................................................................................  325

10  Mixed Models ...........................................................................................  331

10.1  Random Effects ...............................................................................  331

10.1.1  Maximum Likelihood and Restricted

Maximum Likelihood ........................................................  334
10.1.2  Residuals in Mixed Models ...............................................  345
10.2  Models with Covariance Structures Which Vary Over Time ..........  353
10.2.1  Modeling the Conditional Mean .......................................  354
10.3  Exercises .........................................................................................  368

Appendix: Nonparametric Smoothing ...........................................................  371

References .........................................................................................................  383

Index ..................................................................................................................  387

   Chapter 1
  Introduction

  1.1  Building Valid Models

 This book focuses on tools and techniques for building valid regression models
for  real-world  data.  We  shall  see  that  a  key  step  in  any  regression  analysis  is
assessing  the  validity  of  the  given  model.  When  weaknesses  in  the  model  are
identified  the  next  step  is  to  address  each  of  these  weaknesses.  A  key  theme
throughout the book is that  it makes sense to base inferences or conclusions only
on valid models .

 Plots will be an important tool for both building regression models and assessing
their validity. We shall see that deciding what to plot and how each plot should be
interpreted will be a major challenge. In order to overcome this challenge we shall
need to understand the mathematical properties of the fitted regression models and
associated diagnostic procedures. As such this will be an area of focus throughout
the book.

  1.2  Motivating Examples

 Throughout the book we shall carefully consider a number of real data sets. The
following examples provide examples of four such data sets and thus provide an
indication of what is to come.

  1.2.1  Assessing the Ability of NFL Kickers

 The  first  example  illustrates  the  importance  of  only  basing  inferences  or  conclu-
sions  on  a  valid  model.  In  other  words,  any  conclusion  is  only  as  sound  as  the
model on which it is based.

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_1, © Springer Science + Business Media LLC 2009

1

2

1

Introduction

 In  the  Keeping  Score  column  by  Aaron  Schatz  in  the  Sunday  November  12,
2006  edition  of  the   New York  Times   entitled  “N.F.L.  Kickers  Are  Judged  on  the
Wrong Criteria” the author makes the following claim:

 There is effectively no correlation between a kicker’s field goal percentage one season and
his field goal percentage the next.

 Put briefly, we will show that once the different ability of field goal kickers is
taken into account, there is a highly statistically significant  negative correlation
between a kicker’s field goal percentage one season and his field goal percentage
the next.

 In order to examine the claim we consider data on the 19 NFL field goal kickers
who made at least ten field goal attempts in each of the 2002, 2003, 2004, 2005
seasons  and  at  the  completion  of  games  on  Sunday,  November  12,  in  the  2006
season. The data were obtained from the following web site   http://www.rototimes.
com/nfl/stats      (accessed  November  13,  2006).  The  data  are  available  on  the  book
web site, in the file FieldGoals2003to2006.csv.

 Figure  1.1  contains a plot of each kicker’s field goal percentage in the current
year  against  the  corresponding  result  in  the  previous  year  for  years  2003,  2004,
2005 and for 2006 till November 12.

 It can be shown that the resulting correlation in Figure  1.1  of –0.139 is not
statistically significantly different from zero ( p -value = 0.230). This result is
in  line  with  Schatz’s  claim  of  “effectively  no  correlation.”  However,  this
approach is  fundamentally flawed  as it fails to take into account the potentially

Unadjusted Correlation = -0.139

100

90

80

70

t

r
a
e
Y
n

i

t

e
g
a
n
e
c
r
e
P

l

a
o
G
d
e
F

i

l

70

75

80

85

90

95

100

Field Goal Percentage in Year t - 1

  Figure 1.1

  A plot of field goal percentages in the current and previous year

1.2  Motivating Examples

3

different abilities of the 19 kickers. In other words this approach is based on
an  invalid model .

 In order to take account of the potentially different abilities of the 19 kickers we
used  linear  regression  to  analyze  the  data  in  Figure   1.1 .  In  particular,  a  separate
regression line can be fit for each of the 19 kickers. There is very strong evidence
that the intercepts of the 19 lines differ ( p -value = 0.006) but little evidence that the
slopes  of  the  19  lines  differ  ( p -value  =  0.939).  (Details  on  how  to  perform  these
calculations will be provided in Chapter 5.) Thus, a valid way of summarizing the
data in Figure  1.1  is to allow a different intercept for each kicker, but to force the
same slope across all kickers. This slope is estimated to be –0.504. Statistically, it
is highly significantly different from zero ( p -value < 0.001).

 Figure  1.2  shows the data in Figure  1.1  with a regression line for each kicker

such that each line has the same slope but a different intercept.

 There are two notable aspects of the regression lines in Figure  1.2 . Firstly, the
common slope of each line is negative. This means that if a kicker had a high field
goal percentage in the previous year then they are predicted to have a lower field
goal percentage in the current year. Let qi denote the true average field goal per-
centage of kicker  i , the negative slope means that a field goal percentage one year
above qi is likely to be followed by a lower field goal percentage, i.e., one that has
shrunk back toward qi. (We shall discuss the concept of shrinkage in Chapter 10.)
Secondly,  the  difference  in  the  heights  of  the  lines  (i.e.,  in  the  intercepts)  is  as
much as 20%, indicating a great range in performance across the 19 kickers.

Slope of each line = -0.504

100

90

80

70

t

r
a
e
Y
n

i

e
g
a

t

n
e
c
r
e
P

l

a
o
G
d
e
F

i

l

70

75

80

85

90

95

100

Field Goal Percentage in Year t − 1

  Figure 1.2

  Allowing for different abilities across the 19 field goal kickers

4

1

Introduction

  1.2.2  Newspaper Circulation

 This example illustrates the use of so-called dummy variables along with trans-
formations to overcome skewness.

 Imagine  that  the  company  that  publishes  a  weekday  newspaper  in  a  mid-size
American city has asked for your assistance in an investigation into the feasibility
of  introducing  a  Sunday  edition  of  the  paper.  The  current  circulation  of  the
company’s weekday newspaper is 210,000. Interest centers on developing a regres-
sion model that enables you to predict the Sunday circulation of a newspaper with
a weekday circulation of 210,000.

 Actual circulation data from September 30, 2003 are available for 89 US news-
papers that publish both weekday and Sunday editions. The first 15 rows of the data
are  given  in  Table   1.1 .  The  data  are  available  on  the  book  web  site,  in  the  file
circulation.txt.

 The situation is further complicated by the fact that in some cities there is more
than one newspaper. In particular, in some cities there is a tabloid newspaper along
with one or more so-called “serious” newspapers as competitors.

 The last column in Table  1.1  contains what is commonly referred to as a  dummy
variable . In this case it takes value 1 when the newspaper is a tabloid with a serious
competitor  in  the  same  city  and  value  0  otherwise.  For  example,  the   Chicago
Sun-Times  is a tabloid while the  Chicago Herald  and the  Chicago Tribune  are seri-
ous competitors.

 Given in Figure  1.3  is a plot of the Sunday circulation versus weekday circula-
tion with the dummy variable tabloid identified. We see from Figure  1.3  that the
data for the four tabloid newspapers are separated from the rest of the data and that
the  variability  in  Sunday  circulation  increases  as  weekday  circulation  increases.
Given below in Figure  1.4  is a plot of log(Sunday circulation) versus log(weekday
circulation).  Here,  and  throughout  the  book,  “log”  stands  for  log  to  the  base   e .
Taking logs has made the variability much more constant.

 We shall return to this example in Chapter 6.

 Table 1.1
publisher.com/eandp/yearbook/reports_trends.jsp”    . Accessed November 8, 2005)

  Partial list of the newspaper circulation data (circulation.txt) (  http://www.editorand

 Newspaper

  Akron Beacon Journal     (OH)
  Albuquerque Journal   (NM)
  Allentown Morning Call   (PA)
  Atlanta Journal-Constitution   (GA)
  Austin American-Statesman   (TX)
  Baltimore Sun   (MD)
  Bergen County Record   (NJ)
  Birmingham News   (AL)
  Boston Herald   (MA)
  Boston Globe   (MA)

 Sunday
 circulation

 Weekday
 circulation

 Tabloid with a
 serious competitor

 185,915
 154,413
 165,607
 622,065
 233,767
 465,807
 227,806
 186,747
 151,589
 706,153

 134,401
 109,693
 111,594
 371,853
 183,312
 301,186
 179,270
 148,938
 241,457
 450,538

 0
 0
 0
 0
 0
 0
 0
 0
 1
 0

1.2  Motivating Examples

5

Tabloid dummy variable

0
1

1500000

1000000

500000

n
o
i
t
a
u
c
r
i

l

C
y
a
d
n
u
S

2e+05

4e+05

6e+05

8e+05

1e+06

Weekday Circulation

  Figure 1.3

  A plot of Sunday circulation against Weekday circulation

Tabloid dummy variable

0
1

)
n
o
i
t
a
u
c
r
i

l

C
y
a
d
n
u
S
(
g
o

l

14.0

13.5

13.0

12.5

12.0

11.5

12.0

12.5

13.0

13.5

14.0

log(Weekday Circulation)

  Figure 1.4

  A plot of log(Sunday Circulation) against log(Weekday Circulation)

  1.2.3  Menu Pricing in a New Italian Restaurant in New York City

 This  example  highlights  the  use  of  multiple  regression  in  a  practical  business
setting. It will be discussed in detail in Chapters 5 and 6.

 Imagine that you have been asked to join the team supporting a young New York
City chef who plans to create a new Italian restaurant in Manhattan. The stated aims

6

1

Introduction

of the restaurant are to provide the highest quality Italian food utilizing state-of-the-
art décor while setting a new standard for high-quality service in Manhattan. The
creation and the initial operation of the restaurant will be the basis of a reality TV
show  for  the  US  and  international  markets  (including  Australia).  You  have  been
told  that  the  restaurant  is  going  to  be  located  no  further  south  than  the  Flatiron
District and it will be either east or west of Fifth Avenue.

 You have been asked to determine the pricing of the restaurants dinner menu such
that it is competitively positioned with other high-end Italian restaurants in the target
area. In particular, your role in the team is to analyze the pricing data that have been
collected in order to produce a regression model to predict the price of dinner. Actual
data from surveys of customers of 168 Italian restaurants in the target area are avail-
able. The data are in the form of the average of customer views on

    Y   = Price = the price (in $US) of dinner (including one drink & a tip)
   x   1    = Food = customer rating of the food (out of 30)
   x   2    = Décor = customer rating of the decor (out of 30)
   x   3    = Service = customer rating of the service (out of 30)
   x   4    =  East = dummy variable = 1 (0) if the restaurant is east (west) of Fifth Avenue
 Figures  1.5  and  1.6  contain plots of the data.

 Whilst  the  situation  described  above  is  imaginary,  the  data  are  real  ratings  of
New York City diners. The data are given on the book web site in the file nyc.csv.
The source of the data is:

  Zagat Survey 2001: New York City Restaurants , Zagat, New York.
 According to   www.zagat.com,     Tim and Nina Zagat (two lawyers in New York
City) started Zagat restaurant surveys in 1979 by asking 20 of their friends to rate
and review restaurants in New York City. The survey was an immediate success and
the Zagats have produced a guide to New York City restaurants each year since. In
less than 30 years, Zagat Survey has expanded to cover restaurants in more than 85
cities  worldwide  and  other  activities  including  travel,  nightlife,  shopping,  golf,
theater, movies and music.

 In particular you have been asked to:

  (cid:129)

 (cid:129)

 (cid:129)

 (cid:129)

 (cid:129)

 Develop a regression model that  directly predicts  the price of dinner (in dollars)
using a subset or all of the four potential predictor variables listed above.
 Determine  which  of  the  predictor  variables  Food,  Décor  and  Service  has  the
largest  estimated  effect  on  Price?  Is  this  effect  also  the  most  statistically
significant?
 If the aim is to choose the location of the restaurant so that the price achieved
for dinner is maximized, should the new restaurant be on the east or west of Fifth
Avenue?
 Does it seem possible to achieve a price premium for “setting a new standard for
high-quality service in Manhattan” for Italian restaurants?
 Identify the restaurants in the data set which, given the customer ratings, are
(i) unusually highly priced; and (ii) unusually lowly priced.

 We shall return to this example in Chapters 5 and 6.

7

60

50

40

30

20

25

20

15

10

1.2  Motivating Examples

16 18 20 22 24

14

18

22

Price

Food

24

22

20

18

16

22

18

14

Decor

Service

20 30 40 50 60

10 15 20 25

  Figure 1.5

  Matrix plot of Price, Food, Décor and Service ratings

e
c
i
r

P

60

50

40

30

20

  Figure 1.6
  Box plots of Price for the
two levels of the dummy variable East

0

1

East (1 = East of Fifth Avenue)

8

  1.2.4

 Effect of Wine Critics’ Ratings on Prices
of Bordeaux Wines

1

Introduction

 In  this  example  we  look  at  the  effects  two  wine  critics  have  on  Bordeaux  wine
prices in the UK. The two critics are Robert Parker from the US and Clive Coates
from the UK. Background information on each appears below:

 The most influential critic in the world today happens to be a critic of wine. … His name
is Robert Parker … and he has no formal training in wine. … … many people now believe
that  Robert  Parker  is  single-handedly  changing  the  history  of  wine.  …  He  is  a  self-
employed  consumer  advocate,  a  crusader  in  a  peculiarly  American  tradition.  …  Parker
samples 10,000 wines a year. … he writes and publishes an un-illustrated journal called
The Wine Advocate, (which) … accepts no advertising. …  The Wine Advocate  has 40,000
subscribers  (at  $50  each)  in  every  US-state  and  37  foreign  countries.  Rarely,  Parker  has
given wine a perfect score of 100 – seventy-six times out of 220,000 wines tasted. … he
remembers every wine he has tasted over the past thirty-two years and, within a few points,
every  score  he  has  given  as  well.  …  Even  his  detractors  admit  that  he  is  phenomenally
consistent – that after describing a wine once he will describe it in nearly the same way if
he retastes it ‘blind’ (without reference to the label) …. (Langewiesche 2000)

 Clive  Coates  MW  (Master  of  Wine)  is  one  of  the  world’s  leading  wine  authorities.
Coates’ lifetime of distinguished activity in the field has been recognised by the French
government,  which  recently  awarded  him  the  Chevalier  de  l’Ordre  du  Mérite  Agricole,
and  he’s  also  been  honoured  with  a  “Rame  d’Honneur”  by  Le  Verre  et  L’Assiette,  the
Ruffino/Cyril Ray Memorial Prize for his writings on Italian wine, and the title of “Wine
Writer  of  the  Year”  for  1998/1999  in  the  Champagne  Lanson  awards.  …Coates  has
published  The Vine , his independent fine wine magazine, since 1985. Prior to his career
as  an  author,  Coates  spent  twenty  years  as  a  professional  wine  merchant.  (  http://www.
clive-coates.com/    )

 The courtier Eric Samazeuilh puts it plainly: “… Parker is the wine writer who matters.
Clive  Coates  is  very  serious  and  well  respected,  but  in  terms  of  commercial  impact  his
influence is zero. It’s an amazing phenomenon.” …The pseudo-certainties of the 100-point
(Parker)  system  have  immense  appeal  in  markets  where  a  wine  culture  is  either  non-
existent or very new. The German wine collector Hardy Rodenstock recalls: “I know very
rich men in Hong Kong who have caught the wine bug. …the only thing they buy are wines
that Parker scores at ninety five or above …” …. (Brook 2001)

 Parker (2003) and Coates (2004) each contain numerical ratings and reviews of the
wines of Bordeaux. In this example we look at the effect of these ratings on the prices
(in pounds sterling) on the wholesale brokers’ auction market per dozen bottles, duty
paid but excluding delivery and VAT in London in September 2003. In particular, we
consider the prices for 72 wines from the 2000 vintage in Bordeaux. The prices are
taken from Coates (2004, Appendix One). The 2000 vintage has been chosen since it
is  ranked  by  both  critics  as  a  “great  vintage.”  For  example,  Parker  (2003,  pages
30–31) claims that the 2000 vintage “produced many wines of exhilarating quality …
at all levels of the Bordeaux hierarchy. … The finest 2000s appear to possess a stag-
gering 30–40 years of longevity.” In addition, Coates (2004, page 439) describes the
2000 vintage as follows: “Overall it is a splendid vintage.”

 Data are available on the ratings by Parker and Coates for each of the 72 wines.
Robert  Parker  uses  a  100-point  rating  system  with  wines  given  a  whole  number
score between 50 and 100 as follows:

1.2  Motivating Examples

9

 96–100 points
 90–95 points
 80–89 points
 70–79 points
 50–69 points

 Extraordinary
 Outstanding
 Above average to very good
 Average
 Below average to poor

 On the other hand, Clive Coates uses a 20-point rating system with wines given

a score between 12.5 and 20 that ends in 0 or 0.5 as follows:

 20
 19.5
 19
 18.5
 18
 17.5
 17
 16.5

 Excellent. ‘Grand vin’
 Very fine indeed
 Very fine plus
 Very fine
 Fine plus
 Fine
 Very good indeed
 Very good plus

 16
 15.5
 15
 14.5
 14
 13.5
 13
 12.5

 Very good
 Good plus
 Good
 Quite good plus
 Quite good
 Not bad plus
 Not bad
 Poor

 Data are available on the following other potentially important predictor variables:

  (cid:129)

 (cid:129)

 (cid:129)

 (cid:129)

 (cid:129)

 P95andAbove is a dummy variable which is 1 if the wine scores 95 or above
from  Robert  Parker  (and  0  otherwise).  This  variable  is  included  as  potential
predictor in view of the comment by Hardy Rodenstock.
 FirstGrowth is a dummy variable which is 1 if the wine is a First Growth (and 0
otherwise).  First  Growth  is  the  highest  classification  given  to  a  wine  from
Bordeaux. The classification system dates back to at least 1855 and it is based
on the “selling price and vineyard condition” (Parker, 2003, page 1148). Thus,
first-growth wines are expected to achieve higher prices than other wines.
 CultWine  is  a  dummy  variable  which  is  1  if  the  wine  is  a  cult  wine  (and  0
otherwise).  Cult  wines  (such  as  Le  Pin)  have  limited  availability  and  as  such
demand way outstrips supply. As such cult wines are among the most expensive
wines of Bordeaux.
 Pomerol  is  a  dummy  variable  which  is  1  if  the  wine  is  from  Pomerol  (and  0
otherwise). According to Parker (2003, page 610):

 The smallest of the great red wine districts of Bordeaux, Pomerol produces some of the
most  expensive,  exhilarating,  and  glamorous  wines  in  the  world.  …,  wines  are  in  such
demand that they must be severely allocated.

 VintageSuperstar is a dummy variable which is 1 if the wine is a vintage super-
star  (and  0  otherwise).  Superstar  status  is  awarded  by  Robert  Parker  to  a  few
wines in certain vintages. For example, Robert Parker (2003, page 529) describes
the 2000 La Mission Haut-Brion as follows:

 A superstar of the vintage, the 2000 La Mission Haut-Brion is as profound as such recent
superstars as 1989, 1982 and 1975. … The phenomenal aftertaste goes on for more than
a minute.

10

1

Introduction

 In summary, data are available on the following variables:

    Y   = Price = the price (in pounds sterling) of 12 bottles of wine
   x   1    = ParkerPoints = Robert Parker’s rating of the wine (out of 100)
   x   2    = CoatesPoints = Clive Coates’ rating of the wine (out of 20)
   x   3    = P95andAbove = 1 (0) if the Parker score is 95 or above (otherwise)
   x   4    = FirstGrowth = 1 (0) if the wine is a First Growth (otherwise)
   x   5    = CultWine = 1 (0) if the wine is a cult wine (otherwise)
   x   6    = Pomerol = 1 (0) if the wine is from Pomerol (otherwise)
   x   7    = VintageSuperstar = 1 (0) if the wine is a superstar (otherwise)
 The data are given on the book web site in the file Bordeaux.csv.

 Figure  1.7  contains a matrix plot of price, Parker’s ratings and Coates’ ratings,

while Figure  1.8  shows box plots of Price against each of the dummy variables.

88 90 92 94 96 98

Price

98

96

94

92

90

88

ParkerPoints

CoatesPoints

0 2000

6000

10000

15

16

17

18

19

  Figure 1.7

  Matrix plot of Price, ParkerPoints and CoatesPoints

10000

6000

2000

0

19

18

17

16

15

1.2  Motivating Examples

11

e
c
i
r

P

8000

6000

4000

2000

0

e
c
i
r

P

8000

6000

4000

2000

0

e
c
i
r

P

8000

6000

4000

2000

0

e
c
i
r

P

8000

6000

4000

2000

0

0

1

P95andAbove

0

1

First Growth

0

1

Cult Wine

e
c
i
r

P

8000

6000

4000

2000

0

0

1

Pomerol

0

1

Vintage Superstar

  Figure 1.8

  Box plots of Price against each of the dummy variables

 In particular you have been asked to:

-

   1.     Develop  a  regression  model  that  enables  you  to  estimate  the  percentage
effect on price of a 1% increase in ParkerPoints and a 1% increase in Coates-
Points  using  a  subset,  or  all,  of  the  seven  potential  predictor  variables
listed above.

   2.     Using the regression model developed in part (1), specifically state your estimate

of the percentage effect on price of

     (i)     A 1% increase in ParkerPoints
   (ii)     A 1% increase in CoatesPoints

   3.     Using the regression model developed in part (1), decide which of the predictor
variables  ParkerPoints  and  CoatesPoints  has  the  largest  estimated  percentage
effect on Price. Is this effect also the most statistically significant?

   4.     Using your regression model developed in part (1), comment on the following

claim from Eric Samazeuilh:

 Parker is the wine writer who matters. Clive Coates is very serious and well respected, but
in terms of commercial impact his influence is zero.

12

1

Introduction

   5.     Using  your  regression  model  developed  in  part  (1),  decide  whether  there  is  a
statistically significant extra price premium paid for Bordeaux wines from the
2000 vintage with a Parker score of 95 and above.

   6.     Identify  the  wines  in  the  data  set  which,  given  the  values  of  the  predictor

variables, are:

     (i)     Unusually highly priced
   (ii)     Unusually lowly priced

 In Chapters 3 and 6, we shall see that a log transformation will enable us to estimate
percentage  effects.  As  such,  Figure   1.9   contains  a  matrix  plot  of  log(Price),
log(ParkerPoints)  and  log(CoatesPoints),  while  Figure   1.10   shows  box  plots  of
log(Price) against each of the dummy variables. We shall return to this example
in Chapter 6.

4.48

4.52

4.56

4.60

log(Price)

4.60

4.56

4.52

4.48

log(ParkerPoints)

log(CoatesPoints)

5

6

7

8

9

2.70

2.80

2.90

  Figure 1.9

  Matrix plot of log(Price), log(ParkerPoints) and log(CoatesPoints)

9

8

7

6

5

2.90

2.80

2.70

1.3  Level of Mathematics

13

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

0

1

First Growth

0

1

Cult Wine

)
e
c
i
r

P
(
g
o

l

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

9

8

7

6

5

0

1

P95andAbove

)
e
c
i
r

P
(
g
o

l

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

9

8

7

6

5

0

1

Pomerol

0

1

Vintage Superstar

  Figure 1.10

  Box plots of log(Price) against each of the dummy variables

  1.3  Level of Mathematics

 Throughout the book we will focus on understanding the properties of a number of
regression  procedures.  An  important  component  of  this  understanding  will  come
from the mathematical properties of regression procedures.

 The  following  excerpt  from  Chapter  5  on  the  properties  of  least  squares  esti-

mates demonstrates the level of mathematics associated with this book:

 Consider the linear regression model written in matrix form as

Y X
   = b +

e

Var

with
Y, b, e and the n × (p + 1)matrix, X are given by

s=e
( )

2

I , where I is the (n × n) identity matrix and the (n × 1) vectors,

Y

=








y
1
y
2
⋮

y

n








,

X

=

1

1
⋮

1








x
1
x

2

p

p

⋯

x
11

⋯

21

x
⋮

x

n
1

⋯

x

np








,

b

=








b

0
b
1
⋮

b

p








,

e

=








e
1
e
2
⋮

e
n








14

1

Introduction

 The least squares estimates are given by

ˆ
b

= X X X Y
)

(

′

′

1
−

 We next derive the conditional mean of the least squares estimates:

(
ˆE
b

|

X

)
=
=

=

1
−
X X X Y X

′

)

(
E (
1
−
X X X
)
E
′
′
1
−
X X X X
)

(

|

)
′
)
(
Y X
|
b

′

′

(

=

b

   Chapter 2
  Simple Linear Regression

  2.1  Introduction and Least Squares Estimates

 Regression analysis is a method for investigating the functional relationship among
variables. In this chapter we consider problems involving modeling the relationship
between two variables. These problems are commonly referred to as simple linear
regression or straight-line regression. In later chapters we shall consider problems
involving modeling the relationship between three or more variables.

 In particular we next consider problems involving modeling the relationship between

two variables as a straight line, that is, when  Y  is modeled as a linear function of  X .
  Example: A regression model for the timing of production runs
 We shall consider the following example taken from Foster, Stine and Waterman
(1997, pages 191–199) throughout this chapter. The original data are in the form of
the time taken (in minutes) for a production run,  Y , and the number of items pro-
duced,  X , for 20 randomly selected orders as supervised by three managers. At this
stage we shall only consider the data for one of the managers (see Table  2.1  and
Figure  2.1 ). We wish to develop an equation to model the relationship between  Y ,
the run time, and  X , the run size.

 A scatter plot of the data like that given in Figure  2.1  should  ALWAYS  be drawn
to obtain an idea of the sort of relationship that exists between two variables (e.g.,
linear, quadratic, exponential, etc.).

  2.1.1  Simple Linear Regression Models

 When data are collected in pairs the standard notation used to designate this is:

  (x1, y1),(x2, y2), . . . ,(xn, yn)

 where  x  1  denotes the first value of the so-called  X -variable and  y  1  denotes the first
value of the so-called  Y -variable.  The  X -variable is called the  explanatory  or  pre-
dictor  variable ,  while  the   Y -variable  is  called  the   response  variable   or  the
 dependent variable .  The  X -variable often has a different status to the  Y -variable
in that:

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_2, © Springer Science + Business Media LLC 2009

15

16

2  Simple Linear Regression

 Table 2.1

  Production data (production.txt)

 Case

 Run time

 Run size

 Case

 Run time

 Run size

   1
   2
   3
   4
   5
   6
   7
   8
   9
 10

 195
 215
 243
 162
 185
 231
 234
 166
 253
 196

 175
 189
 344
 88
 114
 338
 271
 173
 284
 277

 11
 12
 13
 14
 15
 16
 17
 18
 19
 20

 220
 168
 207
 225
 169
 215
 147
 230
 208
 172

 337
 58
 146
 277
 123
 227
 63
 337
 146
 68

i

e
m
T
n
u
R

240

200

160

50

100

200

Run Size

300

  Figure 2.1

  A scatter plot of the production data

   (cid:129)
 (cid:129)

 It can be thought of as a potential predictor of the  Y -variable
 Its value can sometimes be chosen by the person undertaking the study

 Simple linear regression is typically used to model the relationship between two
variables  Y  and  X  so that given a specific value of  X , that is,  X  =  x , we can predict
the value of  Y . Mathematically, the regression of a random variable  Y  on a random
variable  X  is

  E(Y | X = x),

 the expected value of  Y  when  X  takes the specific value  x . For example, if  X  = Day
of the week and  Y  = Sales at a given company, then the regression of  Y  on  X  repre-
sents the mean (or average) sales on a given day.

 The regression of  Y  on  X  is linear if

2.1

Introduction and Least Squares Estimates

E(

Y X x

=

|

)

=

b

+0

b
1

x

17

  (2.1)

 where the unknown parameters   b0   and   b1   determine the intercept and the slope of a
specific straight line, respectively. Suppose that  Y  1 ,  Y  2 , …,  Y   n   are independent reali-
zations of the random variable  Y  that are observed at the values  x  1 ,  x  2 , …,  x   n   of a
random variable  X . If the regression of  Y  on  X  is linear, then for  i  = 1, 2, …,  n

Y
i

=

E(

Y X x

=

|

)

+

e
i

=

b

0

+

b
1

x

+

e
i

 where  e   i   is the random error in  Y   i   and is such that   E(e | X) = 0.

 The random error term is there since there will almost certainly be some varia-
tion in  Y  due strictly to random phenomenon that cannot be predicted or explained.
In other words, all unexplained variation is called  random error . Thus, the random
error term does not depend on  x , nor does it contain any information about  Y  (oth-
erwise it would be a systematic error).
 We shall begin by assuming that

ar
V (

Y X x

=

|

)

= 2
s

.

(2.2)

 In Chapter 4 we shall see how this last assumption can be relaxed.

  Estimating the population slope and intercept

 Suppose for example that  X  = height and  Y  = weight of a randomly selected individual
from some population, then for a straight line regression model the mean weight of
individuals of a given height would be a linear function of that height. In practice, we
usually have a sample of data instead of the whole population. The slope   b1   and inter-
cept   b0   are unknown, since these are the values for the whole population. Thus, we
wish to use the given data to estimate the slope and the intercept. This can be achieved
by finding the equation of the line which “best” fits our data, that is, choose  b  0  and  b  1
     is as “close” as possible to   yi  . Here the notation   ŷi   is used to
such that
denote the value of the line of best fit in order to distinguish it from the observed values
of  y , that is,   yi  . We shall refer to   ŷi   as the  i th  predicted value  or the  fitted value  of  y   i  .
  Residuals

b x
i
1

b
0

ˆi
y

+

=

 In practice, we wish to minimize the difference between the actual value of  y  ( y  i )
and the predicted value of  y  (  ŷi  ). This difference is called the residual,   ê i  , that is,

  êi = yi– ŷi   .

 Figure  2.2  shows a hypothetical situation based on six data points. Marked on this
plot is a  line of best fit ,   ŷi   along with the residuals.
  Least squares line of best fit

 A very popular method of choosing  b  0  and  b  1  is called the method of least squares.
As the name suggests  b  0  and  b  1  are chosen to minimize the sum of squared residuals
(or residual sum of squares [RSS]),

18

2  Simple Linear Regression

15

10

5

0

Y

ˆe3

ˆe4

ˆe1

ˆe2

ˆe6

ˆe5

Line of
best fit

0

1

2

X

3

4

5

  Figure 2.2

  A scatter plot of data with a line of best fit and the residuals identified

n

n

n

RSS

=

2
ˆ
∑ ∑
e
=
i

i

=

1

i

=

1

(

y
i

−

ˆ
y
i

2

)

=

∑

i

=

1

y
(
i

−

b
0

−

b x
i
1

2
) .

      For RSS to be a minimum with respect to  b  0  and  b  1  we require

RSS
∂
b
∂
0

2
= −

n

∑

i

=

1

y
(
i

−

b
0

−

b x
i
1

)

=

0

 and

∂
∂

RSS
b
1

2
= −

n

∑

i

=

1

x y
(
i
i

−

b
0

−

b x
i
1

)

=

0

 Rearranging terms in these last two equations gives

n

∑

i

=

1

y
i

=

b n b
+
0
1

n

∑
x
i

i

=

1

and

n

n

n

∑

i

=

1

x y
i
i

=

b
0

x
i

+

b
1

∑

i

=

1

∑

i

=

1

2
x
i

.

 These last two equations are called the  normal equations . Solving these equations
for  b  0  and  b  1  gives the so-called  least squares estimates  of the intercept

ˆ
b

0

y
= −

ˆ
b

x

1

(2.3)

2.1

Introduction and Least Squares Estimates

 and the slope

n

n

∑

i

1
=
n

ˆ
b

=

1

x y
i
i

−

nxy

=

2
x
i

2

−

nx

∑

i

=

1

∑

i

=

1

(

x
i

−

x y
)(
i

−

y

)

n

(

x
i

2

x

)

−

∑

i

=

1

19

(2.4)

=

SXY
SXX

.

  Regression Output from R

The least squares estimates for the production data were calculated using R, giving
the following results:
 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

 (Intercept)
 RunSize
 ---
 Signif. codes:0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ‘ 1

17.98  6.00e-13 ***
6.98  1.61e-06 ***

149.74770
0.25924

8.32815
0.03714

 Residual standard error: 16.25 on 18 degrees of freedom
 Multiple R-Squared: 0.7302,
 F-statistic: 48.72 on 1 and 18 DF, p-value: 1.615e-06

Adjusted R-squared: 0.7152

  The least squares line of best fit for the production data

 Figure  2.3  shows a scatter plot of the production data with the least squares line of
best fit. The equation of the least squares line of best fit is

y

=

x
149.7 0.26 .
+

 Let us look at the results that we have obtained from the line of best fit in Figure
 2.3 . The intercept in Figure  2.3  is 149.7, which is where the line of best fit crosses
the run time axis. The slope of the line in Figure  2.3  is 0.26. Thus, we say that each
additional unit to be produced is predicted to add 0.26 minutes to the run time. The
intercept in the model has the following interpretation: for any production run, the
average set up time is 149.7 minutes.

  Estimating the variance of the random error term

 Consider  the  linear  regression  model  with  constant  variance  given  by  (2.1)  and
(2.2). In this case,

Y
i

=

b

0

+

b
1

x
i

+

e
i

i
(

=

n
1,2,..., )

 where the random error  e   i   has mean 0 and variance   s2  . We wish to estimate
  s2 = Var(e)  . Notice that

e
i

=

Y
i

−

(

b

0

+

b
1

x
)i

=

Y
i

– unknown regression line at xi.

20

2  Simple Linear Regression

i

e
m
T
n
u
R

240

220

200

180

160

50

100

150

200

250

300

350

Run Size

  Figure 2.3

  A plot of the production data with the least squares line of best fit

 Since b0     and   b1   are unknown all we can do is estimate these errors by replacing   b0
  and   b1   by their respective least squares estimates   bˆ
ˆ
b

1   giving the residuals

estimated regression line at

0   and   bˆ

ˆ
b

(

)

x
i

1

=

Y
i

−

ˆ
e
i

=

Y
i

−

+

0

x
.

i

 These residuals can be used to estimate   s 2  . In fact it can be shown that

2

S

=

RSS
n
2
−

=

n

 is an unbiased estimate of   s 2  .
 Two points to note are:

n

1
2
ˆ
− ∑
e
i
2

1

i

=

0

e =    (since

    1.       ˆ
   2.     The divisor in   S 2   is   n – 2   since we have estimated two parameters, namely

   as the least squares estimates minimize

2ˆ
= ∑    )
ie

ˆ
ie =∑

RSS

0

  b0   and   b1  .

  2.2  Inferences About the Slope and the Intercept

 In  this  section,  we  shall  develop  methods  for  finding  confidence  intervals
and  for  performing  hypothesis  tests  about  the  slope  and  the  intercept  of  the
regression line.

2.2

Inferences About the Slope and the Intercept

21

  2.2.1

 Assumptions Necessary in Order to Make Inferences
About the Regression Model

 Throughout this section we shall make the following assumptions:

0

+

Y
i

    1.      Y  is related to  x  by the simple linear regression model
n
1,..., )
+0

x
b
b
+
=
i
1
e e
2,
   2.     The errors    1
e e
2,
   3.     The errors    1
   4.     The errors are normally distributed with a mean of 0 and variance   s 2  , that is,

E(
b
e    are independent of each other
e    have a common variance   s 2

e i
(
=
i
,..., n
,..., n

Y X x

  , i.e.,

x
i

b
1

)i

=

=

|

e X N s
  (~
)

0,

|

2

 Methods for checking these four assumptions will be considered in Chapter 3. In
addition,  since  the  regression  model  is  conditional  on   X   we  can  assume  that  the
values of the predictor variable,  x  1 ,  x  2 , …,  x   n   are known fixed constants.

  2.2.2  Inferences About the Slope of the Regression Line

 Recall from (2.4) that the least squares estimate of   b1   is given by

n

n

x y
i
i

−

nxy

=

2
x
i

2

−

nx

∑

i

1
=
n

∑

i

=

1

∑

i

=

1

(

x
i

−

x y
)(
i

−

y

)

n

(

x
i

2

x

)

−

∑

i

=

1

=

SXY
SXX

ˆ
b

1

=

n

 Since,
i

∑

=

1

(

x
i

−

x

)

=

   we find that
0

n

∑
   1
i
=

(

x
i

−

x y
)(
i

−

y

)

=

 Thus, we can rewrite   bˆ

1   as

n

n

n

∑

i

=

1

(

x
i

−

x y
)
i

−

y

∑

i

=

1

(

x
i

−

x

)

=

∑

i

=

1

(

x
i

−

x y
)
i

ˆ
b
1

=

n

∑

i

=

1

c y
i
i

where

c
i

=

x
x
−
i
SXX

(2.5)

 We shall see that this version of   bˆ
properties.

1   will be used whenever we study its theoretical

 Under the above assumptions, we shall show in Section  2.7  that

ˆE(
b

|

)X

1

b=
1

ˆVar(
b
1

|

)X

=

2

s
SXX

(2.6)

(2.7)

22

2  Simple Linear Regression

ˆ
b
1

|

X N
 ~

⎛
⎜
⎝

b
1

,

2

s
⎞
⎟
SXX
⎠

(2.8)

 Note that in (2.7) the variance of the least squares slope estimate decreases as  SXX
increases (i.e., as the variability in the  X ’s increases). This is an important fact to note
if the experimenter has control over the choice of the values of the  X  variable.

 Standardizing (2.8) gives

Z

=

ˆ
b b
−
1
s

1

SXX

~ (0,1)

N

 If    s    were  known  then  we  could  use  a   Z   to  test  hypotheses  and  find  confidence
intervals for   b  1. When   s   is unknown (as is usually the case) replacing   s   by  S , the
standard deviation of the residuals results in

T

=

ˆ
b
1
S

−

b
1

SXX

=

−

ˆ
b
1
se (

b
1
ˆ
)
b
1

 where se

ˆ(
)
b =
1

S

SXX

   is the estimated standard error (se) of   bˆ

1  , which is given

directly  by  R.  In  the  production  example  the   X -variable  is   RunSize   and  so
se  (bˆ

1) = 0.03714  .
 It can be shown that under the above assumptions that  T  has a  t -distribution with

 n  – 2 degrees of freedom, that is

T

=

ˆ
b
1
se(

b
−
1
ˆ
)
b
1

t
~ n

−

2

 Notice that the degrees of freedom satisfies the following formula

degrees of freedom = sample size – number of mean parameters estimated.

 In this case we are estimating two such parameters, namely,   b0   and   b1  .
b
1

 For  testing the hypothesis

    the test statistic is

b= 0

:H
0

1

T

=

ˆ
b
1
s

0
b
−
1
ˆe(
)
b
1

~

t
  when
n

2

−

H

is true.

0

 R provides the value of  T  and the  p -value associated with testing   H0 : b1 = 0   against
AH b ≠    (i.e., for the choice    0
b =   ). In the production example the  X -variable is
1
 RunSize  and  T  = 6.98, which results in a  p -value less than 0.0001.

0

0

:

1

 A    100(1–a)  %   confidence  interval   for    b1  ,  the  slope  of  the  regression  line,  is

given by

2.2

Inferences About the Slope and the Intercept

23

ˆ
b
1

(

−

t

(
a

/2,

n
-

2)se (

ˆ
ˆ
),
b b
1
1

+

t

(
a /

2,

n
-

2) se (

ˆ
b
1

))

 where   t(a /   2, n – 2) is the   100(1– a /   2)th quantile of the  t -distribution with  n  – 2
degrees of freedom.

ˆ
b
 In  the  production  example  the   X -variable  is   RunSize   and     1

=
  0.03714, t (0.025, 20–2 = 18) = 2.1009. Thus a 95%  confidence interval for   b1   is given by

0.25924, se(

ˆ
b
1

=

)

  (0.25924 2.1009 0.03714)

×

±

=

(0.25924 0.07803)
±

=

(0.181,0.337)

  2.2.3  Inferences About the Intercept of the Regression Line

 Recall from (2.3) that the least squares estimate of   b0   is given by

ˆ
    0
b

y
= −

ˆ
b
1

x

 Under the assumptions given previously we shall show in Section  2.7  that
ˆE(

)

Xb
|
0

b=

0

ˆVar(
b

0

|

X

)

=

s

2

1
⎛
+⎜
n
⎝

2

x
SXX

⎞
⎟
⎠

ˆ |
b

0

X N
~

2

,
b s
0

⎛
⎜
⎝

⎛
⎜
⎝

1
n

+

2

x
SXX

⎞
⎟
⎠

⎞
⎟
⎠

(2.9)

(2.10)

(2.11)

 Standardizing (2.11) gives

Z

=

ˆ
b

0

−

b

0

s

2

x

1

+

n

SXX

~

N

(0,1)

 If   s   were known then we could use  Z  to test hypotheses and find confidence inter-
vals for   b0  . When   s   is unknown (as is usually the case) replacing σ by S results in

T

=

ˆ
b

0

−

b

0

S

2

x

1

+

n

SXX

=

ˆ
b

−
ˆ
b

0
se(

b

0

0
)

~

t

n

−

2

2

S

1

ˆ
)
b =
0

(
 where  se

0  ,  which  is
given directly by R. In the production example the intercept is called  Intercept  and
so   se(bˆ

    is  the  estimated  standard  error  of    bˆ

SXX

+

n

x

0) = 8.32815  .

24

2  Simple Linear Regression

 For  testing the hypothesis

:H b
0

b=

0
0

0

   the test statistic is

T

=

ˆ
b

b
−
ˆ
b

0
0
)

0

0
se(

~

t
  when
n

2

−

H

is t

rue.

0

 R  provides  the  value  of   T   and  the   p -value  associated  with  testing     0
against
  T = 17.98   which results in a  p -value < 0.0001.

H b =
0
0
AH b (cid:2)   . In the production example the intercept is called  Intercept  and

0

:

:

0

 A   100(1 – a )%    confidence interval  for   b0  , the intercept of the regression line,

is given by

ˆ
b

(

0

−

t

(
a /

2,

n –

2) se(

ˆ
b

0

ˆ
b

),

0

+

t

(
a

/2 ,

n –

2)se(

ˆ
b

0

))

 where    t(a / 2,n – 2)    is  the    100(1–a / 2)  th  quantile  of  the   t -distribution  with   n   –  2
degrees of freedom.

 In the production example,

ˆ
b
   0

=

149.7477, se(

ˆ
b

0

)

=

8.32815, (0.025,20 2 18)

− =

t

=

2.1009

  .

Thus a 95% confidence interval for   b0   is given by

  (149.7477 2.1009 8.32815)

×

±

=

(149.748 17.497)
±

=

(132.3,167.2)

  Regression Output from R: 95% confidence intervals

97.5%
 (Intercept) 132.251 167.244
0.181   0.337
 RunSize

 2.5%

  2.3  Confidence Intervals for the Population Regression Line

 In  this  section  we  consider  the  problem  of  finding  a  confidence  interval  for  the
unknown population regression line at a given value of  X , which we shall denote by  x *.
First, recall from (2.1) that the population regression line at  X  =  x * is given by

E(

Y X x

=

|

*)

=

b

0

+

b
1

x

*

 An  estimator  of  this  unknown  quantity  is  the  value  of  the  estimated  regression
equation at  X  =  x *, namely,

ˆ*
y

=

ˆ
b

0

ˆ
b
1

+

x

*

 Under the assumptions stated previously, it can be shown that

E( *) E(

=

ˆ
y

ˆ
y X x

=

|

*)

=

b

0

+

b
1

x

*

 (2.12)

2.4  Prediction Intervals for the Actual Value of Y

Var( *) Var(

=

ˆ
y

ˆ
y X x

=

|

*)

=

s

2 1
⎛
+⎜
n
⎝

x
( *

x
−
SXX

2

)

⎞
⎟
⎠

ˆ
y
*

=

ˆ
y X x

=

|

*
∼

N

b

0

+

b
1

x
*,

s

2

⎛
⎜
⎝

⎛
⎜
⎝

1
n

+

x
( *

x
−
SXX

2

)

⎞
⎟
⎠

⎞
⎟
⎠

25

(2.13)

(2.14)

 Standardizing (2.14) gives

Z

=

ˆ * (
y
−

b

0

+

b
1

x
*)

s

(

1
n

+

x
( *

x
−
SXX

2

)

)

∼

N
  (0,1)

 Replacing s by  S  results in

T

=

ˆ * (
y
−

b

0

+

b
1

x
*)

S

(

1
n

+

x
( *

x
−
SXX

2

)

)

t
−∼
n

2

 A   100(1 – a)%    confidence interval  for

tion regression line at  X  =  x *, is given by

E(

Y X x

=

|

*)

=

b

0

+

b
1

x

*

, the popula-

ˆ *
y

±

t

(
a/

2,

n

−

2)

S

(

1
n

+

x
( *

x
−
SXX

2

)

)

=

ˆ
b

0

ˆ
b

+

1

x

*

±

t

(
a/

2,

n

−

2)

S

(

1
n

+

x
( *

x
−
SXX

2

)

)

t
where     (
2)
a/
degrees of freedom.

2,

−

n

  is  the  100(1–a/2)th  quantile  of  the   t -distribution  with   n   –  2

  2.4  Prediction Intervals for the Actual Value of  Y

 In  this  section  we  consider  the  problem  of  finding  a  prediction  interval  for  the
actual value of  Y  at  x *, a given value of  X .

  Important Notes:

    1.       E(

Y X x=

|

*)

  , the expected value or average value of  Y  for a given value  x * of

 X , is what one would expect  Y  to be in the long run when  X  =  x *.   E(
is therefore a fixed but unknown quantity whereas  Y  can take a number of values
when  X  =  x *.

Y X x=

*)

|

26

2  Simple Linear Regression

   2.      E(Y  |  X = x*), the value of the regression line at  X  =  x *, is entirely different from
 Y *, a single value of  Y  when  X  =  x *. In particular,  Y * need not lie on the popula-
tion regression line.

   3.     A  confidence interval  is always reported for a  parameter  (e.g.,   E(Y | X = x*)
= b0 + b1x*  ) and a  prediction interval  is reported for the value of a  random
variable  (e.g.,  Y *).

 We base our prediction of  Y  when  X  =  x * (that is of  Y *) on

ˆ*
y

=

ˆ
b

0

ˆ
b

1

+

x

*

 The error in our prediction is

Y

*

−

ˆ
y
*

=

b

0

+

b
1

x

*

+

e

*

−

ˆ
y
* E(
=

Y X x

=

|

*)

−

ˆ
y

*

+

e

*

 that  is,  the  deviation  between  E(Y  |  X  =  x*)  and  yˆ*  plus  the  random  fluctuation
  e*   (which represents the deviation of  Y * from E(Y | X = x*)). Thus the variability
in the error for predicting a single value of  Y  will exceed the variability for estimating
the expected value of  Y  (because of the random error  e *).

 It can be shown that under the previously stated assumptions that

Y
E( *

−

ˆ
y
*) E(
=

Y y X x
|

=

−

ˆ

*)

=

0

Var( *

Y

−

ˆ
y
*) Var(

=

Y y X x
|

=

−

ˆ

*)

2

=

s

1
+ +
n

x
( *

x
−
SXX

2

)

⎡
1
⎢
⎣

⎤
⎥
⎦

Y

ˆ*
y
*
~
−

N

2

0,

s

⎛
⎜
⎝

1
+ +
n

x
( *

x
−
SXX

2

)

⎡
1
⎢
⎣

⎞
⎟
⎠

⎤
⎥
⎦

 Standardizing (2.17) and replacing s by  S  gives

T

=

Y

ˆ*
y
−

*

S

(1

1
+ +
n

x
( *

x
−
SXX

2

)

)

t
~ −

n

2

 (2.15)

(2.16)

 (2.17)

 A   100(1–a)%    prediction interval  for  Y *, the value of  Y  at  X  =  x *, is given by

ˆ *
y

±

t

(
a/

2,

n

−

2)

S

(1

1
+ +
n

x
( *

x
−
SXX

2

)

)

ˆ
b

0

ˆ
b

+

1

=

x

*

±

t

(
a/

2,

n

−

2)

S

(1

1
+ +
n

x
( *

x
−
SXX

2

)

)

2.5  Analysis of Variance

27

where  t(a / 2,n–2)  is  the  100(1–a / 2)th  quantile  of  the   t -distribution  with   n   –  2
degrees of freedom.

  Regression Output from R

 Ninety-five percent confidence intervals for the population regression line (i.e., the
average  RunTime)  at  RunSize  = 50, 100, 150, 200, 250, 300, 350 are:

fit
  1 162.7099
  2 175.6720
  3 188.6342
  4 201.5963
  5 214.5585
  6 227.5206
  7 240.4828

lwr

upr
148.6204  176.7994
164.6568  186.6872
179.9969  197.2714
193.9600  209.2326
206.0455  223.0714
216.7006  238.3407
226.6220  254.3435

 Ninety-five  percent  prediction  intervals  for  the  actual  value  of   Y   (i.e.,  the  actual
 RunTime)  at at  RunSize  = 50, 100, 150, 200, 250, 300, 350 are:

fit
  1 162.7099
  2 175.6720
 3 188.6342
 4 201.5963
 5 214.5585
 6 227.5206
 7 240.4828

lwr

upr
125.7720  199.6478
139.7940  211.5500
153.4135  223.8548
166.6076  236.5850
179.3681  249.7489
191.7021  263.3392
203.6315  277.3340

 Notice that each prediction interval is considerably wider than the corresponding
confidence interval, as is expected.

  2.5  Analysis of Variance

 There is a linear association between  Y  and  x  if

  Y = b0 + b1x + e

 and b1    ≠ 0. If we knew that   b1≠ 0   then we would predict  Y  by

ˆy

=

ˆ
b

0

ˆ
b

+

1

x

On the other hand, if we knew that b1 = 0 then we predict Y by

  ˆy

y=

 To test whether there is a linear association between  Y  and  X  we have to test

H b =      against
0

:

0

1

AH b ≠    .
0

:

1

28

2  Simple Linear Regression

 We can perform this test using the following  t -statistic

T

ˆ
b
= 1
se(

0

)

−
ˆ
b
1

∼

t

n

−

2

when H0 is true.

 We next look at a different test statistic which can be used when there is more than
one  predictor  variable,  that  is,  in  multiple  regression.  First,  we  introduce  some
terminology.

 Define the total corrected sum of squares of the  Y ’s by

SST

=

SYY

=

n

−∑
y
(
i

i

2

y

)

 Recall that the residual sum of squares is given by

RSS

=

n

−∑
y
(
i

i

ˆ
y
i

2

)

 Define the regression sum of squares (i.e., sum of squares explained by the regres-
sion model) by

SSreg

=

n

ˆ
−∑
y
(
i

i

2

y

)

 It is clear that SSreg is close to zero if for each  i,  yˆi is close to y¯ while SSreg is large
if yˆi differs from ¯y for most values of  x .

 We  next  look  at  the  hypothetical  situation  in  Figure   2.4   with  just  a  single
data  point  ( x   i  ,   y   i  )  shown  along  with  the  least  squares  regression  line  and  the
mean  of   y   based  on  all   n   data  points.  It  is  apparent  from  Figure   2.4   that
ˆ
y
y
i
i
 Further, it can be shown that

) (
ˆ
y
+
i

y
− =

(
y
i

)

−

−

y

.

= SSreg

SST
Total sample = Variability explained by + Unexplained (or error)
variability

variability

the model

+ RSS

 See exercise 6 in Section  2.7  for details.

 If

Y

=

b

0

+

b
1

x

e

+    and   b1 ≠ 0

 then RSS should be “small” and SSreg should be “close” to SST. But how small is
“small” and how close is “close”?

2.5  Analysis of Variance

29

  Figure 2.4

  Graphical depiction that

y
i

y
− =

(
y
i

−

ˆ
y
i

) (
ˆ
y
+
i

−

)
y

 To test

  H0 : b1 = 0   against   HA : b1 ≠ 0

 we can use the test statistic

F

=

SSreg / 1
n
(
RSS /
2

−

)

 since RSS has ( n  – 2) degrees of freedom and SSreg has 1 degree of freedom.

 Under the assumption that   e1 , e2 ,..., en   are independent and normally distributed
with mean 0 and variance   s2  , it can be shown that  F  has an  F  distribution with 1
and  n  – 2 degrees of freedom when   H0   is true, that is,

F

=

SSreg / 1
n

RSS /(

−

2)

~

,n –F

1

2

   when   H0   is true

 Form of test: reject   H0    at level a if
    (which can be obtained from table
of the  F  distribution). However, all statistical packages report the corresponding
 p -value.

F Fa
>

2n
−

,1,

30

2  Simple Linear Regression

 The usual way of setting out this test is to use an   Analysis of variance table

 Source of
variation

 Degrees of
freedom (df)

 Sum of squares
(SS)

 Mean square
(MS)

 F

 Regression

 1

 SSreg

 SSreg/1

 Residual
 Total

  n   – 2
  n   – 1

 RSS
 SST

 RSS/( n  – 2)

   Notes:

    1.     It can be shown that in the case of simple linear regression

    and

F

=

SSreg / 1
n

RSS /(

−

2)

~

,n –F

1

2

   are related via   F = T  2

F

=

SSreg / 1
n
(
2
RSS /

−

)

T

=

ˆ
b
1
se(

0
−
ˆ
)
b
1

~

nt

−

2

   2.       R2  , the coefficient of determination of the regression line, is defined as the pro-
portion  of  the  total  sample  variability  in  the   Y ’s  explained  by  the  regression
model, that is,

2
R =

SSreg
SST

1
= −

RSS
SST

   The reason this quantity is called   R2   is that it is equal to the square of the correlation

between  Y  and  X . It is arguably one of the most commonly misused statistics.

  Regression Output from R

 Analysis of Variance Table
 Response: RunTime

Df  Sum Sq  Mean Sq  F value
 1  12868.4  12868.4
264.1

 RunSize
 Residuals  18
 ---
 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ‘ 1

48.717  1.615e-06  ***

Pr(>F)

4754.6

 Notice that the observed  F -value of 48.717 is just the square of the observed  t -value
6.98 which can be found between Figures 2.2 and 2.3. We shall see in Chapter 5
that Analysis of Variance overcomes the problems associated with multiple  t -tests
which occur when there are many predictor variables.

  2.6  Dummy Variable Regression

 So far we have only considered situations in which the predictor or  X -variable is
quantitative (i.e., takes numerical values). We next consider so-called  dummy vari-
able regression , which is used in its simplest form when a predictor is categorical

2.6  Dummy Variable Regression

31

with  two  values  (e.g.,  gender)  rather  than  quantitative.  The  resulting  regression
models allow us to test for the difference between the means of two groups. We
shall see in a later topic that the concept of a dummy variable can be extended to
include problems involving more than two groups.

  Using dummy variable regression to compare new and old methods

 We shall consider the following example throughout this section. It is taken from
Foster, Stine and Waterman (1997, pages 142–148). In this example, we consider
a large food processing center that needs to be able to switch from one type of
package to another quickly to react to changes in order patterns. Consultants have
developed a new method for changing the production line and used it to produce
a sample of 48 change-over times (in minutes). Also available is an independent
sample of 72 change-over times (in minutes) for the existing method. These two
sets of times can be found on book web site in the file called changeover_times.
txt. The first three and the last three rows of the data from this file are reproduced
below in Table  2.2 . Plots of the data appear in Figure  2.5 .

 We  wish  to  develop  an  equation  to  model  the  relationship  between   Y ,  the
change-over time and  X , the dummy variable corresponding to New and hence test
whether the mean change-over time is reduced using the new method.

 We consider the simple linear regression model

Y

=

b

0

+

b
1

x

e
+

 where  Y  = change-over time and  x  is the dummy variable (i.e.,  x  = 1 if the time corre-
sponds to the new change-over method and 0 if it corresponds to the existing method).

  Regression Output from R

 Coefficients:

 Estimate  Std. Error  t value
0.8905   20.058
-2.254
1.4080

 (Intercept) 17.8611
 New
-3.1736
 ---
 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ‘ 1
 Residual standard error: 7.556 on 118 degrees of freedom
 Multiple R-Squared: 0.04128, Adjusted R-squared: 0.03315
 F-statistic: 5.081 on 1 and 118 DF, p-value: 0.02604

Pr(>|t|)
<2e-16
0.0260

***
*

 We can test whether there is significant reduction in the change-over time for the
new method by testing the significance of the dummy variable, that is, we wish to
test whether the coefficient of  x  is zero or less than zero, that is:

H b =    against
0
   0

:

1

AH b <
0

:

1

 We use the one-sided “<” alternative since we are interested in whether the new

method has lead to a reduction in mean change-over time. The test statistic is

T

=

ˆ
b
1
se(

−
ˆ
b
1

0

)

~

t

n

−

2

when

H

0

.
is true

32

2  Simple Linear Regression

 Table 2.2

  Change-over time data (changeover_times.txt)

 Method

 Existing
 Existing
 Existing
 .
 New
 New
 New

  Y , Change-over time

  X , New

 19
 24
 39
 .
 14
 40
 35

 0
 0
 0
 .
 1
 1
 1

i

e
m
T
r
e
v
O
e
g
n
a
h
C

35

25

15

5

i

e
m
T
r
e
v
O
e
g
n
a
h
C

35

25

15

5

0.0

0.2

0.4

0.6

0.8 1.0

0

1

Dummy Variable, New

Dummy Variable, New

i

e
m
T
r
e
v
O
e
g
n
a
h
C

35

25

15

5

Existing

New

Method

  Figure 2.5

  A scatter plot and box plots of the change-over time data

 In this case,

T = –2.254.

 (This result can be found in the output in the column headed ‘ t  value’). The associ-
ated  p -value is given by

p value P T

(

=

−

< −

2.254 when

H

0

is true) =

0.013

 as the two-sided

2.254 when
 This means that there is significant evidence of a reduction in the mean change-

p value P T

is true)

≠ −

H

=

=

(

-

0

over time for the new method.

=

0.026
2
0.026.

2.7  Derivations of Results

33

 Next  consider  the  group  consisting  of  those  times  associated  with  the   new
change-over method . For this group, the dummy variable,  x  is equal to 1. Thus, we
can estimate the mean change-over time for the new method as:

  17.8611 ( 3.1736) 1 14.6875 14.7 minutes

× =

+ −

=

 Next  consider  the  group  consisting  of  those  times  associated  with  the   existing
change-over method . For this group, the dummy variable,  x  is equal to 0. Thus, we
can estimate the mean change-over time for the new method as:

17.8611 + (–3.1736) × 0 = 17.8611 = 17.9 minutes

 The new change-over method produces a reduction in the mean change-over time
of 3.2 min from 17.9 to 14.7 minutes (Notice that the reduction in the mean change-
over time for the new method is just the coefficient of the dummy variable.) This
reduction is  statistically significant .

 A 95% confidence interval for the reduction in mean change-over time due to

the new method is given by

ˆ
b
1

(

−

t

(
a

/2,

n

−

2)se(

ˆ
ˆ
),
b b
1
1

+

t

(
a

/2,

n

−

2)se (

ˆ
b
1

))

n

a

2)

2)

/2,

a /−

−     is  the    100(1

t
 where    (
  th  quantile  of  the   t -distribution  with   n   –  2
degrees  of  freedom.  In  this  example  the   X -variable  is  the  dummy  variable
ˆ
ˆ
 New   and     1
  .  Thus  a
t
) 1.4080, (0.025,120 2
b
b
1
95% confidence interval for   b1   (in minutes) is given by
2.7883)

±1.9803 ×1.4080) = (−3.1736 ±

( 5.96, 0.39).
−

118) 1. 803
=

3.1736, se(

( 3.1736
−

− =

= −

= −

=

9

 Finally, the company should adopt the new method if a reduction of time of this size
is of  practical significance .

  2.7  Derivations of Results

 In  this  section,  we  shall  derive  some  results  given  earlier  about  the  least  squares
estimates of the slope and the intercept as well as results about confidence intervals
and prediction intervals.

 Throughout this section we shall make the following assumptions:

0

+

+

=

b

x
i

Y
i

b
1

    1.      Y  is related to  x  by the simple linear regression model
b
1

b
   2.     The errors   e1,e2,...,en   are independent of each other
   3.     The errors   e1,e2,...,en   have a common variance   s2
   4.     The errors are normally distributed with a mean of 0 and variance   s2  (especially

n i e
1,..., ), . ., E(

Y X x
i

e i
(
i

x
i

+

=

=

=

)

|

0

when the sample size is small), that is,

e X N s
(~

0,

|

2

)

34

2  Simple Linear Regression

 In addition, since the regression model is conditional on  X  we can assume that the
values of the predictor variable,  x   1  ,  x   2  , …,  x   n   are known fixed constants.

  2.7.1  Inferences about the Slope of the Regression Line

 Recall from (2.5) that the least squares estimate of   b1   is given by

ˆ
b
   1

=

n

∑

i

=

1

c y
i
i

c
where
i

=

x
x
−
i
SXX

.

 Under the above assumptions we shall derive (2.6), (2.7) and (2.8).

 To derive (2.6) let’s consider

⎤
⎥
⎦

]

ˆE(
b
1

|

X

) E
=

⎡
⎢
⎣

n

n

∑

i

=

1

c y X x
|
i
i

=

i

=

=

∑

i

=

1

n

∑

i

=

1

c E y X x
|
i
i
i

=

[

c
i

(
b

0

+

b
1

x
i

)

n

n

∑

i

=

1

c
i

+

b
1

∑

1

i
=
x
x
−
i
SXX

⎫
⎬
⎭

c x
i
i

+

b
1

n

∑

i

=

1

x
x
−
i
SXX

⎧
⎨
⎩

x
i

⎫
⎬
⎭

n

∑

i

=

1

⎧
⎨
⎩

=

b

0

= b

0

=

b
1

n

n

n

 since

∑

i

=

1

(

x
i

−

x

)

=

0 and

∑

i

=

1

(

x
i

−

x x
)
i

=

∑ 2
x
i

i

=

1

2

−

nx

=

SXX
.

To derive (2.7) let’s consider

ˆVar(
b
1

|

X

) Var

=

⎡
⎢
⎣

n

n

∑

i

=

1

c y X x
|
i
i

=

i

⎤
⎥
⎦

=

∑

i

=

1

Var(

y X x
i
i

=

|

)

2
c
i

n

2

= σ

∑

i

=

1

n

2

= σ

∑

i

=

1

2
c
i

2

x
x
−⎧
i
⎨
SXX
⎩

⎫
⎬
⎭

=

2

σ
SXX

2.7  Derivations of Results

35

 Finally we derive (2.8). Under assumption (4), the errors  e   i   |  X  are normally distrib-
n
y
x
  ,   Y   i    |  X   is  normally  distributed.  Since
1,2,..., )
uted.  Since
b
i
i
1
ˆ | Xb
ˆ | Xb
   is a linear combination of the  y   i  ’s,    1
   1

   is normally distributed.

e
i

i
(

+

+

=

=

b

0

  2.7.2  Inferences about the Intercept of the Regression Line

 Recall from (2.3) that the least squares estimate of   b0   is given by

ˆ
b
   0

y
= −

ˆ
b
1

x

.

 Under the assumptions given previously we shall derive (2.9), (2.10) and (2.11). To
derive (2.9) we shall use the fact that

ˆ
b

E(

0

|

X

) E(
=

y X
|

) E(
−

ˆ |
b
1

X x
)

 The first piece of the last equation is

E(

y X
|

)

=

=

1
n

1
n

n

∑

i

=

1

E(

y X x
i
i

=

|

)

n

∑

i

=

1

E(

b

0

+

b
1

x
i

+

e
i

)

n

∑

i

=

1

x
i

=

b

0

+

b
1

=

b

0

+

b
1

1
n
x

 The second piece of that equation is

ˆE(
b
1

|

X x
)

b=
1

x

.

 Thus,

ˆ
b

E(

0

|

X

) E(
=

y X
|

) E(
−

ˆ
b
1

|

X x
)

=

b

0

+

b
1

x

−

b
1

x

=

b

0

 To derive (2.10) let’s consider

Var(

ˆ
b

0

|

X

) Var(

=

y

−

ˆ
b
1

x X
|

)

=

Var(

y X
|

)

+

2

x

Var(

ˆ
b
1

|

X

y
) 2 Cov( ,
−

x

ˆ
b
1

|

X

)

 The first term is given by

Var(

y X
|

) Var(

=

1
n

n

∑

i

=

1

y X x
i
i

=

|

)

=

2

n
s
2
n

=

2

s
n

.

36

 From (2.7),

 Finally,

y
Cov( ,

ˆ
b
1

|

X

) Cov

=

⎛
⎜
⎝

1
n

 So,

2  Simple Linear Regression

ˆVar(
b
1

|

)X

=

2

s
SXX

n

n

∑ ∑
y
,
i

i

=

1

i

=

1

c y
i
i

⎞
⎟
⎠

=

1
n

n

∑

i

=

1

c
i

Cov(

y y
,
i
i

)

=

2

s
n

n

∑

i

=

1

c
i

=

0

ˆVar(
b

0

|

X

)

=

s

2

1
⎛
+⎜
n
⎝

2

x
SXX

⎞
⎟
⎠

 Result (2.11) follows from the fact that under assumption (4),  Y   i    |   X  (and hence   ¯y  )
are normally distributed as is    1

ˆ | Xb

  .

  2.7.3  Confidence Intervals for the Population Regression Line

 Recall that the population regression line at  X  =  x * is given by

E(

Y X x

=

|

*)

=

b

0

+

b
1

x

*

Y X x
 An estimator the population regression line at  X  =  x * (i.e.,
is the value of the estimated regression equation at  X  =  x *, namely,

E(

=

|

*)

=

b

0

+

b
1

x

*

  )

ˆ*
y

=

ˆ
b

0

ˆ
b
1

+

x

*

 Under the assumptions stated previously, we shall derive (2.12), (2.13) and (2.14).
First,  notice  that  (2.12)  follows  from  the  following  earlier  established  results
ˆE(
*)
b
   and
b
0
1
 Next, consider (2.13)

ˆE(
b
1

X x
=

X x
=

*)

=

b

=

  .

|

|

0

Var

*)

|

=

ˆ(
y X x
ˆ
b
1

+

(

0

Var

x X x

=

|

*)

ˆ
b
ˆ
b

=

=

 Now,

Var

(

|

X x
=

*)

+

0

2

x

*

Var

ˆ
b
1

(

|

X x
=

x
*) 2 * Cov(

+

ˆ
ˆ
,
b b
1
0

|

X x
=

*)

Cov(

ˆ
ˆ
,
b b
0
1

|

X x
=

*) Cov(

=

y

=

y
Cov( ,

−
ˆ
b
1

ˆ
b
1

x

,

ˆ
b
1

|

X x
=

*)

−

x

Cov(

ˆ
ˆ
,
b b
1
1

)

*)

X x
|
=
ˆ
b
1

)

0
= −

x

Var(

=

2

x
s
−
SXX

2.7  Derivations of Results

37

 So that,

Var

ˆ(
y X x

=

|

*)

2

=

s

⎛
⎜
⎝

1
n

+

2

x
SXX

⎞
⎟
⎠

2

x

*

+

2

s
SXX

−

2

2 *

x x
s
SXX

2

=

s

1
⎛
+⎜
n
⎝

x
( *

x
−
SXX

2

)

⎞
⎟
⎠

 Result (2.14) follows from the fact that under assumption (4),    0
distributed as is        1

ˆ | Xb

.

ˆ | Xb

   is normally

  2.7.4  Prediction Intervals for the Actual Value of  Y

 We base our prediction of  Y  when  X  =  x * (that is of  Y *) on

ˆ*
y

=

ˆ
b

0

ˆ
b
1

+

x

*

 The error in our prediction is

Y

*

−

ˆ
y
*

=

b

0

+

b
1

x

*

+

e

*

−

ˆ
y
* E(
=

Y X x

=

|

*)

−

ˆ
y

*

+

e

*

 that is, the deviation between   E(
(which represents the deviation of  Y * from   E(

Y X x=

*)

|

Y X x=

|

*)

  ).

   and   ŷ*   plus the random fluctuation   e*

 Under  the  assumptions  stated  previously,  we  shall  derive  (2.15),  (2.16)  and

(2.17). First, we consider (2.15)

Y
E( *

−

ˆ
y
*) E(
=

Y y X x
|

=

−

ˆ

*)

E(

Y X x

=

|

*) E(
−

ˆ
b

0

ˆ
b
1

+

x X x
*
)

=

|

0

=

=

 In  considering  (2.16),  notice  that    ŷ    is  independent  of   Y *,  a  future  value  of   Y .

Thus,

Var

Y
( *

−

ˆ
y
*) Var(

=

Y y X x
|

ˆ

−
|

*)

=
*) Var(

+

=

Var(

Y X x

=

ˆ
y X x

=

|

*) 2Cov( ,

Y y X x
|

*)

−

=

ˆ

2

=

s

+

s

2

=

s

⎡
1
⎢
⎣

2

1
n

⎡
⎢
⎣
1
+ +
n

2

)

+

x
( *

x
−
SXX

⎤
⎥
⎦

−

0

2

)

x
( *

x
−
SXX

⎤
⎥
⎦

 Finally, (2.17) follows since both   ŷ   and  Y * are normally distributed.

38

  2.8  Exercises

2  Simple Linear Regression

    1.      The  web  site  www.playbill.com  provides  weekly  reports  on  the  box  office
ticket sales for plays on Broadway in New York. We shall consider the data
for the week October 11–17, 2004 (referred to below as the current week).
The data are in the form of the gross box office results for the current week
and  the  gross  box  office  results  for  the  previous  week  (i.e.,  October  3–10,
2004). The data, plotted in Figure  2.6 , are available on the book web site in
the file playbill.csv.

+     where   Y  is the gross box
 Fit  the  following  model  to  the  data:
Y
=
office results for the current week (in $) and  x  is the gross box office results for the
previous week (in $). Complete the following tasks:

b
1

b

+

x

e

0

   (a)     Find a 95% confidence interval for the slope of the regression model,   b1  . Is

1 a plausible value for   b1  ? Give a reason to support your answer.

   (b)     Test  the  null  hypothesis     0

H b =
:

0

10000

    against  a  two-sided  alternative.

Interpret your result.

   (c)     Use the fitted regression model to estimate the gross box office results for
the current week (in $) for a production with $400,000 in gross box office
the  previous week. Find a 95% prediction interval for the gross box office

k
e
e
W

t
n
e
r
r
u
C
s
t
l

u
s
e
R
e
c
i
f
f

O
x
o
B
s
s
o
r
G

1000000

800000

600000

400000

200000

200000

400000

600000

800000 1000000 1200000

Gross Box Office Results Previous Week

  Figure 2.6

  Scatter plot of gross box office results from Broadway

2.8  Exercises

39

results for the current week (in $) for a production with $400,000 in gross
box office the previous week. Is $450,000 a feasible value for the gross box
office results in the current week, for a production with $400,000 in gross
box office the previous week? Give a reason to support your answer.

   (d)     Some promoters of Broadway plays use the prediction rule that next week’s
gross box office results will be equal to this week’s gross box office results.
Comment on the appropriateness of this rule.

   2.     A story by James R. Hagerty entitled  With Buyers Sidelined, Home Prices Slide
published in the Thursday October 25, 2007 edition of the  Wall Street Journal
contained data on so-called fundamental housing indicators in major real estate
markets across the US. The author argues that…  prices are generally falling and
overdue loan payments are piling up . Thus, we shall consider data presented in
the article on

    Y  =  Percentage change in average price from July 2006 to July 2007 (based on

the S&P/Case-Shiller national housing index); and

   x  =  Percentage  of  mortgage  loans  30  days  or  more  overdue  in  latest  quarter

(based on data from Equifax and Moody’s).

  The data are available on the book web site in the file indicators.txt. Fit the
x
Y
following model to the data:
b
1

+   . Complete the following tasks:

=

b

+

e

0

(a)      Find a 95% confidence interval for the slope of the regression model,   b1  . On
the basis of this confidence interval decide whether there is evidence of a
significant negative linear association.

(b)    Use  the  fitted  regression  model  to  estimate   E ( Y   |  X =4).  Find  a  95%  confi-
dence interval for  E ( Y   |  X =4). Is 0% a feasible value for  E ( Y   |  X =4)? Give a
reason to support your answer.

   3.     The  manager  of  the  purchasing  department  of  a  large  company  would  like  to
develop  a  regression  model  to  predict  the  average  amount  of  time  it  takes  to
process a given number of invoices. Over a 30-day period, data are collected on
the number of invoices processed and the total time taken (in hours). The data
are available on the book web site in the file invoices.txt. The following model
Y
+    where  Y  is the processing time and  x  is the
was fit to the data:
number  of  invoices.  A  plot  of  the  data  and  the  fitted  model  can  be  found  in
Figure  2.7 . Utilizing the output from the fit of this model provided below, com-
plete the following tasks.

b
1

b

=

+

x

e

0

   (a)     Find a 95% confidence interval for the start-up time, i.e.,   b0  .
   (b)     Suppose that a best practice benchmark for the average processing time for
an additional invoice is 0.01 hours (or 0.6 minutes). Test the null hypothesis
H b =
:

   against a two-sided alternative. Interpret your result.

0.01

0

1

   (c)     Find a point estimate and a 95% prediction interval for the time taken to proc-

ess 130 invoices.

40

2  Simple Linear Regression

i

e
m
T
g
n
s
s
e
c
o
r
P

i

4.0

3.5

3.0

2.5

2.0

1.5

1.0

50

100

150

200

250

Number of Invoices

  Figure 2.7

  Scatter plot of the invoice data

  Regression output from R for the invoice data

 Call:
 lm(formula = Time ~ Invoices)

 Coefficients:

 Estimate  Std. Error  t value
 5.248
13.797

 (Intercept) 0.6417099
 Invoices
0.0112916
 ---
  Residual standard error: 0.3298 on 28 degrees of freedom
 Multiple R-Squared: 0.8718, Adjusted R-squared: 0.8672
 F-statistic: 190.4 on 1 and 28 DF, p-value: 5.175e-14

0.1222707
0.0008184

Pr(>|t|)
1.41e-05  ***
5.17e-14  ***

 mean(Time)
 2.1
 median(Time)
 2
 mean(Invoices)
 130.0
 median(Invoices)
 127.5

   4.      Straight-line regression through the origin:

  In this question we shall make the following assumptions:

Y
   (1)      Y  is related to  x  by the simple linear regression model
i

x
b=
i

+

e i
(
i

=

n
1,2,..., )

  ,

i.e.,   E(

Y X x

=

|

)i

=

xb
i

2.8  Exercises

41

   (2)     The errors   e1, e2,..., en   are independent of each other
   (3)     The errors   e1, e2,..., en   have a common variance   s 2
   (4)     The errors are normally distributed with a mean of 0 and variance   s2   (espe-

cially when the sample size is small), i.e.,

e X N s
  (~
)

0,

|

2

 In addition, since the regression model is conditional on  X  we can assume that
the values of the predictor variable,  x   1  ,  x   2  , …,  x   n   are known fixed constants.
   (a)     Show that the least squares estimate of   b   is given by

n

x y
i
i

∑

i

1
=
n

ˆ
b

=

2
x
i

∑

i

=

1

   (b)     Under the above assumptions show that

(i)

ˆE(
b

|

X

)

=

b

(ii)

ˆVar(
b

|

X

)

=

2

s
n

(iii)

ˆ | ~  ( ,
X N
b
b

∑

1

i

=
s
n

2
x
i

)

2

2
x
i

∑

i

=

1

   5.     Two alternative straight line regression models have been proposed for  Y . In the
first model,  Y  is a linear function of  x   1  , while in the second model  Y  is a linear
function of  x   2  . The plot in the first column of Figure 2.8 is that of  Y  against  x   1  ,
while the plot in the second column below is that of  Y  against  x   2  . These plots
also  show  the  least  squares  regression  lines.  In  the  following  statements  RSS
stands  for  residual  sum  of  squares,  while  SSreg  stands  for  regression  sum  of
squares. Which one of the following statements is true?

   (a)     RSS for model 1 is greater than RSS for model 2, while SSreg for model 1

is greater than SSreg for model 2.

   (b)     RSS for model 1 is less than RSS for model 2, while SSreg for model 1 is

less than SSreg for model 2.

   (c)     RSS for model 1 is greater than RSS for model 2, while SSreg for model 1

is less than SSreg for model 2.

   (d)     RSS for model 1 is less than RSS for model 2, while SSreg for model 1 is

greater than SSreg for model 2.

 Give a detailed reason to support your choice.

42

2  Simple Linear Regression

Model 1

Model 2

10

8

6

4

2

0

y

10

8

6

4

2

0

y

0

2

4

6

8

10

0

2

4

6

8

10

x1

x2

  Figure 2.8

  Scatter plots and least squares lines

   6.     In this problem we will show that   SST=SSreg+RSS   . To do this we will show

 that

n

∑

i

=

1

(

y
i

−

ˆ
y
i

) (

ˆ
y
i

−

y

)

=

0.

   (a)     Show that
(

y
i

−

ˆ
y
i

)

=

(

y
i

−

y

)

−

Ÿ
b

1(

x
i

−

x

)

  .

   (b)     Show that

ˆ(
y
i

−

y

)

=

ˆ
b
1

(

x
i

−

x

)

  .

ˆ
b =
   (c)     Utilizing the fact that    1

SXY
SXX

  , show that

n

∑

i

=

1

(

y
i

−

ˆ
y
i

) (

ˆ
y
i

−

y

)

=

0.

   7.     A statistics professor has been involved in a collaborative research project with
two entomologists. The statistics part of the project involves fitting regression
models to large data sets. Together they have written and submitted a manuscript
to  an  entomology  journal.  The  manuscript  contains  a  number  of  scatter  plots
with  each  showing  an  estimated  regression  line  (based  on  a  valid  model)  and

2.8  Exercises

43

associated  individual  95%  confidence  intervals  for  the  regression  function  at
each   x   value,  as  well  as  the  observed  data.  A  referee  has  asked  the  following
question:

 I don’t understand how 95% of the observations fall outside the 95% CI as depicted in the
figures.

 Briefly explain how it is entirely possible that 95% of the observations fall outside
the 95% CI as depicted in the figures.

   Chapter 3
  Diagnostics and Transformations for Simple
Linear Regression

 In Chapter 2 we studied the simple linear regression model. Throughout Chapter 2,
we assumed that the simple linear regression model was a valid model for the data,
that is, the conditional mean of  Y  given  X  is a linear function of  X  and the conditional
variance of  Y  given  X  is constant. In other words,

E(

Y X x

=

|

)

=

b

0

+

b
1

x

   and

Var(

Y X x

=

|

)

=

s

2

.

 In Section  3.1,  we start by examining the important issue of deciding whether
the  model  under  consideration  is  indeed  valid.  In  Section   3.2 ,  we  will  see  that
when we use a regression model we implicitly make a series of assumptions. We
then consider a series of tools known as regression diagnostics to check each assump-
tion. Having used these tools to diagnose potential problems with the assumptions,
we look at how to first identify and then overcome or deal with a common problem,
namely, nonconstant error variance.

 The section on transformations shows how transformations can be used in some
situations to overcome problems with assumptions due to nonconstant variance or
nonlinearity, as well as enabling us to fit models for specific purposes, such as to
estimate percentage effects.

 A primary aim of this chapter is to understand what actually happens when the
standard  assumptions  associated  with  a  regression  model  are  violated,  and  what
should be done in response to each violation.

  3.1

 Valid and Invalid Regression Models:
Anscombe’s Four Data Sets

 Throughout this section we shall consider four data sets constructed by Anscombe
(1973).  This  example  illustrates  dramatically  the  point  that  looking  only  at  the
numerical regression output may lead to very misleading conclusions about the data,
and  lead  to  adopting  the  wrong  model.  The  data  are  given  in  the  table  below
(Table  3.1 ) and are plotted in Figure  3.1 . Notice that the  Y -values differ in each of
the four data sets, while the  X -values are the same for data sets 1, 2 and 3.

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_3, © Springer Science + Business Media LLC 2009

45

46

3  Diagnostics and Transformations for Simple Linear Regression

 Table 3.1
 x1
 Case

  Anscombe’s four data sets
 x3

 x4

 x2

 y1

 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
 11

 10
 8
 13
 9
 11
 14
 6
 4
 12
 7
 5

 10
 8
 13
 9
 11
 14
 6
 4
 12
 7
 5

 10
 8
 13
 9
 11
 14
 6
 4
 12
 7
 5

 8
 8
 8
 8
 8
 8
 8
 19
 8
 8
 8

 8.04
 6.95
 7.58
 8.81
 8.33
 9.96
 7.24
 4.26
 10.84
 4.82
 5.68

 y2

 9.14
 8.14
 8.74
 8.77
 9.26
 8.1
 6.13
 3.1
 9.13
 7.26
 4.74

 y3

 y4

 7.46
 6.77
 12.74
 7.11
 7.81
 8.84
 6.08
 5.39
 8.15
 6.42
 5.73

 6.58
 5.76
 7.71
 8.84
 8.47
 7.04
 5.25
 12.5
 5.56
 7.91
 6.89

Data Set 1

Data Set 2

14

12

10

8

6

4

2
y

5

10

15

20

5

10

15

20

x 1

Data Set 3

x 2

Data Set 4

4
y

14

12

10

8

6

4

14

12

10

8

6

4

14

12

10

8

6

4

1
y

3
y

5

10

15

20

5

10

15

20

x 3

x 4

  Figure 3.1

  Plots of Anscombe’s four data sets

 When a regression model is fitted to data sets 1, 2, 3 and 4, in each case the fitted

regression model is

  ˆ
y

=

3.0 0.5
+

x

  .

 The regression output for data sets 1 to 4 is given below. The regression output for the
four constructed data sets is identical (to two decimal places) in every respect.

3.1  Valid and Invalid Regression Models: Anscombe’s Four Data Sets

47

)

=

ar(

V Y X x
|

   Looking at Figure  3.1  it is obvious that a straight-line regression model is appropri-
x
ate only for Data Set 1, since it is the only data set for which
and
   seem reasonable assumptions. On the other hand, the data
in  Data  Set  2  seem  to  have  a  curved  rather  than  a  straight-line  relationship.  The
third data set has an extreme outlier that should be investigated. For the fourth data
set, the slope of the regression line is solely determined by a single point, namely,
the point with the largest  x -value.

Y X x

b
1

E(

s

b

=

+

=

=

)

|

0

2

 Regression output from R

 Coefficients:

 Estimate  Std. Error  t value
2.667
4.241

 (Intercept)
 x1
 ---
 Signif.  codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05‘.’ 0.1 ‘‘ 1

Pr(>|t|)
0.02573
0.00217

1.1247
0.1179

3.0001
0.5001

 Residual  standard  error:  1.237 on 9 degrees of freedom
 Multiple R-Squared: 0.6665,  Adjusted R-squared: 0.6295
 F-statistic: 17.99 on 1 and 9 DF,  p-value: 0.002170

 Coefficients:

 Estimate  Std. Error  t value
2.667
4.239

 (Intercept)
 x2
 ---
 Signif.  codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05‘.’ 0.1 ‘‘ 1

Pr(>|t|)
0.02576
0.00218

1.125
0.118

3.001
0.500

 Residual  standard  error:  1.237 on 9 degrees of freedom
   Multiple R-Squared: 0.6662,  Adjusted R-squared: 0.6292
 F-statistic: 17.97 on 1 and 9 DF,  p-value: 0.002179

 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)
0.02562
0.00218

   (Intercept)
 x3
 ---
 Signif.  codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05‘.’ 0.1 ‘‘ 1

1.1245
0.1179

3.0025
0.4997

2.670
4.239

   Residual standard error: 1.236 on 9 degrees of freedom
 Multiple R-Squared: 0.6663,  Adjusted R-squared: 0.6292
 F-statistic: 17.97 on 1 and 9 DF,  p-value: 0.002176

 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)
0.02559
0.00216

   (Intercept)
 x4
 ---
 Signif.  codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05‘.’ 0.1 ‘‘ 1

1.1239
0.1178

3.0017
0.4999

2.671
4.243

   Residual standard error: 1.236 on 9 degrees of freedom
 Multiple R-Squared: 0.6667,  Adjusted R-squared: 0.6297
 F-statistic: 18 on 1 and 9 DF,  p-value: 0.002165

*
**

*
**

*
**

*
**

48

3  Diagnostics and Transformations for Simple Linear Regression

 This example demonstrates that the numerical regression output should always
be supplemented by an analysis to ensure that an appropriate model has been fitted
to the data. In this case it is sufficient to look at the scatter plots in Figure  3.1  to
determine whether an appropriate model has been fit. However, when we consider
situations in which there is more than one predictor variable, we shall need some
additional tools in order to check the appropriateness of the fitted model.

  3.1.1  Residuals

 One tool we will use to validate a regression model is one or more plots of residuals
(or standardized residuals, which will be defined later in this chapter). These plots
will enable us to assess visually whether an appropriate model has been fit to the
data no matter how many predictor variables are used.

 Figure  3.2  provides plots of the residuals against  X  for each of Anscombe’s four
data sets. There is no discernible pattern in the plot of the residuals from data set 1
against  x1 . We shall see next that this indicates that an appropriate model has been

Data Set 1

Data Set 2

l

s
a
u
d
s
e
R

i

l

s
a
u
d
s
e
R

i

3

1

−1

−3

3

1

−1

−3

l

s
a
u
d
s
e
R

i

3

1

−1

−3

5

10

15

20

5

10

15

20

x1

Data Set 3

x2

Data Set 4

l

s
a
u
d
s
e
R

i

3

1

−1

−3

5

10

15

20

5

10

15

20

x3

x4

  Figure 3.2

  Residual plots for Anscombe’s data sets

3.1  Valid and Invalid Regression Models: Anscombe’s Four Data Sets

49

fit to the data. We shall see that a plot of residuals against  X  that produces a random
pattern  indicates  an  appropriate  model  has  been  fit  to  the  data.  Additionally,  we
shall see that a plot of residuals against  X  that produces a discernible pattern indi-
cates an incorrect model has been fit to the data.

 Recall  that  a  valid  simple  linear  regression  model  is  one  for  which
Y X x
)
=

Y X x

   and

Var(

s

=

+

=

b

=

x

)

.

|

|

2

E(

b
1

0

  3.1.2

 Using Plots of Residuals to Determine Whether
the Proposed Regression Model Is a Valid Model

  One way of checking whether a valid simple linear regression model has been fit is
to  plot  residuals  versus  x  and  look  for  patterns.  If  no  pattern  is  found  then  this
indicates that the model provides an adequate summary of the data, i.e., is a valid
model. If a pattern is found then the shape of the pattern provides information on
the function of x that is missing from the model .

 For example, suppose that the true model is a straight line

  Yi = E(Yi | Xi = xi) + ei = b0 + b1xi + ei

 where   ei =    random fluctuation (or error) in   Yi    and is such that   E(ei ) = 0   and that
we fit a straight line

    .

ˆ
b
+
 Then,  assuming  that  the  least  squares  estimates    bˆ
unknown population parameters  b0    and  b1   , we find that

ˆ
b

ˆi
y

x
i

=

1

0

1    are  close  to  the

0    and    bˆ

ˆ
e
i

=

y
i

−

ˆ
y
i

=

(

b

0

−

ˆ
b

)

+

(

b
1

0

−

)ˆ
b

1

x
i

+

e
i

≈   ,
e
i

 that  is,  the  residuals  should  resemble  random  errors.  If  the  residuals  vary  with   x
then this indicates that an incorrect model has been fit. For example, suppose that
the true model is a quadratic

y
i

=

b

0

+

b
1

x
i

+

b

2

2
x
i

+
e
i

 and that we fit a straight line

ˆi
y

=

ˆ
b

ˆ
b

x
i

1

+

0

 Then, somewhat simplistically assuming that the least squares estimates   bˆ
are close to the unknown population parameters   b0   and   b1  , we find that

0   and   bˆ
1

ˆ
e
i

=

y
i

−

ˆ
y
i

=

(

b

0

−

ˆ
b

)

+

(

b
1

0

−

ˆ
b

)

x
i

1

+

b

2

x

2
i

+

e
i

≈

b

2

2
x
i

e
+   ,
i

 that is, the residuals show a pattern which resembles a quadratic function of  x.  In
Chapter 6 we will study the properties of least squares residuals more carefully.

50

3  Diagnostics and Transformations for Simple Linear Regression

  3.1.3  Example of a Quadratic Model

 Suppose  that   Y   is  a  quadratic  function  of   X   without  any  random  error.  Then,  the
residuals from the straight-line fit of  Y  and  X  will have a quadratic pattern. Hence,
we can conclude that there is need for a quadratic term to be added to the original
straight-line  regression  model.  Anscombe’s  data  set  2  is  an  example  of  such  a
situation.  Figure   3.3   contains  scatter  plots  of  the  data  and  the  residuals  from  a
straight-line model for data set 2. As expected, a clear quadratic pattern is evident
in the residuals in Figure  3.3 .

  3.2

 Regression Diagnostics: Tools for Checking the Validity
of a Model

 We next look at tools (called regression diagnostics) which are used to check the
validity of all aspects of regression models. When fitting a regression model we will
discover that it is important to:

   1.     Determine whether the proposed regression model is a valid model (i.e., deter-
mine whether it provides an adequate fit to the data). The main tools we will

Data Set 2

2
y

10

9

8

7

6

5

4

3

l

s
a
u
d
s
e
R

i

2

1

0

-1

-2

4

6

8

10 12 14

4

6

8

10 12 14

x 2

x 2

  Figure 3.3

  Anscombe’s data set 2

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

51

use  to  validate  regression  assumptions  are  plots  of   standardized  residuals .  1
The  plots  enable  us  to  assess  visually  whether  the  assumptions  are  being
violated and point to what should be done to overcome these violations.

   2.     Determine which (if any) of the data points have  x -values that have an unusually
large effect on the estimated regression model (such points are called  leverage
points ).

   3.     Determine which (if any) of the data points are  outliers , that is, points which do
not follow the pattern set by the bulk of the data, when one takes into account
the given model.

   4.     If leverage points exist, determine whether each is a  bad leverage point . If a bad

leverage point exists we shall assess its influence on the fitted model.

   5.     Examine whether the assumption of constant variance of the errors is reasonable.

If not, we shall look at how to overcome this problem.

   6.     If the data are collected over time, examine whether the data are correlated over time.
   7.     If  the  sample  size  is  small  or  prediction  intervals  are  of  interest,  examine
whether the assumption that the errors are normally distributed is reasonable.

 We  begin  by  looking  at  the  second  item  of  the  above  list,  leverage  points,  as

these will be needed in the explanation of standardized residuals.

  3.2.1  Leverage Points

 Data  points  which  exercise  considerable  influence  on  the  fitted  model  are  called
 leverage  points .  To  make  things  as  simple  as  possible,  we  shall  begin  somewhat
unrealistically, by describing leverage points as either “good” or “bad.”

  McCulloch’s example of a “good” and a “bad” leverage point

 Robert  McCulloch  from  the  University  of  Chicago  has  produced  a  web-based
applet  2    to illustrate leverage points. The applet randomly generates 20 points from
a known straight-line regression model. It produces a plot like that shown in Figure  3.4 .
One of the 20 points has an  x -value which makes it distant from the other points
on the  x -axis. We shall see that this point, which is marked on the plot, is a  good
leverage  point .  The  applet  marks  on  the  plot  the  true  population  regression  line
(namely,   b0 + b1x  ) and the least squares regression line (namely,
ˆy

 Next we use the applet to drag one of the points away from the true population
regression  line.  In  particular,  we  focus  on  the  point  with  the  largest   x -value.
Dragging this point vertically down (so that its  x -value stays the same) produces the
results shown in Figure  3.5 . Notice how in the least squares regression has changed

  ).

ˆ
b

ˆ
b

+

=

x

0

1

  1  Standardized residuals will be defined later in this section.
  2    http://faculty.chicagogsb.edu/robert.mcculloch/research/teachingApplets/Leverage/index.html
(Accessed 11/25/2007)

52

3  Diagnostics and Transformations for Simple Linear Regression

  Figure 3.4

  A plot showing a good leverage point

  Figure 3.5

  A plot showing a bad leverage point

dramatically in response to changing the  Y -value of just a single point. The least
squares regression line has been levered down by single point. Hence we call this
point a  leverage point . It is a  bad leverage point  since its  Y -value does not follow
the pattern set by the other 19 points.

 In summary, a  leverage point  is a point whose  x -value is distant from the other
 x -values. A point is a  bad leverage point  if its  Y -value does not follow the pattern
set  by  the  other  data  points.  In  other  words,   a  bad  leverage  point  is  a  leverage
point which is also an outlier .

 Returning to Figure  3.4 , the point marked on the plot is said to be a  good lever-
age point  since its  Y -value closely follows the upward trend pattern set by the other
19 points. In other words,  a good leverage point is a leverage point which is NOT
also an outlier.

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

53

 Next  we  investigate  what  happens  when  we  change  the   Y -value  of  a  point  in
Figure  3.4  which has a central  x -value. We use the applet to drag one of these points
away from the true population regression line. In particular, we focus on the point
with the 11th largest  x -value. Dragging this point vertically up (so that its  x -value
stays  the  same)  produces  the  results  shown  in  Figure   3.6 .  Notice  how  in  the
least  squares  regression  has  changed  relatively  little  in  response  to  changing  the
 Y -value of centrally located  x . This point is said to be an  outlier that is not a lever-
age point .

  Huber’s example of a “good” and a “bad” leverage point

 This example is adapted from Huber (1981, pp. 153–155). The data in this example
were constructed to further illustrate so-called “good” and “bad” leverage points.
The data given in Table  3.2  can be found on the book web site in the file huber.txt.

 Notice that the values of  x  in Table  3.2  are the same for both data sets. Notice
that the values of  Y  are the same for both data sets except when  x  = 10. We shall
see that  x  = 10 is a  leverage point  in both data sets in the sense that  this value of x
is a long way away from the other values of x  and  the value of Y at this point has a
very large effect on the least squares regression line . The data in Table 3.2 are

  Figure 3.6

  A plot of  Y  against  x  showing an outlier that is not a leverage point

 Table 3.2
data sets
  x

 – 4
 –3
 –2
 –1
 0
 10

  Huber’s so-called bad and good leverage point

 YBad

 2.48
 0.73
 –0.04
 –1.44
 –1.32
 0.00

 x

 –4
 –3
 –2
 –1
 0
 10

 YGood

 2.48
 0.73
 –0.04
–1.44
 –1.32
 –11.40

54

3  Diagnostics and Transformations for Simple Linear Regression

plotted below in Figure 3.7. Regression output from R for the straight-line fits to
the two data sets is given below.

  Regression output from R

 Call:
 lm(formula = YBad ~ x)

 Residuals:

 1
 2.0858

2
0.4173

5
-0.2713  -1.5898  -1.3883

4

3

6
0.7463

 Coefficients:

 (Intercept)
 x

Estimate
 0.06833
-0.08146

Std. Error  t value
 0.108
-0.599

0.63279
0.13595

Pr(>|t|)
0.919
0.581

 Residual standard error: 1.55 on 4 degrees of freedom
 Multiple R-Squared: 0.08237,  Adjusted R-squared: -0.147
 F-statistic: 0.3591 on 1 and 4 DF,  p-value: 0.5813

 Call:
 lm(formula = YGood ~ x)

 Residuals:

6
 0.47813  -0.31349  -0.12510  -0.56672  0.51167  0.01551

 1

4

5

2

3

 Coefficients:

Estimate
 (Intercept)  -1.83167
-0.95838
 x

Std. Error
0.19640
0.04219

t value
-9.326
-22.714

Pr(>|t|)
0.000736  ***
2.23e-05  ***

     Residual standard error: 0.4811 on 4 degrees of freedom
 Multiple R-Squared: 0.9923,  Adjusted R-squared: 0.9904
 F-statistic: 515.9 on 1 and 4 DF,  p-value: 2.225e-05

 It  is  clear  from  Figure   3.7   that   x   =  10  is  very  distant  from  the  rest  of  the   x ’s,
which range in value from –4 to 0. Next, recall that the only difference between
the data in the two plots in Figure  3.7  is the value of  Y  when  x  = 10. When  x  = 10,
YGood = –11.40, and YBad = 0.00. Comparing the plots in Figure  3.7  allows us to
ascertain the effects of changing a single  Y  value when  x  = 10. This change in  Y  has
produced dramatic changes in the equation of the least squares line. For example
looking  at  the  regression  output  from  R  above,  we  see  that  the  slope  of  the
regression for YGood is –0.958 while the slope of the regression line for YBad
is –0.081. In addition, this change in a single  Y  value has had a dramatic effect on
the value of  R  2  (0.992 versus 0.082).

 Our aim is to arrive at a numerical rule that will identify  x   i   as a leverage point

(i.e., a point of high leverage). This rule will be based on:

  (cid:129)
 (cid:129)

 The distance  x   i   is away from the bulk of the  x ’s
 The extent to which the fitted regression line is attracted by the given point

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

55

  Plots of

  Figure 3.7
YGood and YBad
against  x  with the fitted
regression lines

0

d
a
B
Y

−5

−10

d
o
o
G
Y

0

−5

−10

−4

0

8

4

x

−4

0

8

4

x

 The second bullet point above deals with the extent to which   yˆ
i   (the predicted value
of  Y  at   x = xi  ) depends on   yi   (the actual value of  Y  at   x = xi  ). Recall from (2.3) and
(2.5) that

 where

ˆ
b

0

y
= −

ˆ
b

1

and

ˆ
b

x

=

1

ˆi
y

=

ˆ
b

ˆ
b

x
i

1

+

0

c y
j

j

c
 where

=

j

n

∑

j

=

1

x

x

−
j
SXX

So that,

    .

ˆ
y
i

y
= −
y
= +
n

ˆ
b
1
ˆ
b

1

x
+
(
x
i

ˆ
b

−
n

1
x

x
i
)
x
(

1
n

∑ ∑
y
+

j

j

=

1

j

=

1

=

=

=

 where

(
x
i

−

⎡
1
+⎢
n
⎢
⎣

h y
ij

j

n

∑

j

=

1

n

∑

j

=

1

x

−
j
SXX
)
(
SXX

x

x

j

)

y

j

(
x
i

−

x

)

−

x

)

y

j

⎤
⎥
⎥
⎦

(
x
i

−

h
ij

=

⎡
1
+⎢
n
⎢
⎣

x

x

)(
SXX

−

x

)

j

⎤
⎥
⎥
⎦

56

3  Diagnostics and Transformations for Simple Linear Regression

 Notice that

n

n

∑ ∑
h
=
ij

j

=

1

j

=

1

1
n

⎡
⎢
⎣

+

(

x
i

−

x x
)(

j

−

x

)

SXX

=

n
n

+

)

(

x
x
−
i
SXX

⎤
⎥
⎦

n

∑

j

=

1

 since

n

∑

j

=

1

x

j

⎡
⎣

x
⎤−
⎦

=

0.

 We can express the predicted value,   yˆ

i   as

  ˆi
y

=

h y
ii
i

 where

+ ∑
h y
ij

j

j

≠

i

h
ii

=

1
n

+

2

x

)

−

x
i

(
n

.

−∑
x
(

j

j

=

1

2

x

)

x

j

⎡
⎣

−

x

⎤
⎦

=

1

 (3.1)

 The term   hii   is commonly called the  leverage  of the  i th data point. Consider, for a
moment,  this  formula  for  leverage  (hii).  The  top  line  of  the  second  term  in  the
formula namely,   (xi – x¯)2  , measures the distance   xi   is away from the bulk of the  x ’s,
via the squared distance   xi   is away from the mean of the  x ’s. Secondly, notice that
  hii   shows how   yi   affects   yˆi  . For example, if   hii ≅ 1   then the other   hij   terms are close

n

to zero (since

=∑
h
ij

j

=

1

1

  ), and so

  yˆi = 1 × yi + other terms ≅ yi  .

 In this situation, the predicted value,   yˆi  , will be close to the actual value,   yi  , no
matter what values of the rest of the data take. Notice also that   hii   depends only on
the  x ’s. Thus a point of high leverage (or a leverage point) can be found by looking
at just the values of the  x ’s and not at the values of the  y ’s.

 It can be shown in a straightforward way that for simple linear regression

average(

iih

)

=

2
n

i
(

=

n
1,2,..., )

.

  Rule for identifying leverage points

 A popular rule, which we shall adopt, is to classify  x   i   as a point of high leverage
(i.e., a leverage point) in a simple linear regression model if

h
ii

> ×

2 average(

h
ii

)

2
= ×

2

n

4

=

.

n

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

57

  Huber’s example of a ‘good’ and a ‘bad’ leverage point

 Table  3.3  gives the leverage values for Huber’s two data sets. Note that the leverage
values are the same for both data sets (i.e., for  YGood  and  YBad ) since the  x -values
are the same for both data sets.

h
 Notice  that     66

  .  Thus,  the  last
point  x   6  = 10, is a point of high leverage (or a leverage point), while the other points
have leverage values much below the cutoff of 0.67.

2 average(

0.9359

> ×

0.67

h
ii

=

=

=

=

n

6

)

4

4

 Recall  that  a  point  is  a   bad  leverage  point   if  its   Y -value  does  not  follow  the
pattern set by the other data points. In other words,  a bad leverage point is a lever-
age point which is also an outlier . We shall see in the next section that we can
detect  whether  a  leverage  point  is  “bad”  based  on  the  value  of  its  standardized
residual.

  Strategies for dealing with “bad” leverage points

   1.      Remove invalid data points

 Question  the  validity  of  the  data  points  corresponding  to  bad  leverage  points,
that is:  Are these data points unusual or different in some way from the rest of
the  data?   If  so,  consider  removing  these  points  and  refitting  the  model  without
them. For example, later in this chapter we will model the price of Treasury bonds.
We  will  discover  three  leverage  points.  These  points  correspond  to  so-called
“flower” bonds, which have definite tax advantages compared to the other bonds.
Thus,  a  reasonable  strategy  is  to  remove  these  cases  from  the  data  and  refit  the
model without them.

   2.      Fit a different regression model

 Question the validity of the regression model that has been fitted, that is:  Has an
incorrect model been fitted to the data?  If so, consider trying a different model
by including extra predictor variables (e.g., polynomial terms) or by transforming
 Y  and/or  x  (which is considered later in this chapter). For example, in the case of
Huber’s bad leverage point, a quadratic model fits all the data very well. See Figure
 3.8  and the regression output from R for details.

 Table 3.3
  i

 1
 2
 3
 4
 5
 6

  Leverage values for Huber’s two data sets
 Leverage,  h   ii
 0.2897
 0.2359
 0.1974
 0.1744
 0.1667
 0.9359

  x   i
 –4
 –3
 –2
 –1
   0
 10

58

3  Diagnostics and Transformations for Simple Linear Regression

d
a
B
Y

3

2

1

0

−1

−2

−3

−4

−2

0

2

4

6

8

10

x

  Figure 3.8

  Plot of YBad versus  x  with a quadratic model fit added

  Regression output from R

 Call:
 lm(formula = YBad ~ x + I(x^2))

 Coefficients:

   Estimate  Std. Error  t value  Pr(>|t|)

 (Intercept)  -1.74057
-0.65945
 x
0.08349
 I(x^2)

0.29702
0.08627
0.01133

-5.860
-7.644
7.369

0.00991 **
0.00465 **
0.00517 **

 Residual  standard  error:  0.4096  on  3  degrees  of  freedom

    Multiple R-Squared: 0.952, Adjusted R-squared: 0.9199
 F-statistic: 29.72 on 2 and 3 DF, p-value: 0.01053

  “Good” leverage points

 Thus, far we have somewhat simplistically classified leverage points as either “bad”
or “good”. In practice, there is a large gray area between leverage points which do
not follow the pattern suggested by the rest of the data (i.e., “bad” leverage points)
and leverage points which closely follow the pattern suggested by the rest of the data
(i.e.,  “good”  leverage  points).  Also,  while  “good”  leverage  points  do  not  have  an
adverse effect on the estimated regression coefficients, they do decrease their esti-
mated standard errors as well as increase the value of  R  2 . Hence, it is important to
check extreme leverage points for validity, even when they are so-called “good.”

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

59

  3.2.2  Standardized Residuals

 Thus  far  we  have  discussed  the  use  of  residuals  to  detect  any  problems  with
the proposed model. However, as we shall next show, there is a complication
that we need to consider, namely, that residuals do not have the same variance.
In  fact,  we  shall  show  below  that  the   i th  least  squares  residual  has  variance
given by

ˆVar(
e
i

)

s=

2

[
1

−

h
ii

]

 where

h
ij

=

1
n

(

x
i

−
n

+

x x
)(

j

−

x

)

−∑
x
(

j

j

=

1

2

x

)

=

1
n

+

(

x
i

−

x x
)(

j

−

x

)

SXX

.

 Thus, if   hii ≅ 1   (i.e.,  h  is very close to 1) so that the  i th point is a leverage point, then
the  corresponding  residual,    eˆi  ,  has  small  variance  (since    1  –  hii ≅ 0  ).  This  seems
reasonable when one considers that if    hii ≅ 1   then    yˆi ≅ yi   so that   eˆi   will always be
small (and so it does not vary much).
ˆVar(
y
)i
 We  shall  also  show  that

  .  This  again  seems  reasonable
when  we  consider  the  fact  that  when    hii  ≅  1    then    yˆi  ≅  y  .  In  this  case,
ˆVar(
y
i

2
hs=
ii

Var(

 The  problem  of  the  residuals  having  different  variances  can  be  overcome  by
standardizing each residual by dividing it by an estimate of its standard deviation.
Thus, the  i th  standardized residual ,  r   i   is given by

h
ii

y
i

s

s

).

=

=

≅

)

2

2

r
i

=

s

ˆ
e
i
−

1

h
ii

n

j

1

=

2
j

ˆ
e

n

=

 where
s

1
− ∑   is the estimate of   s   obtained from the model.
2
 When points of  high leverage  exist, instead of looking at residual plots, it
is generally more informative to look at plots of  standardized residuals  since
plots  of  the  residuals  will  have  nonconstant  variance  even  if  the  errors  have
constant variance. (When points of high leverage do not exist, there is gener-
ally little difference in the patterns seen in plots of residuals when compared
with those in plots of standardized residuals.) The other advantage of  stand-
ardized residuals  is that they immediately tell us how many estimated  stand-
ard  deviations   any  point  is  away  from  the  fitted  regression  model.  For
example, suppose that the 6th point has a standardized residual of 4.3, then this

60

3  Diagnostics and Transformations for Simple Linear Regression

means that the 6th point is an estimated 4.3 standard deviations away from the
fitted  regression  line.  If  the  errors  are  normally  distributed,  then  observing  a
point  4.3  standard  deviations  away  from  the  fitted  regression  line  is  highly
unusual. Such a point would commonly be referred to as an outlier and as such
it  should  be  investigated.  We  shall  follow  the  common  practice  of  labelling
points  as   outliers   in  small-  to  moderate-size  data  sets  if  the  standardized
residual for the point falls outside the interval from  –2 to 2 . In very large data
sets,  we  shall  change  this  rule  to   –4  to  4 .  (Otherwise,  many  points  will  be
flagged as potential outliers.)  Identification and examination of any outliers is
a key part of regression analysis.

 In summary, an  outlier  is a point whose standardized residual falls outside the
interval from  –2 to 2.  Recall that a bad leverage point is a leverage point which
is also an outlier. Thus, a  bad leverage point  is a leverage point whose standar-
dized residual falls outside the interval from  –2 to 2.  On the other hand, a  good
leverage  point   is  a  leverage  point  whose  standardized  residual  falls  inside  the
interval from  –2 to 2 .

 There is a small amount of correlation present in standardized residuals, even if

the errors are independent. In fact it can be shown that

Cov(

ˆ
ˆ
e e
,
i

j

)

= −

h
ij

s

2

i
(

≠

j

)

Corr(

ˆ
ˆ
e e
,
i

j

)

=

−

(
1

−

h
ii

h
ij
)(
1

−

h

jj

)

i
(

≠

j

)

 However, the size of the  correlations inherent in the least squares residuals
are generally so small in situations in which correlated errors is an issue (e.g., data
collected over time) that they can be effectively ignored in practice.

  Derivation of the variance of the  i th residual and fitted value

 Recall from (3.1) that,

  ˆi
y

=

h y
ii
i

+ ∑
h y
ij

j

j

≠

i

 where

h
ij

=

1
n

(

x
i

−
n

+

x x
)(

j

−

x

)

−∑
x
(

j

j

=

1

2

x

)

=

1
n

+

(

x
i

−

x x
)(

j

−

x

)

SXX

.

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

61

 Thus,

 So that

  ˆ
e
i

=

y
i

−

ˆ
y
i

=

y
i

−

h y
ii
i

−

∑

j

≠

i

h y
ij

j

=

(1

−

h y
)
ii
i

−

∑
h y
ij

j

j

≠

i

ˆVar(
e
i

) Var (1

=

−

h y
)
ii
i

−

h y
ij

j

⎞
⎟
⎠

∑

j

≠

i

⎛
⎜
⎝
h
ii

=

(1

−

2

2

)

s

+

2

2
h
ij

s

∑

j

≠

i

2

=

s

⎡
1 2
−
⎢
⎣

h
ii

+

2
h
ii

+

∑

j

≠

i

2
h
ij

⎤
⎥
⎦

2

=

s

⎡
1 2
−
⎢
⎣

h
ii

+

2
h
ij

∑

j

⎤
⎥
⎦

 Next, notice that

n

n

2
h
ij

=

∑

j

=

1

∑

j

=

1

1
n

1
n
h
ii

=

=

=

 So that,

 Next,

⎡
1
+⎢
n
⎣

n

+

2

∑

j

=

1

(

x
i

−

x x
)(

j

−

x

SXX

1
n

×

(

x
i

−

x x
)(

j

SXX

)

⎤
⎥
⎦
−

2

x

)

+

n

∑

j

=

1

(

x
i

−

x

2
) (

2

x

)

−

j

x
2

SXX

0
+ +

2

)

(

x
x
−
i
SXX

ˆVar(
e
i

)

=

s

2

[
1 2
−

h
ii

+

h
ii

2

=

s

]

[
1

−

h
ii

]

ˆVar(
y
i

) Var

=

⎛
⎜
⎝

n

∑

j

=

1

h y
ij

j

⎞
⎟
⎠

=

∑

j

≠

i

2
h
ij

Var(

y

)

=

s

j

2

2
h
ij

=

s

2

h
ii

∑

j

  Example: US Treasury bond prices

 The  next  example  illustrates  that  a  relatively  small  number  of  outlying  points
can  have  a  relatively  large  effect  on  the  fitted  model.  We  shall  look  at  effect  of
removing  these  outliers  and  refitting  the  model,  producing  dramatically  different
point  estimates  and  confidence  intervals.  The  example  is  from  Siegel  (1997,
pp. 384–385). The data were originally published in the November 9, 1988 edition
of  The Wall Street Journal  (p. C19). According to Siegel:

62

3  Diagnostics and Transformations for Simple Linear Regression

 US Treasury bonds are among the least risky investments, in terms of the likelihood of your
receiving the promised payments. In addition to the primary market auctions by the Treasury,
there is an active secondary market in which all outstanding issues can be traded. You would
expect to see an increasing relationship between the coupon of the bond, which indicates the
size of its periodic payment (twice a year), and the current selling price. The … data set of
coupons and bid prices [are] for US Treasury bonds maturing between 1994 and 1998… The
bid prices are listed per ‘face value’ of $100 to be paid at maturity. Half of the coupon rate
is paid every six months. For example, the first one listed pays $3.50 (half of the 7% coupon
rate) every six months until maturity, at which time it pays an additional $100.

 The data are given in Table  3.4  and are plotted in Figure  3.9 . They can be found
on  the  book  web  site  in  the  file  bonds.txt.  We  wish  to  model  the  relationship

 Table 3.4
 Case

 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28
 29
 30
 31
 32
 33
 34
 35

  Regression diagnostics for the model in Figure  3.9
 Coupon rate

 Bid price

 Leverage

 7.000
 9.000
 7.000
 4.125
 13.125
 8.000
 8.750
 12.625
 9.500
 10.125
 11.625
 8.625
 3.000
 10.500
 11.250
 8.375
 10.375
 11.250
 12.625
 8.875
 10.500
 8.625
 9.500
 11.500
 8.875
 7.375
 7.250
 8.625
 8.500
 8.875
 8.125
 9.000
 9.250
 7.000
 3.500

 92.94
 101.44
 92.66
 94.50
 118.94
 96.75
 100.88
 117.25
 103.34
 106.25
 113.19
 99.44
 94.50
 108.31
 111.69
 98.09
 107.91
 111.97
 119.06
 100.38
 108.50
 99.25
 103.63
 114.03
 100.38
 92.06
 90.88
 98.41
 97.75
 99.88
 95.16
 100.66
 102.31
 88.00
 94.53

 0.049
 0.029
 0.049
 0.153
 0.124
 0.033
 0.029
 0.103
 0.030
 0.036
 0.068
 0.029
 0.218
 0.042
 0.058
 0.030
 0.040
 0.058
 0.103
 0.029
 0.042
 0.029
 0.030
 0.064
 0.029
 0.041
 0.044
 0.029
 0.030
 0.029
 0.032
 0.029
 0.029
 0.049
 0.187

 Residuals

 Std. Residuals

 –3.309
 –0.941
 –3.589
 7.066
 3.911
 –2.565
 –0.735
 3.754
 –0.575
 0.419
 2.760
 –1.792
 10.515
 1.329
 2.410
 –2.375
 1.313
 2.690
 5.564
 –1.618
 1.519
 –1.982
 –0.285
 3.983
 –1.618
 –5.339
 –6.136
 –2.822
 –3.098
 –2.118
 –4.539
 –1.721
 –0.838
 –8.249
 9.012

 –0.812
 –0.229
 –0.881
 1.838
 1.001
 –0.625
 –0.179
 0.949
 –0.140
 0.102
 0.685
 –0.435
 2.848
 0.325
 0.595
 –0.578
 0.321
 0.664
 1.407
 –0.393
 0.372
 –0.482
 –0.069
 0.986
 –0.393
 –1.306
 –1.503
 –0.686
 –0.753
 –0.515
 –1.105
 –0.418
 –0.204
 –2.025
 2.394

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

63

)
$
(

e
c
i
r

P
d
B

i

120

115

110

105

100

95

90

85

2

4

6

8

10

12

14

Coupon Rate (%)

  Figure 3.9

  A plot of the bonds data with the least squares line included

between bid price and coupon payment. We begin by considering the simple regres-
sion model

Y

=

b

0

+

b
1

x

e
+

 where  Y  = bid price and  x  = coupon rate. Regression output from R is given below.

  Regression output from R

 Call:
 lm(formula = BidPrice ~ CouponRate)
 Coefficients:

 Estimate
 (Intercept)  74.7866
 CouponRate
3.0661
 ---
 Residual standard error: 4.175 on 33 degrees of freedom
 Multiple R-Squared: 0.7516, Adjusted R-squared: 0.7441
 F-statistic: 99.87 on 1 and 33 DF, p-value: 1.645e-11

Std. Error
2.8267
0.3068

t value  Pr(>|t|)

<2e-16 ***
9.994  1.64e-11 ***

26.458

   2.5 % 97.5 %
 (Intercept)    69.036  80.537
2.442  3.690
 CouponRate

 Note that a 95% confidence interval for the slope,   b1  , is given by (2.44, 3.69).
Thus, for every 1 unit increase in  x  (i.e., every 1% increase in Coupon Rate) then
we can be 95% confident that the mean of  Y  (i.e., mean Bid Price) will increase by
between 2.44 and 3.69 units (i.e., $2.44 and $3.69).

64

3  Diagnostics and Transformations for Simple Linear Regression

 Looking at the fitted regression line with the data in Figure  3.9  we see that the
fitted model does not describe the data well. The three points on the left of the scat-
ter plot in Figure  3.9  obviously stand out. The least squares line is dragged away
from  the  bulk  of  the  points  towards  these  three  points.  The  data  would  be  better
described  by  a  line  that  has  a  steeper  slope  and  a  lower  intercept  than  the  least
squares  line.  In  other  words,  the  three  points  detected  earlier  distort  the  least
squares line. To better understand the effects of these three points we next examine
standardized residuals and leverage values.

 Table   3.4   also  lists  the  residuals,  the  standardized  residuals  and  the  leverage

values for each of the 35 observations.

 Recall that the rule for simple linear regression for classifying a point as a leverage
  .  For  the  bonds  data,  cases  4,  5,  13  and  35  have  leverage  values

  4
n>

point  is

iih
greater  than  0.11    (

4

4

n =

=

35

0.11

)

    and  thus  can  be  classified  as   leverage

points . Cases 4, 13 and 35 correspond to the three left-most points in Figure  3.9   ,
while case 5 corresponds to the right-most point in this figure.

 Recall that we classify points as  outliers  if their standardized residuals have
absolute value greater than 2. Cases 13, 34 and 35 have standardized residuals
with  absolute  value  greater  than  2,  while  case  4  has  a  standardized  residual
equal  to  1.8.  We  next  decide  whether  any  of  the  leverage  points  are  outliers,
that is, whether any so-called bad leverage points exist. Cases 13 and 35 (and
to a lesser extent case 4) are points of high leverage that are also outliers, i.e.,
 bad leverage points .

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

3

2

1

0

−1

−2

13

35

4

34

2

4

6

8

10

12

14

Coupon Rate (%)

  Figure 3.10

  Plot of standardized residuals with some case numbers displayed

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

65

 Next we look at a plot of  standardized residuals  against Coupon Rate,  x , in
order to assess the overall adequacy of the fitted model. Figure  3.10  provides
this  plot.  There  is  a  clear  non-random  pattern  evident  in  this  plot.  The  three
points marked in the top left hand corner of Figure  3.10  (i.e., cases 4, 13 and
35)  stand  out  from  the  other  points,  which  seem  to  follow  a  linear  pattern.
These three points are not well-fitted by the model, and should be investigated
to see if there was any reason why they do not follow the overall pattern set by
the rest of the data.

 In this example, further investigation uncovered the fact that cases 4, 13 and
35 correspond to “flower” bonds, which have definite tax advantages compared
to the other bonds. Given this information, it is clear that there will be different
relationship between coupon rate and bid price for “flower” bonds. It is evident
from  Figure   3.9   that  given  the  low  coupon  rate  the  bid  price  is  higher  for
“flower” bonds than regular bonds. Thus, a reasonable strategy is to remove the
cases corresponding to “flower” bonds from the data and only consider regular
bonds. In a later chapter we shall see that an alternative way to cope with points
such as “flower” bonds is to add one or more dummy variables to the regression
model.

 Figure  3.11  shows  a  scatter  plot  of  the  data  after  the  three  so-called  “flower
bonds” have been removed. Marked on Figure  3.11  is the least squares regression
line for the data without the “flower bonds.” For comparison purposes the horizontal
and vertical axes in Figure  3.11  are the same as those in Figure  3.9 .

Regular Bonds

)
$
(

e
c
i
r

P
d
B

i

120

115

110

105

100

95

90

85

2

4

6

8

10

12

14

Coupon Rate (%)

  Figure 3.11

  A plot of the bonds data with the “flower” bonds removed

66

3  Diagnostics and Transformations for Simple Linear Regression

  Regression output from R

 lm(formula = BidPrice ~ CouponRate,
 subset = (1:35)[-c(4, 13, 35)])

 Coefficients:

   Estimate
57.2932
4.8338

Std. Error
1.0358
0.1082

 (Intercept)
 CouponRate
 ---
 Signif. codes: 0  ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘‘ 1

t value
55.31
44.67

Pr(>|t|)

<2e-16 ***
<2e-16 ***

 Residual standard error: 1.024 on 30 degrees of freedom
 Multiple R-Squared: 0.9852, Adjusted R-squared: 0.9847
 F-statistic: 1996 on 1 and 30 DF, p-value: < 2.2e-16

 Based  on  all  the  data,  we  found  previously  that  the  regression  coefficient  of
CouponRate (i.e., the slope of the fitted line in Figure  3.11 ) is 3.07 while a 95%
confidence interval for this slope is (2.44, 3.69). When we remove the three “flower
bonds” (i.e., cases 4, 13 and 35), the regression coefficient of CouponRate is 4.83,
as given in the table above. You will notice that 4.83 is  NOT  even in the confidence
interval  based  on  all  35  cases.  We  see  that  a  naïve  analysis  of  this  data,  without
removing the three “flower bonds,” produces misleading results.

 Thus, this example has illustrated  the importance of only basing estimates and

confidence intervals on a valid model .

 To get the true picture of the relationship between bid price and coupon rate we
include only bonds that have the same tax status. Based on observation of Figure  3.11 ,
the regression model describes regular bonds relatively well. A one unit increase in
the coupon rate increases the bond price by an estimated amount of $4.83. However,
in Figure  3.12  there is evidence of nonconstant error variance, which is the issue we
take  up  in  the  next  section.  It  turns  out  that  nonconstant  error  variance  is  to  be
expected in this situation since the maturity date of the bonds varies over a 4-year
time period.

  3.2.3

 Recommendations for Handling Outliers
and Leverage Points

 We conclude this section with some general advice about how to cope with outliers
and leverage points.

  (cid:129)

 (cid:129)

 Points should not be routinely deleted from an analysis just because they do not
fit  the  model.  Outliers  and  bad  leverage  points  are  signals,  flagging  potential
problems with the model.
 Outliers often point out an important feature of the problem not considered before.
They may point to  an alternative model  in which the points are not an outlier. In
this  case  it  is  then  worth  considering  fitting  an  alternative  model.  We  shall  see

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

67

Regular Bonds

2

1

0

−1

−2

−3

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

4

6

8

10

12

14

Coupon Rate (%)

  Figure 3.12

  Plot of standardized residuals with the “flower” bonds removed

in Chapter 6 that including one or more dummy variables in the regression model
is one way of coping with outliers that point to an important feature.

  3.2.4  Assessing the Influence of Certain Cases

 One or more cases can strongly control or influence the least squares fit of a regres-
sion  model.  For  example,  in  the  previous  example  on  US  Treasury  bond  prices,
three cases dramatically influenced the least squares regression model. In this sec-
tion we look at summary statistics that measure the influence of a single case on the
least squares fit of a regression model.

 We shall use the notation where subscript ( i ) means that the  i th case has been
deleted from the fit. In other words, the fit is then based on the other  n  – 1 cases
(1, 2, …,  i -1,  i  + 1, …,  n ). Thus,   ŷj(i)   denotes the  j th fitted value based on the fit
obtained when the  i th case has been deleted from the fit.

 Cook  (1977)  proposed  a  widely  used  measure  of  the  influence  of  individual

cases which in the case of simple linear regression is given by:

n

∑

j

=

1

(

ˆ
y

j i
( )

−

ˆ
y

j

2

)

2

2

S

D
i

=

68

3  Diagnostics and Transformations for Simple Linear Regression

 where  S   2   is the variance of the residuals. It can be shown that

D
i

=

2

r
i
2 1

h
ii
h
−
ii

 where   r   i    is  the   i th  standardized  residual  and   h   ii    is  the   i th  leverage  value,  both  of
which were defined earlier. Thus, Cook’s distance can be obtained by multiplying
two quantities, namely, the square of the  i th standardized residual divided by two
and a monotonic function that increases as the  i th leverage value increases. The first
quantity  measures  the  extent  to  which  the   i th  case  is  outlying  while  the  second
quantity measures the leverage of the  i th case. Thus, a large value of  D   i   may be due
to a large value of  r   i  , a large value of  h   ii   or both.

 According to Weisberg (2005, p. 200), “… if the largest value of  D   i   is substan-
tially less than one, deletion of a case will not change the estimate … by much”.
Fox  (2002,  p.  198)  is  among  many  authors  who  recommend    4
2n −     as  “a  rough
cutoff for noteworthy values of  D   i  ” for simple linear regression. In practice, it is
important to look for gaps in the values of Cook’s distance and not just whether
values exceed the suggested cut-off.

  Example: US Treasury bond prices (cont.)

 Figure  3.13  contains a plot of Cook’s distance against Coupon Rate,  x . Marked on
the plot as a horizontal dashed line is the cutoff value of 4/(35–2) = 0.121. Cases 4,
35 and 13 exceed this value and as such are worthy of investigation. Note that the
Cook’s distance for case 13 exceeds 1, which means it deserves special attention.

e
c
n
a

i

t
s
D
s
k
o
o
C

’

13

35

4

1.0

0.8

0.6

0.4

0.2

0.0

4

6

8

10

12

Coupon Rate (%)

  Figure 3.13

  A plot of Cook’s distance against Coupon Rate

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

69

  3.2.5  Normality of the Errors

 The  assumption  of  normal  errors  is  needed  in   small  samples   for  the  validity  of
 t -distribution  based  hypothesis  tests  and  confidence  intervals  and  for   all  sample
sizes  for prediction intervals. This assumption is generally checked by looking at
the distribution of the residuals or standardized residuals.
 Recall that the  i th least squares residual is given by   ˆ
e
i

−   . We will show

ˆ
y
i

y
i

=

below that

  Derivation:

ˆ
e
i

=

e
i

n

− ∑   .
h e
ij

j

j

=

1

ˆ
e
i

=

=

y
i

y
i

−

ˆ
y
i

−

h y
ii
i

−

n

∑

j

≠

i

=

y
i

−

h y
ij

j

∑

j

=

1

h y
ij

j

n

=

b

0

+

b
1

x
i

e
+ −
i

∑

j

=

1

h
ij

(
b

0

+

b
1

x

j

+

e

j

)

n

=

b

0

+

b
1

x
i

e
+ −
i

b

0

−

b
1

x
i

−

n

h e
ij

j

∑

j

=

1

=

e
i

−

∑

j

=

1

h e
ij

j

n

=∑
h
ij

j

=

1

1

x

j
n

⎡
⎢
⎣

+

(

x
i

−

x x
)(

j
SXX

−

x x
)

j

x
= +

(

x

i

x SXX

)
−
SXX

⎤
⎥
⎦

=

x
i

  .

 since

 and

n

n

x h
j
ij

=

∑

j

=

1

∑

j

=

1

 Thus, the  i th least squares residual is equal to  e   i   minus a weighted sum of all of the
 e ’s.  In small to moderate samples , the second term in the last equation can dominate
the first and  the residuals can look like they come from a normal distribution even
if the errors do not . As  n  increases, the second term in the last equation has a much
smaller variance than that of the first term and as such the first term dominates the
last equation. This implies that for large samples the residuals can be used to assess
normality of the errors.

70

3  Diagnostics and Transformations for Simple Linear Regression

 In spite of what we have just discovered, a common way to assess normality
of the errors is to look at what is commonly referred to as a  normal probability
plot  or a  normal Q–Q plot  of the standardized residuals. A normal probability
plot of the standardized residuals is obtained by plotting the ordered standardized
residuals on the vertical axis against the expected order statistics from a standard
normal distribution on the horizontal axes. If the resulting plot produces points
“close” to a straight line then the data are said to be consistent with that from a
normal  distribution.  On  the  other  hand,  departures  from  linearity  provide  evi-
dence of non-normality.

  Example: Timing of production runs (cont.)

 Recall the example from Chapter 2 on the timing of production runs for which we
fit a straight-line regression model to run time from run size. Figure  3.14  provides
diagnostic plots produced by R when the command plot(m1) is used, where m1 is
the result of the “lm” command. The top right plot in Figure  3.14  is a normal Q–Q
plot. The bottom right plot of standardized residuals against leverage enables one
to readily identify any ‘bad’ leverage points. We shall see shortly that the bottom
left-hand  plot  provides  diagnostic  information  about  whether  the  variance  of  the
error term appears to be constant.

Residuals vs Fitted

Normal Q−Q

30

10

−10

−30

1.2

0.8

0.4

0.0

9

8

10

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

9

2

1

0

−1

10

8

180

200

220

240

−2

−1

0

1

2

Fitted Values

Scale−Location
9
10

8

Theoretical Quantiles

Residuals vs Leverage

9

0.5

Cook’s distance

10

17

0.5

2

1

0

−1

−2

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

l

s
a
u
d
s
e
R

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

180

200

220

240

0.00

0.05

0.10

0.15

Fitted Values

Leverage

  Figure 3.14

  A normal Q–Q plot and other plots

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

71

  3.2.6  Constant Variance

 A crucial assumption in any regression analysis is that the errors have constant vari-
ance. In this section we examine methods for checking whether the assumption of
 constant  variance   of  the  errors  is  reasonable.  When  the  variance  is  found  to  be
nonconstant, we can consider two methods for overcoming this, namely, transfor-
mations and weighted least squares.  Ignoring nonconstant variance when it exists
invalidates  all  inferential  tools  (i.e.,  p-values,  confidence  intervals,  prediction
intervals  etc. ).

  Example: Developing a bid on contract cleaning

 This example is adapted from Foster, Stine, and Waterman (1997, p. 9). According to
the authors:

 A building maintenance company is planning to submit a bid on a contract to clean corpo-
rate offices scattered throughout an office complex. The costs incurred by the maintenance
company are proportional to the number of cleaning crews needed for this task. Recent data
are available for the number of rooms that were cleaned by varying numbers of crews. For
a sample of 53 days, records were kept of the number of crews used and the number of
rooms that were cleaned by those crews.

 The data are given in Table  3.5  and are plotted in Figure  3.15 . They can be found

on the book web site in the file cleaning.txt.

 We want to develop a regression equation to model the relationship between the
number  of  rooms  cleaned  and  the  number  of  crews,  and  predict  the  number  of
rooms that can be cleaned by 4 crews and by 16 crews.

80

70

60

50

40

30

20

10

l

d
e
n
a
e
C
s
m
o
o
R

f

o

r
e
b
m
u
N

2

4

6

8

10

12

14

16

Number of Crews

  Figure 3.15

  Plot of the room cleaning data with the least squares line added

72

3  Diagnostics and Transformations for Simple Linear Regression

 Table 3.5

  Data on the cleaning of rooms

 Case

 Number
of crews

 Rooms
cleaned

 Case

 Number
of crews

 Rooms
cleaned

 1
 2
 3
 4
 5
 6
 7
 8
 9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27

 16
 10
 12
 16
 16
 4
 2
 4
 6
 2
 12
 8
 16
 2
 2
 2
 6
 10
 16
 16
 10
 6
 2
 6
 10
 12
 4

 51
 37
 37
 46
 45
 11
 6
 19
 29
 14
 47
 37
 60
 6
 11
 10
 19
 33
 46
 69
 41
 19
 6
 27
 35
 55
 15

 28
 29
 30
 31
 32
 33
 34
 35
 36
 37
 38
 39
 40
 41
 42
 43
 44
 45
 46
 47
 48
 49
 50
 51
 52
 53

 4
 16
 8
 10
 16
 6
 10
 12
 8
 10
 8
 8
 2
 16
 8
 8
 12
 10
 16
 2
 2
 8
 12
 4
 4
 12

 18
 72
 22
 55
 65
 26
 52
 55
 33
 38
 23
 38
 10
 65
 31
 33
 47
 42
 78
 6
 6
 40
 39
 9
 22
 41

 We begin by considering the regression model

Y

=

b

0

+

b
1

x

e
+

 where  Y  = number of rooms cleaned and  x  = number of cleaning crews. Regression
output from R is given below including 95% prediction intervals when  x  = 4 and  x
= 16, respectively.

  Regression output from R

 Call:
 lm(formula = Rooms ~ Crews)
 Coefficients:

 (Intercept)
 Crews
 ---

 Estimate
1.7847
3.7009

Std. Error  t value  Pr(>|t|)
0.399

2.0965
0.2118

0.851
17.472

<2e-16 ***

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

73

     Residual standard error: 7.336 on 51 degrees of freedom
 Multiple R-Squared: 0.8569, Adjusted R-squared: 0.854
 F-statistic: 305.3 on 1 and 51 DF, p-value: < 2.2e-16

fit
 1 16.58827
 2 60.99899

lwr
1.589410
45.810253

upr
31.58713
76.18773

 Figure  3.16  contains a plot of standardized residuals against the number of
cleaning  crews.       It  is  evident  from  Figure   3.16   that   the  variability  in  the
standardized  residuals  tends  to  increase   with  the  number  of  crews.  Thus,
the  assumption  that  the  variance  of  the  errors  is  constant  appears  to  be  vio-
lated in this case. If, as in Figure  3.16 , the distribution of standardized residu-
als appears to be funnel shaped, there is evidence that the error variance is not
constant.

 A number of authors (e.g., Cook and Weisberg, 1999b , p. 350) recommend that

an effective plot to diagnose nonconstant error variance is a plot of

  |Residuals|0.5 against x

 or

|   Standardized Residuals|0.5 against x

 The power 0.5 is used to reduce skewness in the absolute values.

 Figure  3.17  contains a plot of the square root of the absolute value of the stand-
ardized residuals against  x . The least squares regression line has been added to the

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

2

1

0

−1

−2

2

4

6

8

10

12

14

16

Number of Crews

  Figure 3.16

  Plot of standardized residuals against  x , number of cleaning crews

74

3  Diagnostics and Transformations for Simple Linear Regression

plot. There is clear evidence of an increasing trend in Figure  3.17 , which implies
that there is evidence that the variance of the errors increases with  x .

   Figure  3.18  contains four diagnostic plots produced by R. The bottom left-hand
plot is a plot of the square root of the absolute value of the standardized residuals
against fitted values. The line added to this plot is that obtained using a nonpara-
ˆy
    the
metric  smoothing  method.  Since  the  fitted  values  are  given  by
shape of this plot and that in Figure  3.17  are identical.

ˆ
b
1

ˆ
b

+

=

x

0

 In this example, the  x -variable (number of crews) is discrete with values 2, 4,
6,  8,  10,  12  and16.  Notice  also  that  there  are  multiple  measurements  of  the
 Y -variable (number of rooms cleaned) at each value of  x . In this special case, it
is possible to directly calculate the standard deviation of  Y  at each discrete value
of  x . Table  3.6  gives the value of each of these standard deviations along with
the  number  of  points  each  is  based  on.  It  is  evident  from  Table   3.6   that  the
 standard deviation of the number of rooms cleaned increases as  x , the number of
crews increases.

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

|
(
t
o
o
R
e
r
a
u
q
S

1.6

1.4

1.2

1.0

0.8

0.6

0.4

0.2

2

4

6

8

10

12

14

16

Number of Crews

  Figure 3.17

  A diagnostic plot aimed at detecting nonconstant error variance

 Table 3.6
for each value of x

  The standard deviation of  Y

 Crews

 2
 4
 6
 8
 10
 12
 16

 N

 9
 6
 5
 8
 8
 7
 10

 StDev(Rooms cleaned)

 3.00
 4.97
 4.69
 6.64
 7.93
 7.29
 12.00

3.2  Regression Diagnostics: Tools for Checking the Validity of a Model

75

Residuals vs Fitted

Normal Q−Q

20

10

0

−20

1.5

1.0

0.5

0.0

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

31

46

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

5

10

20

30

40

50

60

Fitted Values

Scale−Location

31

465

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

46

31

2

1

0

−2

5

−2

−1

0
Theoretical Quantiles

1

2

Residuals vs Leverage

46

Cook’s distance

54

2

1

0

−2

10

20

30

40

50

60

0.00

0.02

0.04

0.06

Fitted Values

Leverage

  Figure 3.18

  Diagnostic plots from R

12

10

8

6

4

l

)
d
e
n
a
e
C
s
m
o
o
R

(

n
o

i
t

i

a
v
e
D
d
r
a
d
n
a
S

t

2

4

6

8

10

12

14

16

Number of Crews

  Figure 3.19

  Plot of the standard deviation of  Y  against  x

76

3  Diagnostics and Transformations for Simple Linear Regression

 Figure  3.19  shows a plot of the standard deviation of the number of rooms cleaned
against  the  corresponding  value  of   x ,  number  of  crews.  There  is  striking  evidence
from Figure  3.19  that the standard deviation of  Y  increases as  x  increases.

 When the assumption that the variance of the errors is constant does not hold,
we  can  use  weighted  least  squares  to  account  for  the  changing  variance  (with
weights  equal  to  1/variance)  or  try  to  transform  the  data  so  that  the  nonconstant
variance problem disappears. We begin by considering the approach based on trans-
formations. We shall look at weighted least squares in Chapter 4.

  3.3  Transformations

 In this section we shall see how transformations can be used to

  (cid:129)
 (cid:129)
 (cid:129)

 Overcome problems due to nonconstant variance
 Estimate percentage effects
 Overcome problems due to nonlinearity

  3.3.1  Using Transformations to Stabilize Variance

 When nonconstant variance exists, it is often possible to transform one or both of the
regression variables to produce a model in which the error variance is constant.

  Example: Developing a bid on contract cleaning (cont.)

 You will recall that in this example we decided that the assumption that the variance
of the errors is constant does not hold. In particular, there is clear evidence that the
variance of the errors increases as the value of the predictor variable increases. This
is not surprising since the  Y -variable in this case (the number of rooms cleaned) is
in the form of counts.

 Count  data  are  often  modelled  using  the  Poisson  distribution.  Suppose  that   Y
follows a Poisson distribution with mean   λ  , then it is well-known that the variance
of  Y  is also equal to   λ  . In this case, the appropriate transformation of  Y  for stabiliz-
ing variance is square root.

 Justification:
 Consider the following Taylor series expansion

f Y
( )

=

f

(
Y
E( )

)

+

f

¢

(
Y
E( )

)(
Y

−

Y
E( )

)

...
+

 The well-known delta rule for calculating first-order variance terms is obtained by
considering just the terms given in this last expansion. In particular, taking the vari-
ance of each side of this equation gives

Var

(

f Y
( )

≃

)

f
¢⎡
⎣

2
)
(
E( ) Var
⎤
⎦

Y

( )
Y
.

3.3  Transformations

77

 Suppose that

f Y
( )

0.5

=

Y

Y
and Var( )

=

l

=

Y
E( )

   then

Var

0.5

(
Y

)
≃

⎡
⎣

(
Y
0.5 E( )

−

0.5

)

2

⎤
⎦

Var

( )
Y

=

−

0.5

0.5

l

⎡
⎣

2

⎤
⎦

l

=

constant

  .

 In this case, since the  data  on each axis are  in the form of counts , we shall try the
 square root transformation  of both the predictor variable and the response vari-
able.  When both Y and X are measured in the same units then it is often natural to
consider the same transformation for both X and Y.

 Recall that we want to develop a regression equation to model the relationship
between  the  number  of  rooms  cleaned  and  the  number  of  crews,  and  predict  the
number of rooms that can be cleaned by 4 crews and by 16 crews. Given below is
the R output from fitting the model

Y

=

b

0

+

b
1

x

e
+

  Y  = the  square root  of the number of rooms cleaned and
  x  = the  square root  of the number of cleaning crews

 Call:
 lm(formula = sqrtrooms ~ sqrtcrews)
 Coefficients:

0.2001
1.9016

 Estimate  Std. Error  t value
0.726
20.316

 (Intercept)
 sqrtcrews
 ---
 Residual standard error: 0.594 on 51 degrees of freedom
 Multiple R-Squared: 0.89, Adjusted R-squared: 0.8879
 F-statistic: 412.7 on 1 and 51 DF, p-value: < 2.2e-16

0.2758
0.0936

Pr(>|t|)
0.471

<2e-16 ***

 fit
 1 4.003286
 2 7.806449

lwr
2.789926
6.582320

upr
5.216646
9.030578

 Figure   3.20   contains  a  scatter  plot  of  the  square  root  of  the  number  of  rooms
cleaned against the square root of the number of crews and a plot of standardized
residuals against the square root of the number of cleaning crews.      In Figure  3.20
the variability in the standardized residuals remains relatively constant as the square
root of the number of crews increase. The standardized residuals do not have a fun-
nel shape, as they did for the untransformed data.

 Figure  3.21  gives the diagnostics plots produced by R, associated with the “lm”
command. The bottom left-hand plot further demonstrates the benefit of the square
root transformation in terms of stabilizing the error term. Thus, taking the square
root  of  both  the   x   and  the   y   variables  has  stabilized  the  variance  of  the  random
errors and hence produced a valid model.

 Finally, given that we have a valid regression model we are now in the position
to be able to predict the number of rooms that can be cleaned by 4 crews and 16
crews  (as  we  set  out  to  do).  These  results  based  on  the  regression  model  for  the

78

3  Diagnostics and Transformations for Simple Linear Regression

9

8

7

6

5

4

3

l

)
d
e
n
a
e
C
s
m
o
o
R

f
o

r
e
b
m
u
N

(

t
o
o
R
e
r
a
u
q
S

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

1.5

2.5

3.5

1.5

2.5

3.5

Square Root (Number of Crews)

Square Root (Number of Crews)

  Figure 3.20

  Plots of the transformed data and the resulting standardized residuals

Residuals vs Fitted

Normal Q−Q

1.0

0.0

−1.0

1.2

0.8

0.4

0.0

l

s
a
u
d
s
e
R

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

31

46

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

5

31

46

2

1

0

−2

5

3

4

5

6

7

8

−2

−1

0

1

2

Fitted Values

Theoretical Quantiles

Scale−Location
31

546

Residuals vs Leverage

46

Cook’s distance

4
5

2

1

0

−2

l

i

s
a
u
d
s
e
r
d
e
z
d
r
a
d
n
a
t
S

i

3

4

5

6

7

8

0.00

0.02

0.04

0.06

Fitted Values

Leverage

  Figure 3.21

  Diagnostic plots from R

3.3  Transformations

79

 Table 3.7

  Predictions and 95% prediction intervals for the number of rooms

  x , Crews

 Prediction

 Lower limit

 Upper limit

 4 (transformed data)
 4 (raw data)
 16 (transformed data)
 16 (raw data)

 16 =(4.003 2 )
 17
 61 =(7.806 2 )
 61

 8 =(2.790 2 )
 2
 43 =(6.582 2 )
 46

 27=(5.217 2 )
 32
 82 =(9.031 2 )
 76

square root transformed data are given in Table  3.7 . For comparison purposes the
results for the raw data are also presented. Notice that the prediction interval based
on the transformed data is narrower than that based on the untransformed data when
the number of crews is 4 and wider when the number of crews is 16. This is to be
expected in this situation since on the original scale the data have variance which
increases as the  x -variable increases meaning that realistic prediction intervals will
get wider as the  x -variable increases.  In summary, ignoring nonconstant variance
in the raw data from this example led to invalid prediction intervals.

  3.3.2  Using Logarithms to Estimate Percentage Effects

 In  this  section  we  illustrate  how  logarithms  can  be  used  to  estimate  percentage
effects. In particular, we shall consider the regression model

Y
log( )

=

b

0

+

b
1

x
log( )

e
+

 where here, and throughout the book, log refers to log to the base  e  or natural loga-
rithms. In this situation the slope

log(
log(

Y
1
x
1

)
)

b
1

=

=

=

≅

=

=

log(
log(

Δ
Δ
log(
log(

Y
log( )
x
log( )
Y
2
x

)
)

−
−
2
Y Y
2
1
x
x
1
1
1

2
Y Y
−
1
2
x
x
−
1
Y Y
2
1
x
x
1

2
100(
100(

2

)
)

Y
%Δ
x
%Δ

.

−
−

1)
1)

z
(using log(1+ )

≅

z
   and assuming

b
1

 is small)

80

3  Diagnostics and Transformations for Simple Linear Regression

 That is, the slope approximately equals the ratio of the percentage changes in  Y  and
 x . So that, for small   b1

%

Δ

Y

≃

b
1

x
%
× Δ

  .

 Thus for every 1% increase in  x , the model predicts a   b1  % increase in  Y  ( provided
  b1   is small).
  An example using logs to estimate the price elasticity of a product

 We want to understand the effect of price on sales and in particular to develop a
technique to estimate the percentage effect on sales of a 1% increase in price. This
effect is commonly referred to as price elasticity.

 This example from Carlson (1997) is based on a case involving real supermarket

sales data from Nielson SCANTRACK. According to Carlson (1997, p. 37):

 Susan Thurston, a product manager for Consolidated Foods Inc., is responsible for devel-
oping and evaluating promotional campaigns to increase sales for her canned food product.
She has just been appointed product manager for Brand 1, which competes in retail food
markets with three other major brands (Brands 2, 3 & 4). Brands 1 and 2 are the dominant
brands in the sense that they have a much larger share of the market than Brands 3 and 4.
The product is well established in a stable market and is generally viewed by consumers as
a  food  commodity.  Successful  product  performance  requires  strategies  that  encourage
customers to move to Susan’s brand from the various competing brands. She can encourage
this movement by various kinds of reduced price specials, in-store displays, and newspaper
advertising. Susan’s competitors have at their disposal the same strategic tools for increas-
ing their sales.

l

s
e
a
S

7000

6000

5000

4000

3000

2000

1000

0

0.60

0.65

0.70

0.75

0.80

0.85

Price

  Figure 3.22

  A scatter plot of sales against price

3.3  Transformations

81

 We shall start by examining the subset of the available information. The data
we first consider are weekly sales (in thousands of units) of Brand 1 at a major
US supermarket chain over a year along with the price each week. The data are
plotted in Figure  3.22  and can be found on the book web site in the file con-
food1.txt.

 Notice  that  the  distribution  of  each  variable  in  Figure   3.22   appears  to  be
skewed. A large outlier is clearly apparent in Figure  3.22 . In addition, it is clear
that a straight line does not adequately model the relationship between price and
sales.

 When studying the relationship between price and quantity in economics, it is
common practice to take the logarithms of both price and quantity since interest lie
in predicting the effect of a 1% increase in price on quantity sold. In this case the
model fitted is

log(

Q

)

=

b

0

+

b
1

log(

P

)

e
+

 where  P  = price and  Q  = quantity (i.e., sales in thousands of units).   The log-trans-
formed data are plotted in Figure  3.23 .

l

)
s
e
a
S
(
g
o

l

8

7

6

5

−0.5

−0.4

−0.3

−0.2

log(Price)

  Figure 3.23

  A scatter plot of log(sales) against log(price)

82

3  Diagnostics and Transformations for Simple Linear Regression

 The regression output from R is given below:

  Regression output from R

 Call:
 lm(formula = log(Sales) ~ log(Price))
 Coefficients:

0.1744
0.5098

4.8029
-5.1477

 Estimate  Std. Error  t value
27.53
-10.10

 (Intercept)
 log(Price)
 ---
 Residual standard error: 0.4013 on 50 degrees of freedom
 Multiple R-Squared: 0.671, Adjusted R-squared: 0.6644
 F-statistic: 102 on 1 and 50 DF, p-value: 1.159e-13
 The slope   bˆ

1   in the fitted model

Pr(>|t|)
  <2e-16 ***
1.16e-13 ***

log(

Q

)

=

ˆ
b

0

ˆ
b
1

+

log(

P

)

  approximately  equals the ratio of the percentage changes in  Q  &  P . In this equation,
the  slope    bˆ1    is  an  estimate  of  the  price  elasticity  of  demand  (i.e.,  the  percentage
change in quantity demanded in response to the percentage change in price). In this
case,   bˆ1   = –5.1 and so we estimate that for every 1% increase in price there will be
approximately  a  5.1%  reduction  in  demand.  Since  the  magnitude  of    bˆ    is  greater
than 1, the quantity demanded is said to be “elastic,” meaning that a price change
will cause an even larger change in quantity demanded. Now, revenue is price times
quantity. Price has risen, but proportionately, quantity has fallen more. Thus reve-
nue  has  fallen.  Increasing  the  price  of  the  food  product  will  result  in  a  revenue
decrease, since the revenue lost from the resulting decrease in quantity sold is more
than the revenue gained from the price increase.

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

3

2

1

0

−1

−2

−0.5

−0.4

−0.3

−0.2

log(Price)

  Figure 3.24

  A plot of standardized residuals against log(price)

3.3  Transformations

83

 As is our practice, we look at a plot of standardized residuals against the predic-
tor variable given below in Figure  3.24 . There is a nonrandom pattern (somewhat
similar to a roller coaster) evident in the plot of standardized residuals in Figure
 3.24 .  Thus,  we  should  not  be  satisfied  with  the  current  fitted  model.  When  one
considers that other variables (such as advertising) affect sales, it is clear that the
current model can be improved by the inclusion of these variables. (In Chapter 9,
we will look at models involving more than a single predictor variable to see if we
can arrive at a more satisfactory model.)

  3.3.3

 Using Transformations to Overcome Problems
due to Nonlinearity

 In this section we consider the following two general methods for transforming the
response variable  Y  and/or the predictor variable  X  to overcome problems due to
nonlinearity:

  (cid:129)
 (cid:129)

 Inverse response plots
 Box-Cox procedure

 There are three situations we need to consider (a) only the response variable needs
to be transformed; (b) only the predictor variable needs to be transformed; and (c)
both  the  response  and  predictor  variables  need  to  be  transformed.  We  begin  by
looking at the first situation.

  Transforming only the response variable Y using inverse regression

 Suppose that the true regression model between  Y  and  X  is given by

Y

=

g

(

b

0

+

b
1

x

e
)
+

 where   g   is  a  function  which  is  generally  unknown.  The  previous  model  can  be
turned into a simple linear regression model by transforming  Y  by  g  –1 , the inverse
of  g , since,

 For example suppose that

 then,

Next, suppose that

1
−
g Y
( )

=

b

0

+

b
1

x

+   .
e

Y

=

(

b

0

+

b
1

x

+

3

e

)

g Y
( )

=

Y

3

and so

1
−
g Y
( )

=

Y

1

3

   .

Y

=

exp(

b

+

b
1

x

0

e
)
+

84

 then,

3  Diagnostics and Transformations for Simple Linear Regression

g Y
( )

=

exp( ) and so

Y

1
−
g Y
( )

=

Y
log( )

 We next look at methods for estimating  g  –1 .

  Generated Example

 The 250 data points in this example were generated from the model

Y

=

(

b

0

+

b
1

x

+

3

e

)

3

1

=

 with  x  and  e  independently normally distributed. (This situation is very similar to
that in Cook and Weisberg (1999b , p. 318).) Our aim is to estimate the function
1( )
−
   that transforms  Y  so that the resulting model is a simple linear regres-
g Y
sion model. The generated data we shall consider can be found on the course web
site in the file responsetransformation.txt. A plot of  Y  and  x  is given in Figure  3.25 .
We begin by fitting the straight line regression model

Y

Y

=

b

0

+

b
1

x

e
+

(3.2)

 Figure  3.26  contains a scatter plot of the standardized residuals against  x  and a
plot of the square root of the absolute value of the standardized residuals against  x .
Both plots in Figure  3.26  produce striking patterns. The left-most plot shows that
the  standardized  residuals  are  strongly  related  to   x   in  a  nonlinear  manner.  This
indicates that model (3.2) is not an appropriate model for the data. The right-most
plot shows that the variance of the standardized residuals is not constant, instead, it
changes dramatically with  x . This indicates that the variance of the errors in model

y

80

60

40

20

0

1

2

3

4

x

  Figure 3.25

  A plot of  Y  vs  x  for the generated data (responsetransformation.txt)

3.3  Transformations

85

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

5

4

3

2

1

0

−1

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

|
(
t

o
o
R
e
r
a
u
q
S

2.0

1.5

1.0

0.5

0.0

1

2

3

4

1

2

3

4

x

x

  Figure 3.26

  Diagnostic plots for model (3.2)

(3.2)  is  not  constant.  In  view  of  both  of  these  findings,  it  is  natural  to  consider
transforming  Y  or  x  or both.

 We begin by looking at the shape of the distributions of  Y  and  x . Figure   3.27
contains box plots, normal Q–Q plots and Gaussian kernel density estimates (based
on  the  Sheather-Jones  bandwidth,  Sheather  and  Jones,  1991).  A  kernel  density
estimate can be thought as a smoothed histogram. For an introduction to and over-
view of kernel density estimation see Appendix A.1

 It is evident from Figure  3.27  that the distribution of  Y  is skewed. On the other
hand the distribution of  x  is consistent with a normal distribution. We shall consider
transforming  only   Y   since  transforming  a  symmetrically  distributed  variable  will
produce a variable with a skewed distribution.

  Inverse response plots

 Suppose that the true regression model between  Y  and  X  is given by

Y

=

g

(

b

0

+

b
1

x

e
)
+

 where  g  is an unknown function. Recall that the previous model can be turned into a
simple linear regression model by transforming  Y  by  g  ¯1 , the inverse of  g , since,

1
−
g Y
( )

=

b

0

+

b
1

x

e
+   .

 Thus, if we knew   b0 and b1  we could discover the shape of  g  –1  by plotting  Y  on the
horizontal axis and   b0 + b1x   on the vertical axis.

86

3  Diagnostics and Transformations for Simple Linear Regression

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.020

0.000

Y

80

40

0

x

3

1

80

Y

40

0

0

20

40
y

60

80

100

Normal Q−Q Plot

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.4

0.2

0.0

−3

−2

−1

0

1

2

3

0

1

2

3

4

5

Theoretical Quantiles

x

Normal Q−Q Plot

x

3

1

−3

−2

−1

0

1

2

3

Theoretical Quantiles

  Figure 3.27

  Box plots, normal Q–Q plots and kernel density estimates of  Y  and  x

 Based on the results of Li and Duan (1989), Cook and Weisberg (1994) showed
that if  x  has an elliptically symmetric distribution then  g  -1  can be estimated from the
scatter plot of  Y  (on the horizontal axis) and the fitted values from model (3.2), i.e.,
ˆy
    (on  the  vertical  axis).  Such  a  plot  is  commonly  referred  to  as  an
 inverse  response  plot   (since  the  usual  axis  for   Y   is  the  vertical  axis).  A  truly
remarkable aspect of the inverse response plot is that the fitted values used are from
a regression model, which is itself only valid when  g  is the identity function.

ˆ
b
1

ˆ
b

=

+

x

0

 It can be shown that the assumption that the univariate variable  x  has a normal
distribution is much stronger than the assumption that the distribution of  x  is ellipti-
cally symmetric.

  Generated example (cont.)

 Figure  3.28  contains an inverse response plot for the data in the generated example.
(Since  x  is normally distributed in this example, we should be able to estimate  g  –1
from the inverse response plot.) Marked on the plot are three so-called power curves

  ˆ
y

=

yl

for

l

=

0,0.33,1

 where   ŷ   are the fitted values from model (3.2) and, as we shall see below,   λ = 0
corresponds to natural logarithms.

3.3  Transformations

87

60

40

t
a
h
y

20

0

−20

0.33
0
1

0

20

60

80

40

y

  Figure 3.28

  Inverse response plot for the generated data set

 It is evident that among the three curves in Figure  3.28 , the power curve

     ˆy = (cid:2)bˆ

0+ bˆ

1x

(cid:3) = y0.33

 provides the closest fit to the data. This is to be expected since the data were gener-
ated from the model

 so that

Y

=

g

(

b

0

+

b
1

x

+

e

)

=

(

b

+

b
1

x

+

0

3

e

)

1
−
g Y
( )

=

Y

1

3

=

b

0

+

b
1

x

e
.
+

  Choosing a power transformation

 To estimate  g  –1  in general we consider the following family of  scaled power trans-
formations , defined for strictly positive  Y  by

Y

S

Y
( ,

l

)

λ

Y
(
⎧
= ⎨
⎩

1) /
−
Y

log( )      i f  =0

l

λ

if

λ ≠

0

 Scaled power transformations have the following three properties:

S YY
( ,

   1.
   2.     The logarithmic transformation is a member of this family, since

l    is a continuous function of   l

)

Y
lim ( ,
Y
S
l
→

0

l

)

=

lim
0
l
→

l

(
Y

−

)
1

l

=

Y
log( )

88

3  Diagnostics and Transformations for Simple Linear Regression

   3.     Scaled transformations preserve the direction of the association between  Y  and
l    and

 X  in the sense that if  Y  and  X  are positively (negatively) related than
 X  are positively (negatively) related for all values of   l

S YY
( ,

)

 Thus, to estimate  g  –1 , we consider fitting models of the form

ˆE(

y Y
|

=

y

)

=

a

+

a Y
1

S

0

y
( ,

l

)

(3.3)

 For a given value of   l  , model (3.3) is just a simple linear regression model with the
l    and the response variable given by   ŷ  . Weisberg
predictor variable given by
(2005, p. 151) recommends fitting (3.3) by least squares for a range of values of   l
and choosing the estimated optimal value of   l   (which we will denote by   lˆ   ) as the
value  of    l    that  minimizes  the  residual  sum  of  squares  (which  we  will  denote  by
RSS(l    )). Weisberg (2005, p. 151) claims that “selecting   l   to minimize RSS(  l  ) from

S yY
( ,

)

     {
l ∈ − −

1,

1

2

1

,

−

3

1

,0,

1

,

,1

2

}

3

 is  usually  adequate”.  We  shall  see  that  it  is  sometimes  beneficial  to  also  add  the
values    1
   to the set of   l   values under consideration.

 and

1

−

4

4

  Generated example (cont.)

 Figure  3.29  provides a plot of RSS(  l  ) for model (3.3) against   l   across the set of   l
values given above for the data in the generated example.

 It is evident from Figure  3.29  that the value of   l   that minimizes RSS(  l  ) in this
case falls somewhere between 0 and 0.5. Choosing a smaller range of   l   values, one

)
λ
(
S
S
R

40000

30000

20000

10000

0

−1.0

−0.5

0.0

λ

0.5

1.0

  Figure 3.29

  A plot of RSS(  l  ) against   l   for the generated data set

3.3  Transformations

89

can find that the optimal value of   l   is given by   lˆ = 0.332  . Thus, in this case, the
estimated power transformation

1
−
g Y
( )

=

Y

0.332

 is very close to the value used to generate the data

1
−
g Y
( )

=

Y

1

3

.

,

a a l     in  (3.3)  simultaneously  using  nonlinear
 Alternatively,  one  can  estimate     0
least  squares  and  hence  obtain  the  optimal  value  of    l  .  The  function  inverse.
response.plot  in  the  alr3  R-library  of  Weisberg  (2005)  performs  this  task.
Figure  3.28 , which provides an example of its use, shows three fits of model (3.3)
 corresponding to   l = 0,0.33,1   with   l = 0.33   providing the optimal fit.

1

,

 Later in this section, we shall apply the inverse response plot technique on a real
data set. In the meantime, we next consider an alternative method for transforming
 Y , namely, the Box-Cox procedure.

  Transforming only the response variable Y using the Box-Cox method

 In one of the most highly cited papers in statistics  3   , Box and Cox (1964) provide a
general method for transforming a strictly positive response variable  Y . We shall see
that  this  method  and  its  natural  extensions  can  also  be  used  to  transform  one  or
more strictly positive predictor variables. The Box-Cox procedure aims to find a
transformation that makes the transformed variable close to normally distributed.
Before we look into the details of this procedure, we shall look at the properties of
least squares and likelihood methods when both  X  and  Y  are normally distributed.

  Simple Linear Regression when both X and Y are normal

Y

X

and

m   ,  respectively,  variances    s Y

 Suppose  that   y   i    and   x   i    are  the  observed  values  of  normal  random  variables  with
means
2,  respectively,  and  correlation,
m
  rXY  . Then it can be shown (e.g., Casella and Berger, 2002, p. 550) that
s
s

2    and  s X

x N
 ~
i

s
s

2
r
XY

r
XY

r
XY

(
1

x
i

y
i

s

m

m

+

−

−

2
Y

,

.

X

|

Y

Y

Y

⎞
)
⎟
⎠

⎛
⎜
⎝

X

X

y
 This can be rewritten as
i

|

x N
~
i

+

b
1

0

x
i

b

0

=

m

Y

−

b m b
X
1

,

1

=

r
XY

2

,

s

=

(
b
s
s

Y

X

     where

,

s

)2
Y X
|
Var(

)

=

s

2
Y

(
1

−

2
r
XY

)
   .

 In other words, if  y   i   and  x   i   are the observed values of normal random variables

then the regression of  Y  on  X  is

  3  According to the Web of Science, the Box and Cox (1964) paper has been cited more than 3000
times as of January 25, 2007.

90

3  Diagnostics and Transformations for Simple Linear Regression

E(

Y X x
i

=

|

)

=

b

0

+

b
1

x
i

,

 a linear function of  x   i  . The Box-Cox transformation method, and its natural exten-
sions, tries to find a transformation that makes  Y  and  X  as close to normal distrib-
uted as possible, since then the regression of  Y  on  X  should be close to linear. The
Box-Cox method is based on likelihood approach and so we briefly review these
principles next.

  Maximum Likelihood applied to Simple Linear Regression when both X and Y
are normal

 As above, suppose that  y   i   and  x   i   are the observed values of normal random varia-
 . Thus, the conditional density of  y   i   given  x   i   is
bles. Then,
y
i
given by

x N
~
i

)2

(
b

b
1

x
i

s

+

,

|

0

f y
(
i

|

x
i

)

=

1

s

2
p

exp

⎛
−⎜
⎜
⎝

(
y
i

−

b

−
0
2
2
s

b
1

x
i

)2

⎞
.
⎟
⎟
⎠

 Assuming the  n  observations are independent then given  Y  the likelihood function
is the function of the unknown parameters   b0, b1, s 2   given by

n

n

L

(

,
b b s
1

,

0

2

|

Y

)

=

f y
(
i

|

x
i

)

=

∏

i

=

1

∏

i

=

1

1

s

2
p

exp

⎛
−⎜
⎜
⎝

(
y
i

−

b

−
0
2
2
s

b
1

x
i

2

)

⎞
⎟
⎟
⎠

=

⎛
⎜
⎝

1

s

2
p

n

⎞
⎟
⎠

exp

⎛
⎜
⎝

−

1
2
s

2

 The log-likelihood function is given by

n

∑

i

=

1

(
y
i

−

b

0

−

b
1

x

i

2

)

⎞
⎟
⎠

log

(
L

(

,
b b s
1

,

0

2

|

Y

)

)

= −

n
2

log(2 )
p

−

n
2

log(

s

2

)

−

n

1
∑
2
2
s =
i

1

(
y
i

−

b

0

−

b
1

x
i

2

)

(3.4)

 We see that   b0 and b1   are the only unknowns in the third term of this last equation.
Thus, the maximum likelihood estimates of   b0 and b1   can be obtained by minimizing
this third term, that is, by minimizing the residual sum of squares. Thus, the maxi-
mum likelihood estimates of   b0 and b1   are the same as the least squares estimates.
With   b0 and b1   equal to their least squares estimates, equation (3.4) becomes

log

(
L

(

ˆ
ˆ
,
b b s
1

,

0

2

|

Y

)

)

= −

n
2

log(2 )
p

−

n
2

log(

s

2

)

−

1
2
s

 RSS

2

 where in this context RSS is the residual sum of squares corresponding to the least
squares estimates, i.e.,

3.3  Transformations

91

RSS

=

n

∑

i

=

1

(
y
i

ˆ
b

0

−

ˆ
b
1

x
i

−

)2

 Differentiating the last log likelihood equation with respect to   s 2  and setting the
result to zero gives the maximum likelihood estimate of   s 2   as

ˆ
  s

2
MLE

=

1
n

.RSS

 Notice that this estimate differs slightly from our usual estimate of   s 2  , namely,

2

S

=

1

(

n

−

2)

RSS
.

  The Box-Cox method for transforming only the response variable

 Box and Cox (1964) considered the modified family of power transformations

Y

M

Y
( ,

l Y
=

)

S

Y
( ,

l

1
Y
) gm( )
×

−

l

⎧
= ⎨
⎩

l

l

−

1
Y
Y
(
gm( )
1) /
Y
Y
gm( ) log( )

−

l

0
  if
l
≠
 if  =0
l

 where

Y
gm( )

=

n

∏

i

=

1

1

n

Y
i

=

exp

⎛
⎜
⎝

1
n

n

∑

i

=

1

log(

Y
i

⎞
)
⎟
⎠

    is  the  geometric  mean  of   Y .  The

 Box-Cox method is based on the notion that for some value of   λ   the transformed
version of  Y , namely,
l    is normally distributed. As pointed out by Weisberg
l     by    gm( Y )1¯λ    ensures  that  the  units  of
(2005,  p.  153),  multiplication  of
l     are  the  same  for  all  values  of    λ  .  The  log-likelihood  function  for
M YY
( ,
)
2
,
,
b b s l Y

)
l    is given by (3.4) with  y   i   replaced by

l   , i. e., by

M YY
( ,

M YY
( ,

s YY
( ,

M Y
( ,

)

)

)

,

|

1

0

log

(

2
b b s l Y

,

,

,

|

0

1

Y
( ,

l

))

M

)

= −

n
2

log(2 )
p

−

log(

s

2

)

−

n

1
∑
2
2
s =
i

1

(
y

(

y
i

,

l

)

−

b

0

−

b
1

x
i

M

2

)

(
L
n
2

l    equals 1 for
 since it can be shown that the Jacobian of the transformation
each value of   λ  . For a given value of   λ   this last equation is the same as (3.4) with
 y   i    replaced  by
l   .  Thus,  for  a  fixed  value  of    λ  ,  the  maximum  likelihood
iyY
(
)
estimates of   b0, b1 and s2   are the same as above with  y   i   replaced by
l   . With   b0,
b1 and s2   replaced by these estimates the log-likelihood is given by

iyY
(

M YY
( ,

)

)

M

M

,

,

log

(
L
log(2 )
p

−

log(2 )
p

−

= −

= −

n
2
n
2

ˆ
ˆ
,
b b
0
1

(

2

,

ˆ
σ

,

|
l y

M

Y
( ,

n
2
n
2

log(RSS( )
l

n

)

−

log(RSS( )
l

n

)

−

l

))

)
1
2 RSS( )
l
n
2

RSS( )
l

n

92

3  Diagnostics and Transformations for Simple Linear Regression

 where   RSS (λ)   is the residual sum of squares with  y   i   replaced by

iyY
(

M

,

l    , i.e.,

)

RSS

( )
l

=

n

∑

i

=

1

(
Y

(

y
i

,

l

)

−

M

ˆ
b

0

ˆ
b
1

x
i

−

)2

 Since  only  the  second  term  in  the  last  equation  involves  the  data,  maximizing

(

log

(
L

ˆ
ˆ
2
b b s l Y

)
   with respect to   l   is equivalent to minimizing   RSS (λ)
with respect to   l  . Likelihood methods can be used to find a confidence interval for   l  .

Y
( ,

ˆ
1

))

l

M

,

,

,

|

0

  Generated example (cont.)

 Figure  3.30  provides plots of the log-likelihood against   l   for the data in the gener-
ated  example.  The  value  of    l    that  maximizes  the  log-likelihood  and  95%  confi-
dence limits for   l   are marked on each plot. The values on the horizontal axis of the
right hand plot are restricted so that it is easier to read of the value of   λ   that maxi-
mizes the log-likelihood, namely, 0.333.

 In summary, we have found that
 Inverse response/fitted value plot estimated   λ   to be   λˆ  = 0.332
 Box-Cox procedure estimated   λ   to be   λˆ = 0.333

  (cid:129)
 (cid:129)

 Given below is the output from R from fitting a linear model to ty where   ty = Y ⅓  .

95%

−665

−670

−675

d
o
o
h

d
o
o
h

i
l

i

e
k
L
−
g
o

−680

i
l

i

e
k
L
−
g
o

l

l

−685

−690

−695

−662.5

−663.0

−663.5

−664.0

95%

0.28

0.32

0.36

0.325

0.335

λ

λ

  Figure 3.30

  Log-likelihood for the Box-Cox transformation method

3.3  Transformations

  Regression output from R

 Call:
 lm(formula = ty ~ x)

             Coefficients:

93

Estimate  Std. Error
0.011152
0.004186

 (Intercept)  0.008947
 x
0.996451
 ---
     Residual standard  error:  0.05168  on  248  degrees  of  freedom
 Multiple  R-Squared:   0.9956,   Adjusted   R-squared: 0.9956
 F-statistic:  5.667e+04   on   1   and   248    DF,   p-value:   <   2.2e-16

0.802
238.058

t value  Pr(>|t|)
0.423

<2e-16 ***

 Finally,  Figure   3.31   contains  a  box  plot,  a  normal  Q–Q  plot  and  a  Gaussian
kernel density estimate of the transformed version of  Y , namely,   Y ⅓  . It is evident
that the  transformed data are consistent with that from a normal distribution. Also
given below is a scatter plot of   Y ⅓   against  x , which shows striking evidence of a
linear relationship.

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.4

0.2

0.0

)
3

1
(

Y

4

3

2

1

0

1

2
3
Y (1 3)

4

5

Normal Q−Q Plot

)
3

1
(

Y

)
3

1
(

Y

4

3

2

1

4

3

2

1

−3 −2 −1

0

1

2

3

1

2

3

4

Theoretical Quantiles

x

  Figure 3.31

  Box plots, normal Q–Q plots and kernel density estimates of  Y  1/3

94

3  Diagnostics and Transformations for Simple Linear Regression

  Transforming only the predictor variable X

 We again consider the following family of  scaled power transformations , this time
defined for strictly positive  X  by

Y

S

(

X

,

l

)

⎧
= ⎨
⎩

l

X
(
−
X
log(

l

1) /
  if
≠
)        if  =0

l
l

0

 Since we are transforming only X, we consider fitting models of the form

E Y X x
|

(

=

)

=

a

0

+

a Y
1

S

x
( ,

l

)

(3.5)

 For a given value of   λ  , model (3.5) is just a simple linear regression model with the
l    and the response variable given by   y  . As before
predictor variable given by
we fit (3.5) by least squares for a range of values of   l   and choosing the estimated
optimal value of   l   (which we will denote by   λ   ˆ ) as the value of l     that minimizes the
residual sum of squares (which we will denote by RSS(  l  )).

S xY
( ,

)

  Alternatively , we could use a version of the Box-Cox transformation method that
aims to make the distribution of the transformed version of  X  as normal as possible.
Note  that  there  is  no  regression  model  in  this  case  and  the  Box-Cox  method  is
modified to apply directly to  X .

  Important caution re-transformations

 Transformations do not perform well in every situation. In particular, it may not be
possible to develop a regression model for  Y  based on a single predictor  X , no mat-
ter what transformations are considered for  Y  and/or  X . This can occur for example
when important predictors which interact with other are not included in the model.
Secondly, the result of the Box-Cox transformation method may be a transformed
variable that is not very close to normally distributed.

  Transforming both the response and the predictor variables

 When both  X  and  Y  are highly skewed and transformations of both variables are
desirable  the  following  two  alternative  approaches  are  suggested  by  Cook  and
Weisberg (1999b , p. 329):

  Approach 1:

   1.     Transform  X  so that the distribution of the transformed version of  X ,

)
l
X
is as normal as possible. The univariate version of the Box-Cox transformation
procedure is one way to do this.

xY
( ,
S

   2.     Having transformed  X  to
=

l   , consider a simple linear regression model of
X
Y
)
b
the form
+   . Then use an inverse response plot to decide
0
on the transformation,  g  –1  for  Y .

xY
( ,
S
x
( ,
l

b Y
1

)
e

+

g

)

(

X

S

  Approach 2:

 Transform  X  and  Y  simultaneously to joint normality using the multivariate gener-
alization of the Box-Cox method. We discuss this approach next.

3.3  Transformations

95

  Multivariate generalization of the Box-Cox transformation method

 Velilla  (1993)  proposed  the  following  extension  of  the  Box-Cox  method  to
transforming  two  or  more  variables  towards  joint  normality.  Here  we  con-
sider  just  two  variables  ( X   and   Y ).  Define  the  modified  family  of  power
transformations

  (
Y

M

Y
( ,

),
l Y

Y

M

(

X

,

l

X

))

 where

Y

M

Y
( ,

l
Y

)

=

Y

Y
( ,

l
Y

S

1
Y
) gm( )
×

−

l
Y

⎧⎪
= ⎨
⎪⎩

l

−

1
Y
Y
(
gm( )
l
Y
Y
gm( ) log( )

1) /

−

l

Y

Y

Y

≠

  if
0
l
 if  = 0
l

Y

Y

  .

 Then we proceed by considering the log-likelihood function of   (
))
  and choosing   λY, λX   to maximize it. The solution turns out to be obtained by mini-
mizing the determinant of an estimated variance-covariance matrix (see Weisberg
2005, pp. 290–291 for details).

),
l Y

Y
( ,

Y

X

l

(

M

M

,

X

Y

  Example: Government salary data

 This example is taken from Weisberg (2005, pp. 163–164). The data concern the
maximum salary for 495 nonunionized job classes in a midwestern government unit
in 1986. The data can be found in the R-package, alr3 in the file salarygov.txt. At
present we shall focus on developing a regression model to predict

 MaxSalary = maximum salary (in $) for employees in this job class

 using just one predictor variable, namely,

 Score = score for job class based on difficulty, skill level, training requirements
and level of responsibility as determined by a consultant to the government unit.

0

b

+

=

b
1

Score

 We begin by considering a straight line model for the untransformed data, i.e.,
+   . Figure  3.32  contains a plot of the data, a plot of the
MaxSalary
standardized residuals against Score, and a plot of the square root of the absolute
value of the standardized residuals against Score. There is clear evidence of non-
linearity and nonconstant variance in these plots. Thus we consider transforming
one or both of the variables.

e

 We next look at the shape of the distributions of MaxSalary and Score. Figure
 3.33  contains box plots, normal Q–Q plots and Gaussian kernel density estimates
(based on the Sheather-Jones bandwidth).

 It is evident from Figure  3.33  that the distribution of both MaxSalary and Score

are skewed. We shall therefore consider transforming both variables.

  Approach 2: Transforming both variables simultaneously

 Given  below  is  the  output  from  R  using  the  bctrans  command  from  alr3
R-library.

96

3  Diagnostics and Transformations for Simple Linear Regression

l

y
r
a
a
S
x
a
M

6000

2000

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

6

4

2

−2

200 400 600 800

200 400 600 800

Score

Score

i

l

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

|
(
t
o
o
R
e
r
a
u
q
S

2.0

1.0

0.0

200 400 600 800

Score

  Figure 3.32

  Plots associated with a straight line model to the untransformed data

  Output from R

 box.cox Transformations to Multinormality

 MaxSalary
 Score

 Est.Power  Std.Err.  Wald(Power=0)  Wald(Power=1)
-14.2428
-5.8240

-1.2627
8.6405

-0.0973
0.5974

0.0770
0.0691

 LR test, all lambda equal 0 125.0901  2
 LR test, all lambda equal 1 211.0704  2

 LRT df p.value
0
0

 Using  the  Box-Cox  method  to  transform  the  two  variables  simultaneously
,Y
toward  bivariate  normality  results  in  values  of
l l     close  to  0  and  0.5,  respec-
tively.  Thus,  we  shall  consider  the  following  two  variables,  log(MaxSalary)  and
   Score   .

X

 Figure  3.34  shows a plot of log(MaxSalary) and    Score    with the least squares line
of best fit added. It is evident from this figure that the relationship between the trans-
formed variables is more linear than that between the untransformed variables.

 Figure   3.35   contains  box  plots,  normal  Q–Q  plots  and  Gaussian  kernel  density
estimates (based on the Sheather-Jones bandwidth) of the transformed data. It is evi-
dent that the log and square root transformations have dramatically reduced skewness
and produced variables which are more consistent with normally distributed data.

3.3  Transformations

97

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

3e−04

0e+00

l

y
r
a
a
S
x
a
M

8000

2000

e
r
o
c
S

800

200

l

y
r
a
a
S
x
a
M

8000

2000

2000 4000 6000 8000

Max Salary

Normal Q−Q Plot

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.0015

0.0000

−3

−2

−1

0

1

2

3

0 200 400 600 800

1200

Theoretical Quantiles

Score

Normal Q−Q Plot

e
r
o
c
S

800

200

−3

−2

−1

0

1

2

3

Theoretical Quantiles

  Figure 3.33

  Plots of the untransformed data

9.0

8.5

8.0

7.5

l

)
y
r
a
a
S
x
a
M
(
g
o

l

10

15

20

25

30

Score

  Figure 3.34

  Plot of log(MaxSalary) and      Score with the least squares line added

98

3  Diagnostics and Transformations for Simple Linear Regression

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.6

0.0

l

)
y
r
a
a
S
x
a
M
(
g
o

l

8.5

7.5

e
r
o
c
S

30

20

10

l

)
y
r
a
a
S
x
a
M
(
g
o

l

8.5

7.5

7.0

7.5

8.0

8.5

9.0

log(MaxSalary)

Normal Q−Q Plot

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.06

0.00

−3 −2 −1

0

1

2

3

5

10 15 20 25 30 35

Theoretical Quantiles

Score

Normal Q−Q Plot

e
r
o
c
S

30

20

10

−3 −2 −1

0

1

2

3

Theoretical Quantiles

  Figure 3.35

  Plots of the transformed data

 Next in Figure  3.36  we look at some diagnostic plots for the transformed data,
namely, a plot of the standardized residuals against    Score  , and a plot of the square
root  of  the  absolute  value  of  the  standardized  residuals  against     Score    for  the
regression model

log(MaxSalary)

=

b

0

+

b
1

Score

+
.e

  Approach 1: Transforming X first and then Y.

 Finally in this section we consider what we previously called approach (1) to trans-
forming both  X  and  Y . In this approach we begin by transforming  X . One way to do
this is to use a variant of the Box-Cox transformation method. Define the modified
family of power transformations

XXY
(

)
l

M

,

 where

Y

M

(

X

,

l

)

=

Y

S

X

(

X

,

l

X

) gm(
×

X

−

l

X

1
)

gm(
gm(

X
X

⎧
⎪
= ⎨
⎪⎩

X

−

l

1
)
) log(

X

l

−

)
(
X
if
1
X
)                  if

l

X

l
l

X

≠ 0
X
=  0.

3.3  Transformations

99

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3

2

1

0

−1

−2

−3

i

l

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

|
(
t
o
o
R
e
r
a
u
q
S

1.5

1.0

0.5

0.0

10

20

30

10

20

30

Score

Score

  Figure 3.36

  Diagnostic plots from the model based on the transformed data

 Then we proceed by considering the log-likelihood function of
l    and choos-
ing    lX    to  maximize  it.  Note  that  there  is  no  regression  model  here.  Thus,  this  is  an
unconditional  application  of  the  Box-Cox  procedure  in  that  there  is  no  regression
model. The object is to make the distribution of the variable  X  as normal as possible.

XXY
(

)

M

,

 Having transformed  X  to
xY l
( ,
s
x
g
Y
)
( ,
l
of the form
X
on the transformation,  g  –1  for Y.

b Y
1

+

=

b

(

S

0

  , consider a simple linear regression model
+   . Then use an inverse response plot to decide

)
X
e
)

  Example: Government salary data (cont.)

 We apply approach (1) to the data. Recall that  Y  = MaxSalary and  X  = Score. Given
below is the output from R using the bctrans command from alr3.

  Output from R

 box.cox Transformations to Multinormality

 Score

0.5481

 Est.Power  Std.Err.  Wald(Power=0)
5.728
 LRT df
 LR  test, all  lambda  equal  0  35.16895  1
 LR  test, all  lambda  equal  1  21.09339  1

0.0957

Wald(Power=1)
-4.7221
p.value
3.023047e-09
4.374339e-06

 Using the Box-Cox method to transform the  X  variable, Score toward normality
results in a value of   lX   close to 0.5. Thus, we shall again consider the following
 variable    Score   . Thus we shall consider a model of the form

100

3  Diagnostics and Transformations for Simple Linear Regression

MaxSalary

=

g

(

b

0

+

b
1

Score

e
)
+

(3.6)

 and seek to find  g  –1 , the inverse of  g , using an inverse response plot, since,

1
−

g

(MaxSalary)

=

b

0

+

b
1

Score

+   .
e

 Figure  3.37  contains an inverse response plot for the government salary data in
the generated example. (Since the predictor variable    Score    has been transformed
towards  normality,  we  should  be  able  to  estimate   g  –1   from  the  inverse  response
plot.) Marked on the plot are three so-called power curves

  ˆ MaxSalary for
y

=

l
Y

l
Y

= −

0.19,0,1

 where   l = 0   corresponds to natural logarithms. It is evident that among the three
curves, the power curve

ˆ
y

=

(
ˆ
b

0

ˆ
b
1

+

Score MaxSalary

=

)

−

0.19

 provides the closest fit to the data in Figure  3.37 .

 Rounding the estimated optimal value of   lY   to –0.25, we shall consider the fol-
lowing transformed  Y -variable,   MaxSalary¯0.25  . Figure  3.38  contains a box plot, a
normal  Q–Q  plot  and  Gaussian  kernel  density  estimate  (based  on  the  Sheather-
Jones  bandwidth)  for  the  variable    MaxSalary¯0.25  .  Comparing  Figure   3.39   with
Figure  3.35  it seems that in terms of consistency with normality there is little to
choose between the transformations   MaxSalary¯0.25   and log(MaxSalary).

5000

4000

3000

t

a
h
y

2000

1000

0

−0.19
0
1

2000

4000

6000

8000

MaxSalary

  Figure 3.37

  Inverse response plot based on model (3.6)

3.3  Transformations

101

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

25

15

5
0

0.17

0.14

0.11

5
2
.
0
−
y
r
a
a
S
x
a
M

l

0.10

0.14

0.18

MaxSalary−0.25

Normal Q−Q Plot

0.17

0.14

0.11

5
2

.

l

0
−
y
r
a
a
S
x
a
M

−3

−1 0

1

2

3

Theoretical Quantiles

  Figure 3.38

  Plots of the transformed MaxSalary variable

 Figure  3.39  shows a plot of   MaxSalary−0.25   and    Score   with the least squares
line of best fit added. It is evident from this figure that the relationship between
the  transformed  variables  is  more  linear  than  that  between  the  untransformed
variables.

 Figure   3.39   also  contains  some  diagnostic  plots  for  the  transformed  data,
namely,  a  plot  of  the  standardized  residuals  against     Score  ,  and  a  plot  of  the
square root of the absolute value of the standardized residuals against    Score
for the model

MaxSalary

−

0.25

=

b

0

+

b
1

Score

e
+   .

 It is evident from the last two plots in Figure  3.39  that the variance of the stand-
ardized residuals decreases slightly as    Score    increases. Furthermore, comparing

102

3  Diagnostics and Transformations for Simple Linear Regression

0.17

0.14

0.11

5
2
.
0
−
y
r
a
a
S
x
a
M

l

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3

1

−1

−3

10

15

20

25

30

10

15

20

25

30

Score

Score

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

|
(
t
o
o
R
e
r
a
u
q
S

1.5

1.0

0.5

0.0

10

15

20

25

30

Score

  Figure 3.39

  Plots associated with the model found using approach (1)

Figures   3.36   and   3.39 ,  the  model  associated  with  Figure   3.36   is  to  be  slightly
 preferred to the model associated with Figure  3.39  on the basis that the variance of
the standardized residuals appears to be more constant in Figure  3.36 . Thus, our
preferred regression model is

log(MaxSalary)

=

b

0

+

b
1

Score

e
+

 Cook and Weisberg (1999 , p. 329) point out that in many cases approaches (1) and
(2) will lead to “essentially the same answers”. In the government salary example
the  final  models  differed  in  terms  of  the  transformation  recommended  for  the
response  variable,  MaxSalary.  They  also  point  out  that  the  approach  based  on
inverse fitted value plots (i.e. approach (1)) is more robust, as the Box-Cox method
is  susceptible  to  outliers,  and  as  such  approach  (1)  may  give  reasonable  results
when approach (2) fails.

 Finally, Figure  3.40  contains a flow chart which summarizes the steps in devel-

oping a simple linear regression model.

3.4  Exercises

103

Draw a scatter plot of the data

Fit a model based on subject matter expertise
and/or observation of the scatter plot

Assess the adequacy of the model in particular:
   Is the functional form of the model correct?
   Do the errors have constant variance?

YES

NO

Do outliers and/or leverage
points exist?

Add new terms to the model
and/or transform x and/orY

NO

YES

Is the sample size large?

YES

NO

Are the outliers and leverage
points valid?

Based on Analysis of
Variance or a t-test
decide if there is a
significant association
betweenY and x?

YES

NO

Use the final
model to form
confidence
intervals

Stop!

YES

Are the errors
normally dis-
tributed?

YES

NO

Use the boot-
strap for in-
ference

NO

Remove them
and refit the
model

Consider
modifications
to the model

  Figure 3.40

  Flow chart for simple linear regression

  3.4  Exercises

    1.     The data file airfares.txt on the book web site gives the one-way airfare (in US dol-
lars) and distance (in miles) from city A to 17 other cities in the US. Interest centers
on modeling airfare as a function of distance. The first model fit to the data was

Fare

=

b

0

+

b
1

Distance

e
+

(3.7)

   (a)      Based  on  the  output  for  model  (3.7)  a  business  analyst  concluded  the

following:

 The regression coefficient of the predictor variable, Distance is highly statistically signifi-
cant and the model explains 99.4% of the variability in the Y-variable, Fare. Thus model
(1) is a highly effective model for both understanding the effects of Distance on Fare and
for predicting future values of Fare given the value of the predictor variable, Distance.

104

3  Diagnostics and Transformations for Simple Linear Regression

e
r
a
F

400

300

200

100

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3

2

1

0

−1

−2

500

1500

Distance

500

1500

Distance

  Figure 3.41

   Output from model (3.7)

 Provide a detailed critique of this conclusion.

   (b)      Does the ordinary straight line regression model (3.7) seem to fit the data well?

If not, carefully describe how the model can be improved.

 Given below and in Figure 3.41 is some output from fitting model (3.7).

  Output from R

 Call:
 lm(formula = Fare ~ Distance)

 Coefficients:

 Estimate
 (Intercept)  48.971770
 Distance
0.219687
 ---
 Signif. codes:  0‘***’0.001  ‘**’  0.01‘*’0.05  ‘.’  0.1 ‘‘1

Std. Error
4.405493
0.004421

t value
11.12
49.69

Pr(>|t|)
1.22e-08 ***
<2e-16 ***

 Residual standard error: 10.41 on 15 degrees of freedom
 Multiple R-Squared:0.994, Adjusted  R-squared: 0.9936
 F-statistic: 2469 on 1 and 15 DF, p-value: < 2.2e-16

   2.     Is the following statement true or false? If you believe that the statement is false,

provide a brief explanation.

 Suppose that a straight line regression model has been fit to bivariate data set of the form
( x  1 ,  y  1 ), ( x  2 ,  y  2 ),…, ( x  n ,  y  n ). Furthermore, suppose that the distribution of  X  appears to be
normal while the  Y  variable is highly skewed. A plot of standardized residuals from the

3.4  Exercises

105

least  squares  regression  line  produce  a  quadratic  pattern  with  increasing  variance  when
plotted against ( x  1 ,  x  2 ,…,  x  n ). In this case, one should consider adding a quadratic term in  X
Y
to the regression model and thus consider a model of the form

x

x

2

b

b

e
+   .

=

+

+

b
1

0

2

   3.     The price of advertising (and hence revenue from advertising) is different from
one  consumer  magazine  to  another.  Publishers  of  consumer  magazines  argue
that  magazines  that  reach  more  readers  create  more  value  for  the  advertiser.
Thus, circulation is an important factor that affects revenue from advertising. In
this  exercise,  we  are  going  to  investigate  the  effect  of  circulation  on  gross
advertising revenue. The data are for the top 70 US magazines ranked in terms
of total gross advertising revenue in 2006. In particular we will develop regres-
sion models to predict gross advertising revenue per advertising page in 2006
(in thousands of dollars) from circulation (in millions). The data were obtained
from   http://adage.com     and are given in the file AdRevenue.csv which is avail-
able on the book web site. Prepare your answers to parts A, B and C in the form
of a report.

  Part A

   (a)      Develop a simple linear regression model based on least squares that predicts
advertising  revenue  per  page  from  circulation  (i.e.,  feel  free  to  transform
either the predictor or the response variable or both variables). Ensure that
you provide justification for your choice of model.

   (b)      Find  a  95%  prediction  interval  for  the  advertising  revenue  per  page  for

magazines with the following circulations:
    (i)     0.5 million
   (ii)     20 million

   (c)     Describe any weaknesses in your model.

  Part B

   (a)      Develop a polynomial regression model based on least squares that directly
predicts the effect on advertising reve-nue per page of an increase in circula-
tion of 1 million people (i.e., do not transform either the predictor nor the
response  variable).  Ensure  that  you  provide  detailed  justification  for  your
choice of model. [Hint: Consider polynomial models of order up to 3.]
   (b)      Find a 95% prediction interval for the advertising page cost for magazines

with the following circulations:
 (i)     0.5 million
   (ii)     20 million

   (c)     Describe any weaknesses in your model.

  Part C

   (a)      Compare the model in Part A with that in Part B. Decide which provides a

better model. Give reasons to justify your choice.

   (b)      Compare the prediction intervals in Part A with those in Part B. In each case,
decide which interval you would recommend. Give reasons to justify each
choice.

106

3  Diagnostics and Transformations for Simple Linear Regression

   4.      Tryfos  (1998,  p.  57)  considers  a  real  example  involving  the  management  at  a
Canadian port on the Great Lakes who wish to estimate the relationship between
the volume of a ship’s cargo and the time required to load and unload this cargo. It
is envisaged that this relationship will be used for planning purposes as well as for
making comparisons with the productivity of other ports. Records of the tonnage
loaded and unloaded as well as the time spent in port by 31 liquid-carrying vessels
that used the port over the most recent summer are available. The data are available
on the book website in the file glakes.txt. The first model fit to the data was

Time

=

b

0

+

b
1

Tonnage

e
+

(3.8)

 On the following pages is some output from fitting model (3.8) as well as some
plots of Tonnage and Time (Figures 3.42 and 3.43).

   (a)      Does the straight line regression model (3.8) seem to fit the data well? If not,

list any weaknesses apparent in model (3.8).

   (b)      Suppose  that  model  (3.8)  was  used  to  calculate  a  prediction  interval  for
Time when Tonnage = 10,000. Would the interval be too short, too long or
about right (i.e., valid)? Give a reason to support your answer.

 The second model fitted to the data was

log(Time)

=

b

0

+

b
1

Tonnage

0.25

+

e

(3.9)

e
m
T

i

100

60

20

0

5000

10000 15000

Tonnage

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

1.4

1.0

0.6

0.2

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

|
(
t
o
o
R
e
r
a
u
q
S

Figure 3.42  Output from model (3.8)

2

1

0

−2

2

1

0

−2

0

5000

10000 15000

Tonnage

Normal Q−Q Plot

0

5000

10000 15000

−2

−1

0

1

2

Tonnage

Theoretical Quantiles

3.4  Exercises

107

Gaussian Kernel Density Estimate

0

50

100

150

Time

Normal Q−Q Plot

−2

−1

0

1

2

Theoretical Quantiles

y
t
i
s
n
e
D

0.020

0.000

e
m
T

i

80

20

e
g
a
n
n
o
T

10000

0

e
m
T

i

y
t
i
s
n
e
D

e
g
a
n
n
o
T

80

20

0.00020

0.00000

10000

0

Gaussian Kernel Density Estimate

0

5000 10000 15000

Tonnage

Normal Q−Q Plot

−2

−1

0

1

2

Theoretical Quantiles

  Figure 3.43

  Density estimates, box plots and Q–Q plots of Time and Tonnage

 Output from model (3.9) as well as some plots (Figures 3.44 and 3.45) appears on
the following pages.

   (a)      Is model (3.9) an improvement over model (3.8) in terms of predicting Time?

If so, please describe all the ways in which it is an improvement.

   (b)      List any weaknesses apparent in model (3.9).

Regression output from R for model (3.8)

 Call:
 lm(formula = Time ~ Tonnage)

 Coefficients:

 Estimate Std. Error t value  Pr(>|t|)

 (Intercept)  12.344707
 0.006518
 Tonnage
 ---
 Residual   standard    error:   10.7 on  29   degrees   of  freedom
 Multiple R-Squared: 0.8386, Adjusted R-squared: 0.833
 F-statistic: 150.7 on 1 and 29 DF, p-value: 5.218e-13

2.642633   4.671  6.32e-05 ***
0.000531  12.275  5.22e-13 ***

108

3  Diagnostics and Transformations for Simple Linear Regression

  Output from R

 box.cox Transformations to Multinormality

 Time
 Tonnage

 Est.Power
0.0228
0.2378

 LR test, all lambda equal
 LR test, all lambda equal

0.1930
0.1237

Std.Err.  Wald(Power=0)
0.1183
1.9231
 LRT
0   3.759605
1  45.315290

Wald(Power=1)
-5.0631
-6.1629
p.value
2 1.526202e-01
2 1.445140e-10

df

  Output from R for model (3.9)

 Call:
 lm(formula = log(Time) ~ I(Tonnage^0.25))

 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

1.18842
 (Intercept)
 I(Tonnage^0.25)  0.30910
 ---
 Signif.  codes:  0‘***’  0.001   ‘**’  0.01  ‘*’  0.05‘.’ 0.1‘‘1

0.19468
0.02728

6.105  1.20e-06 ***
11.332  3.60e-12 ***

 Residual standard error: 0.3034 on 29 degrees of freedom
 Multiple R-Squared: 0.8158, Adjusted R-squared: 0.8094
 F-statistic: 128.4 on 1 and 29 DF, p-value: 3.599e-12

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

1

0

−1

−2

4 5

6 7 8 9

11

7654

98

11

Tonnage0.25

Tonnage0.25

Normal Q−Q Plot

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1

0

−1

−2

7654

98

11

−2

−1

0

1

2

Tonnage0.25

Theoretical Quantiles

i

)
e
m
T
(
g
o

l

4.5

3.5

2.5

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

|
(
t
o
o
R
e
r
a
u
q
S

1.4

1.0

0.6

0.2

   Figure 3.44

  Output from model (3.9)

3.4  Exercises

109

y
t
i
s
n
e
D

0.4

0.2

0.0

i

)
e
m
T
(
g
o

l

4.0

2.5

5
2
.
0
e
g
a
n
n
o
T

11

8
6
4

Gaussian Kernel Density Estimate

i

)
e
m
T
(
g
o

l

4.0

2.5

2

3

4

5

6

log(Time)

Normal Q−Q Plot

Gaussian Kernel Density Estimate

y
t
i
s
n
e
D

0.10

0.00

−2

−1

0

1

2

2

4

6

8

10

12

Theoretical Quantiles

Tonnage0.25

Normal Q−Q Plot

5
2
.
0
e
g
a
n
n
o
T

11

8
6
4

−2

−1

0

1

2

Theoretical Quantiles

  Figure 3.45

  Density estimates, box plots and Q–Q plots of log(Time) and Tonnage 0.25

    5.      An analyst for the auto industry has asked for your help in modeling data on the
prices of new cars. Interest centers on modeling suggested retail price as a func-
tion of the cost to the dealer for 234 new cars. The data set, which is available
on the book website in the file cars04.csv, is a subset of the data from
         http://www.amstat.org/publications/jse/datasets/04cars.txt

 (Accessed March 12, 2007)
 The first model fit to the data was

Suggested Retail Price

=

b

0

+

b
1

Dealer Cost

e
+

(3.10)

 On the following pages is some output from fitting model (3.10) as well as some plots
(Figure 3.46).

   (a)      Based on the output for model (3.10) the analyst concluded the following:

 Since the model explains just more than 99.8% of the variability in Suggested Retail Price
and the coefficient of Dealer Cost has a t-value greater than 412, model (1) is a highly
effective model for producing prediction intervals for Suggested Retail Price.

 Provide a detailed critique of this conclusion.

110

3  Diagnostics and Transformations for Simple Linear Regression

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

80000

20000

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

4

2

0

−2

20000

60000

100000

20000

60000

100000

DealerCost

DealerCost

1.5

0.5

Normal Q−Q Plot

4

2

0

−2

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

20000

60000

100000

−3

−2

−1

0

1

2

3

DealerCost

Theoretical Quantiles

i

l

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

|
(
t
o
o
R
e
r
a
u
q
S

  Figure 3.46

  Output from model (3.10)

   (b)       Carefully describe all the shortcomings evident in model (3.10). For each short-

coming, describe the steps needed to overcome the shortcoming.
 The second model fitted to the data was

log(Suggested Retail Price)

=

b

0

+

b
1

log(Dealer Cost)

e
+

(3.11)

 Output from model (3.11) and plots (Figure 3.47) appear on the following pages.

   (c)      Is  model  (3.11)  an  improvement  over  model  (3.10)  in  terms  of  predicting
Suggested  Retail  Price?  If  so,  please  describe  all  the  ways  in  which  it  is  an
improvement.

   (d)     Interpret the estimated coefficient of log(Dealer Cost) in model (3.11).
   (e)     List any weaknesses apparent in model (3.11).

  Regression output from R for model (3.10)

 Call:
 lm(formula = SuggestedRetailPrice ~ DealerCost)

3.4  Exercises

 Coefficients:

111

 Estimate
 (Intercept)  -61.904248
 DealerCost
1.088841
 ---
 Signif.  codes:  0‘***’0.001  ‘**’  0.01  ‘*’  0.05  ‘.’  0.1‘‘ 1

Std. Error
81.801381
0.002638

t value
-0.757
412.768

Pr(>|t|)
0.45

<2e-16 ***

 Residual standard error: 587 on 232 degrees of freedom
 Multiple
 F-statistic:  1.704e+05  on  1  and  232   DF,   p-value:  <  2.2e-16

R-Squared:0.9986,  Adjusted  R-squared: 0.9986

  Output from R for model (3.11)

 Call:
 lm(formula = log(SuggestedRetailPrice) ~ log(DealerCost))

 Coefficients:

 Estimate  Std. Error  t value
-2.625
0.026459
387.942
0.002616

 (Intercept)
-0.069459
 log(DealerCost)  1.014836
 ---
 Signif.codes:0‘***’0.001 ‘**’0.01 ‘*’0.05‘.’ 0.1 ‘‘1

Pr(>|t|)
0.00924 **

<2e-16 ***

 Residual standard error: 0.01865 on 232 degrees of freedom
 Multiple R-Squared: 0.9985,
 F-statistic: 1.505e+05 on 1 and 232 DF, p-value: < 2.2e-16

Adjusted  R-squared: 0.9985

)
e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S
(
g
o

l

11.5

10.5

9.5

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

|
(
t
o
o
R
e
r
a
u
q
S

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2
1

−1

−3

9.5

10.5

11.5

9.5

10.5

11.5

log(DealerCost)

log(DealerCost)

Normal Q−Q Plot

1.5

1.0

0.5

0.0

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2
1

−1

−3

9.5

10.5

11.5

−3 −2 −1

0

1

2

3

log(DealerCost)

Theoretical Quantiles

  Figure 3.47

  Output from model (3.11)

112

3  Diagnostics and Transformations for Simple Linear Regression

   3.     A sample of  n  = 500 data points were generated from the following model

Y

=

g

(

b

0

+

b
1

x

+
e
)

=

=

=

b
1

2.5,

g
1, (.)

exp(.)

  , the errors  e  being normally distributed and
 where    0
b
the  distribution  of   x   highly  skewed.  Figure   3.48   contains  the  inverse  response
plot. It produces the estimate   lˆ = 0.61  . In this case, the correct transformation of
 Y   corresponds  to  taking    l  =  0    and  hence  using
e
+   .
Explain why the inverse response plot fails to produce an estimated value of   l
close to the correct value of   l   in this situation.

1
−
g Y
( )

Y
log( )

b
1

=

+

=

b

x

0

    7.     When  Y  has mean and variance both equal to   m   we showed earlier in this chapter
that the appropriate transformation of  Y  for stabilizing variance is the square root
transformation. Now, suppose that  Y  has mean equal to   m   and variance equal to
  m2   show that the appropriate transformation of  Y  for stabilizing variance is the
log transformation.

   8.     Chu (1996) discusses the development of a regression model to predict the price
of diamond rings from the size of their diamond stones (in terms of their weight
in carats). Data on both variables were obtained from a full page advertisement
placed in the  Straits Times  newspaper by a Singapore-based retailer of diamond
jewelry. Only rings made with 20 carat gold and mounted with a single diamond
stone were included in the data set. There were 48 such rings of varying designs.
(Information  on  the  designs  was  available  but  not  used  in  the  modeling.)

30

25

20

15

t

a
h
y

0.42
0
1

10

15

20

30

35

40

25

y

  Figure 3.48

  Inverse response plot

3.4  Exercises

113

The weights of the diamond stones ranged from 0.12 to 0.35 carats (a one carat
diamond stone weighs 0.2 gram) and were priced between $223 and $1086. The
data are available on the course web site in the file diamonds.txt.

  Part 1

   (a)      Develop a simple linear regression model based on least squares that directly
predicts Price from Size (that is, do not transform either the predictor nor the
response  variable).  Ensure  that  you  provide  justification  for  your  choice  of
model.

   (b)     Describe any weaknesses in your model.

  Part 2

   (a)      Develop a simple linear regression model that predicts Price from Size (i.e.,
feel free to transform either the predictor or the response variable or both
variables). Ensure that you provide detailed justification for your choice of
model.

   (b)      Describe any weaknesses in your model.

 Part 3

 Compare the model in Part A with that in Part B. Decide which provides a better
model. Give reasons to justify your choice.

   Chapter 4
  Weighted Least Squares

 In  Chapter  3,  we  saw  that  it  is  sometimes  possible  to  overcome  nonconstant  error
variance by transforming  Y  and/or  X . In this chapter we consider an alternative way of
coping with nonconstant error variance, namely weighted least squares (WLS).

  4.1

 Straight-Line Regression Based
on Weighted Least Squares

 Consider the straight linear regression model

Y
   =
i

b

0

+

b
1

x
i

+

e
i

 where  the   e   i    have  mean  0  but  variance    s 2  / wi  .  When   w   i    is  very  large  then  the
variance  of   e   i    is  close  to  0.  In  this  situation,  the  estimates  of  the  regression
parameters   b0 and b1   should be such that the fitted line at  x   i   should be very close to  y   i  .
On the other hand, when  w   i   is very small then the variance of  e   i   is very large. In this
situation,  the  estimates  of  the  regression  parameters    b0  and  b1    should  take  little
account of the values ( x   i  ,  y   i  ). In the extreme situation that  w   i   is 0 then the variance of
 e   i   is equal to infinity and the  i th case ( x   i  ,  y   i  ) should be ignored in fitting the line: this
is equivalent to deleting the  i th case ( x   i  ,  y   i  ) from the data and fitting the line based
on the other  n  – 1 cases.

 Thus, we need to take account of the weights  w   i   when estimating the regression
parameters   b0 and b1  . This is achieved by considering the following weighted version
of the residual sum of squares

n

n

WRSS

=

∑

i

=

1

w y
(
i
i

−

ˆ
y
Wi

)

∑2
=

i

=

1

w y
(
i
i

−

b
0

−

b x
i
1

2
) .

 WRSS is such that the larger the value of  w   i   the more the  i th case ( x   i  ,  y   i  ) is taken
into account. To obtain the weighted least squares estimates we seek the values of
 b  0  and  b   1   that minimize WRSS. For WRSS to be a minimum with respect to  b  0  and
 b   1   we require

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_4, © Springer Science + Business Media LLC 2009

115

116

4  Weighted Least Squares

∂

WRSS
b
0

∂

2
= −

n

∑

i

=

1

w y
(
i
i

−

b
0

−

b x
i
1

)

=

0

∂

WRSS
b
1

∂

2
= −

n

∑

i

=

1

w x y
i
i

(

i

−

b
0

−

b x
i
1

)

=

0.

 Rearranging terms in these last two equations gives

n

n

w y
i
i

=

b
0

∑

i

=

1

∑

i

=

1

w b
+
i
1

n

∑
w x
i
i

i

=

1

n

n

n

∑

i

=

1

w x y
i
i
i

=

b
0

w x
i
i

+

b
1

∑

i

=

1

∑

i

=

1

2
w x
i
i

(4.1)

(4.2)

 These  last  two  equations  are  called  the   normal  equations .  Multiplying  equation
n

n

(4.1) by

∑    and equation (4.2) by

w x
i
i

∑    gives

w
i

i

=

1

i

=

1

n

n

n

n

∑ ∑
w x
i
i

i

=

1

i

=

1

w y
i
i

=

b
0

∑ ∑
w
i

i

=

1

i

=

1

w x
i
i

⎛
b
+ ⎜
1
⎝

n

∑

i

=

1

w x
i
i

2

⎞
⎟
⎠

and

n

n

n

n

n

n

∑ ∑
w
i

i

=

1

i

=

1

w x y
i
i
i

=

b
0

∑ ∑
w
i

i

=

1

i

=

1

w x
i
i

+

b
1

∑ ∑
w
i

i

=

1

i

=

1

w x
i

2
i

.

 Subtracting the first equation from the second and solving for  b   1   gives the so-called
 weighted least squares estimate  of the slope

n

n

n

n

n

ˆ
b

1W

=

∑ ∑
w
i

i

=

1

i

=

1

w x y
i
i
i

−

∑ ∑
w x
i
i

w y
i
i

i

=

1

i

=

1

n

n

∑ ∑
w
i

i

=

1

i

=

1

2
w x
i
i

⎛
− ⎜
⎝

n

∑

i

=

1

w x
i
i

2

⎞
⎟
⎠

∑

i

=

1

=

(
w x
i

i

−

x
W

)(
y
i

−

y
W

)

n

(
w x
i
i

−

x
W

2

)

∑

i

=

1

n

n

n

n

=

x
W

 where

∑
1
1
=
the  weighted least squares estimate  of the intercept

w x
i
i

w y
i
i

∑

∑

and

y
W

w
i

=

=

=

=

1

1

i

i

i

i

∑      From which we can find

w
i

.

n

n

∑

i

=

1
n

w y
i
i

ˆ
b
W
1

−

∑

i

=

1
n

w x
i
i

=

y
W

−

ˆ
x
b
W W
1

.

ˆ
b

0

W

=

w
i

∑

i

=

1

w
i

∑

i

=

1

4.1  Straight-Line Regression Based on Weighted Least Squares

117

  Example: Developing a bid on contract cleaning (cont.)

 This example was first discussed in Chapter 3. Recall that the aim of the exercise
was to develop a regression equation to model the relationship between the  number
of rooms cleaned ,  Y  and the  number of crews ,  X  and predict the number of rooms
that  can  be  cleaned  by  4  crews  and  by  16  crews.  In  this  example,  the   x -variable
(number of crews) is discrete with values 2, 4, 6, 8, 10, 12 and 16. Recall also that
there  are  multiple  measurements  of  the   Y -variable  (number  of  rooms  cleaned)  at
each value of  x . In  this special case , it is possible to directly calculate the standard
deviation of  Y  at each discrete value of  x . Table  4.1  gives the value of each of these
standard deviations along with the number of points each is based on.

 Consider the simple linear regression model

Y
   =
i

b

0

+

b
1

x
i

+

e
i

 where the  e   i   have mean 0 but variance   s 2 / wi  . In this case we take

w
i

=

1

(
Standard Deviation(

Y
i

)

)2

then Yi has variance s 2 / w i  with s 2 = 1. We shall use the estimated or sample stand-
ard  deviations  in  Table   4.1   to  produce  the  weights   w   i  .  The  data  set  with  these
weights  included  can  be  found  on  the  book  web  site  in  the  file  cleaningwtd.txt.
Given below is the weighted least squares regression output from R including 95%
prediction intervals for  Y  when  x  = 4 and 16.

  Regression output from R

 Call:
 lm(formula = Rooms ~ Crews, weights = 1/StdDev^2)

 Residuals:
Min

1Q
  -1.43184   -0.82013

 Coefficients:

Median

Max
0.03909  0.69029  2.01030

3Q

 Estimate  Std. Error  t value
0.725
21.400

 (Intercept) 0.8095
 Crews
 3.8255
 ---
 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘’ 1

Pr(>|t|)
 0.471
<2e-16  ***

1.1158
0.1788

 Residual standard error: 0.9648 on 51 degrees of freedom
 Multiple R-Squared: 0.8998, Adjusted R-squared: 0.8978
 F-statistic: 458 on 1 and 51 DF, p-value: < 2.2e-16

 fit

upr
 1  16.11133  13.71210  18.51056
 2  62.01687  57.38601  66.64773

lwr

118

4  Weighted Least Squares

 Table 4.1
  x , Crews

 2
 4
 6
 8
 10
 12
 16

  The standard deviation of  Y  for each value of  x

 N

 9
 6
 5
 8
 8
 7
 10

 Standard deviation( Y   i  )
 3.00
 4.97
 4.69
 6.64
 7.93
 7.29
 12.00

  4.1.1  Prediction Intervals for Weighted Least Squares

 According to Weisberg (2006, p. 42):  1

  The predict helper function also works correctly for getting predictions and standard errors
of fitted values, but it apparently does not always give the right answer for prediction inter-
vals. Both R and S-Plus compute the standard error of prediction as

   (

ˆ
2
s +

sefit(

 rather than

y X x

=

|

*)

2

)
,

2

     (
ˆ
s

/

w

* sefit(

+

y X x

=

|

*)

2

)

.

 The R/S-Plus formula assumes that the variance of the future observation is   s 2   rather than
  s 2 / w *   , where  w  *  is the weight for the future value.

  4.1.2  Leverage for Weighted Least Squares

 The  i th fitted or predicted value from weighted least squares is given by

ˆWi
y

=

ˆ
b

0

W

ˆ
x
b
W i
1

+

ˆ
 where   0
b

W

=

y
W

−

ˆ
x
b
W W
1

    and

n

∑

j

=

1

ˆ
b

=

W
1

(
w x
j

j

−

x
W

)(
y

j

−

y
W

)

=

(
w x
j

j

−

x
W

2

)

n

∑

j

=

1

n

∑

j

1

=
n

∑

j

=

1

(
w x
j

j

−

x
W

)
y

j

=

(
w x
j

j

−

x
W

2

)

n

∑

j

=

1

)
y

j

x
W

j

−

(
w x
j
WSXX

   1  Weisberg,  S.  (2006)   Computing  Primer  for Applied  Linear  Regression, Third  Edition  Using  R
and S-Plus , available at   www.stat.umn.edu/alr/Links/RSprimer.pdf    .

4.1  Straight-Line Regression Based on Weighted Least Squares

119

 where

WSXX

=

n

∑

j

=

1

(
w x
j

j

−

x
W

)2

.

   So that, letting

S
w w
=
j

j

n

∑
w
k

k

=

1

y
W

y
W

n

−

+

ˆ
x
b
W W
1
ˆ
(
x
b
W
i
1

+

−

ˆ
x
b
W i
1
)

x
W

n

n

ˆ
y
Wi

=

=

=

=

=

w y
j

j

/

w

S
j

+

⎡
⎢
⎢
⎣

h y
Wij

j

∑

j

=

1

n

∑

j

=

1

n

∑

j

=

1

∑

k

=

1

w
k

+

∑

j

=

1

x
W

w x
(
j

−
j
WSXX

(
w x
j
i

x

)
x
(
−
W
WSXX

−

x
W

)

j

y

j

(
x
i

−

x
W

)

y

j

)

⎤
⎥
⎥
⎦

 where

 Thus,

h
Wij

=

w

S
j

+

⎡
⎢
⎢
⎣

(
w x
j
i

x

)(
x
−
W
WSXX

−

x
W

)

j

⎤
⎥
⎥
⎦

  ˆWi
y

=

h y
Wii
i

h
 where
Wii

=

S
w
i

+

(
w x
x
−
i
i
W
WSXX

)2

⎡
⎢
⎢
⎣

.

⎤
⎥
⎥
⎦

h y
Wij

j

+ ∑

j

≠

i

  Reality Check : All weights equal, then WLS = LS.

 Take wj = 1/n   (then w s

j  = 1/n) and hWij = hij   as given in (3.1).

  4.1.3  Using Least Squares to Calculate Weighted Least Squares

 Consider the simple linear regression model

Y
i

=

b

0

+

b
1

x
i

+
e
i

 (4.3)

 where the  e   i   have mean 0 but variance   s 2 / wi     . Notice that if we multiply both sides
of the last equation by

iw    we get

w Y
i
i

=

b

0

w
i

+

b
1

w x
i
i

+

w e
i
i

(4.4)

120

4  Weighted Least Squares

i

 where the

iw e    have mean 0 but variance    (

×    s 2 /wi     = s 2 . Thus, it is possible
to  calculate  the  weighted  least  squares  fit  of  model  (4.3)  by  calculating  the  least
squares  fit  to  model  (4.4).  Model  (4.4)  is  a  multiple  linear  regression  with  two
 predictors and no intercept. To see this, let

iw

)2

Y

i
NEW

=

w Y x
i

,

i

i
1NEW

=

w x
,
i

i
2NEW

=

w x
i

i

e
and
i
NEW

=

w e
i
i

 then we can rewrite model (4.4) as

Y

i
NEW

=

b

x
i
0 1NEW

+

b

x
i
1 2NEW

+

e
i
NEW

 (4.5)

  Example: Developing a bid on contract cleaning (cont.)

 Recall that in this case we take

w
i

=

1

(
Standard deviation(

Y
i

)

)2

.

 We shall again use the estimated or sample standard deviations in Table  4.1  to
produce  the  weights   w   i  .  Given  below  is  the  least  squares  regression  output
from  R  for  model  (4.5)  including  95%  prediction  intervals  for   Y   when   x   =  4
and 16.

 Comparing the output from R on the next page with that on page 4, we see that

the results are the same down to and including  Residual standard error.

  Regression output from R

 Call:
 lm(formula = ynew ~ x1new + x2new - 1)

 Residuals:

 Min
 -1.43184

1Q
-0.82013

Median
0.03909

3Q
0.69029

Max
2.01030

 Coefficients:

     Estimate Std.  Error  t value
0.725
21.400

 x1new
 x2new
 ---
 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘’ 1

Pr(>|t|)
0.471

1.1158
0.1788

0.8095
3.8255

<2e-16 ***

 Residual standard error: 0.9648 on 51 degrees of freedom
 Multiple R-Squared: 0.9617, Adjusted R-squared: 0.9602
 F-statistic: 639.6 on 2 and 51 DF, p-value: < 2.2e-16

 1
 2

 fit

lwr
3.243965  1.286166
5.167873  3.199481

upr
5.201763
7.136265

4.1  Straight-Line Regression Based on Weighted Least Squares

121

 Table 4.2

  Predictions and 95% prediction intervals for the number of crews

  x , Crews

 Prediction

 Lower limit

 Upper limit

 4 (transformed data)
 4 (raw data WLS)
 16 (transformed data)

 16 (raw data WLS)

 16 = (4.003 2 )
 16 = (3.244   ×   4.97)
 61 =(7.806 2 )
 62 = (5.167   ×   12.00)

 8 = (2.790 2 )
 6 = (1.286   ×  4.97)
 43 =(6.582 2 )
 38 = (3.199   ×   12.00)

 27 = (5.217 2 )
 26 = (5.202   ×   4.97)
 82 = (9.031 2 )
 87 = (7.136   ×   12.00)

 The fits and prediction intervals above are for    NEWi
Y
prediction intervals for  Y   i   we need to multiply the values for    NEWi
x
1 / 4.97
Looking  at  Table   4.1   we  see  that  when
x
son purposes, are results obtained from the transformed data in Chapter 3.

  . To obtain the fits and
   by  1
iw    .
2
    and  when
  . The results are given in Table  4.2     . Also given, for compari-

1 / 12.00

w=
4,
i

16,

w
i

w Y
i
i

Y

=

=

=

=

2

 It is evident from Table  4.2  that the predictions are close for both methods. The
prediction  intervals  are  close  when   x   =  4.  However,  when   x   =  16,  the  prediction
interval  is  wider  for  weighted  least  squares.  Can  you  think  of  a  reason  why  this
might be so?

  4.1.4  Defining Residuals for Weighted Least Squares

 In the case of weighted least squares, the residuals are defined by

ˆ
e
Wi

=

(
w y
i
i

−

ˆ
y
Wi

)

ˆ
ˆWi
x
y
 where
b
W i
1
by minimizing the sum of the squared residuals

ˆ
b

=

+

W

0

   . With this definition, the weighted least squares are obtained

n

n

WRSS

=

∑

i

=

1

2
ˆ
e
Wi

=

∑

i

=

1

w y
(
i
i

−

ˆ
y
Wi

2

)

 The second advantage of this choice is that the variance of the  i th residual can be
shown to depend on the weight  w   i   only through its leverage value.

  4.1.5  The Use of Weighted Least Squares

 The weighted least squares technique is commonly used in the important special
case when  Y   i   is the average or the median of  n   i   observations so that
In this case we take wi = ni.

1
∝   .
n
i

Var (

Y
)i

122

4  Weighted Least Squares

  However,  many  situations  exist  in  which  the  variance  is  not  constant  and  in
which it is not straightforward to determine the correct model for the variance. In
these situations, the use of weighted least squares is problematic.

  4.2  Exercises

    1.     A full professor of statistics at a major US university is interested in estimating
the third quartile of salaries for full professors with 6 years of experience in that
rank. Data, in the form of the 2005–2006 Salary Report of Academic Statisticians,
are  available  at    http://www.amstat.org/profession/salaryreport_acad2005–6.pdf
(accessed March 12, 2007) (Table  4.3  ).        Using weighted least squares, estimate
the  2005–2006  third  quartile  for  salary  of  full  professors  with  6  years  of
experience.

   2.     Consider regression though the origin (i.e., straight line regression with popula-
x= σ   .  The  corresponding

tion  intercept  known  to  be  zero)  with
Y
regression model is
i

e
Var(
i
n
1,..., )
  .

e i
(
i

b=

x
i

x
i

+

=

2
i

)

|

2

 Find an explicit expression for the weighted least squares estimate of b  .

   3.     The Sunday April 15, 2007 issue of the Houston Chronicle included a section
devoted to real estate prices in Houston. In particular, data are presented on the
2006  median  price  per  square  foot  for  1922  subdivisions.  The  data
(HoustonRealEstate.txt) can be found on the book web site. Interest centers on
developing a regression model to predict

     Y   i   = 2006 median price per square foot
 from

      x  1 i   =  %NewHomes (i.e., of the houses that sold in 2006, the percentage that were

built in 2005 or 2006)

    x  2 i   =  %Foreclosures  (i.e.,  of  the  houses  that  sold  in  2006,  the  percentage  that

were identified as foreclosures)

  Data on salaries
  Table 4.3
 Years of experience as a full professor

 0
 2
 4
 6
 8
 12
 17
 22
 28
 34

 Sample size,  n   i
 17
 33
 19
 25
 18
 60
 58
 31
 34
 19

 Third quartile ($)

 101,300
 111,303
 98,000
 124,000
 128,475
 117,410
 115,825
 134,300
 128,066
 164,700

4.2  Exercises

123

i

Y

400

300

200

100

400

300

200

100

i

Y

i

2
x

1.0

0.8

0.6

0.4

0.2

0.0

0.0

0.4

0.8

0.0

0.4

0.8

0.0

0.4

0.8

x1i

x2i

x1i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

12

10

8

6

4

2

0

−2

l

i

)
|
s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

|
(
t
o
o
R
e
r
a
u
q
S

0 20

60

3.0

2.0

1.0

0.0

0 20

60

Fitted Values

Fitted Values

  Figure 4.1

  Plots associated with model (4.6)

 for the  i  = 1, … 1922 subdivisions.
 The first model considered was

Y
i

=

b

0

+

b

x
i
1 1

+

b

x
2 2

i

+
e

 (4.6)

 Model (4.6) was fit used weighted least squares with weights,

   wi = ni
 where
  n   i   = the number of homes sold in subdivision  i  in 2006.
 Output from model (4.6), in the form of plots, appears in Figure 4.1.

    (a)     Explain it is necessary to use weighted least squares to fit model (4.6) and why

   wi = ni    is the appropriate choice for the weights.
   (b)     Explain why (4.6) is not a valid regression model.
   (c)     Describe what steps you would take to obtain a valid regression model (Figure  4.1 ).

   Chapter 5
 Multiple Linear Regression

 It is common for more than one factor to influence an outcome. Fitting regression
models to data involving two or more predictors is one of the most widely used sta-
tistical procedures. In this chapter we consider multiple linear regression problems
involving modeling the relationship between a dependent variable,  Y  and two or more
predictor variables  x  1 ,  x  2 ,  x  3 , etc. Throughout Chapter 5, we will assume that the mul-
tiple linear regression model under consideration is a valid model for the data. In the
next chapter we will consider a series of tools to check model validity.

  5.1  Polynomial Regression

 We begin this chapter by looking at an important special case of multiple regres-
sion, known as polynomial regression. In this case the predictors are a single pre-
dictor,  x , and its polynomial powers ( x  2 ,  x  3 , etc.). In polynomial regression, we can
display the results of our multiple regression on a single two-dimensional graph.
  Example: Modeling salary from years of experience

 This example is taken from Tryfos (1998, pp. 5–7). According to Tryfos:

 Professional organizations of accountants, engineers, systems analysts and others regularly
survey  their  members  for  information  concerning  salaries,  pensions,  and  conditions  of
employment.  One  product  of  these  surveys  is  the  so-called  salary  curve…which  relates
salary to years of experience.
 The salary curve is said to show the “normal” or “typical” salary of professionals with a
given number of years experience. It is of considerable interest to members of the profession
who like to know where they stand among their peers. It is also valuable to personnel depart-
ments of businesses considering salary adjustments or intending to hire new professionals.

 We want to develop a regression equation to model the relationship between  Y ,
salary (in thousands of dollars) and  x , the number of years of experience and find a
95% prediction interval for  Y  when  x  = 10. The 143 data points are plotted in Figure
 5.1  and can be found on the book web site in the file profsalary.txt.

 It is clear from Figure  5.1  that the relationship between salary and years of experi-
ence is nonlinear. For illustrative purposes we will start by fitting a simple linear model

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_5, © Springer Science + Business Media LLC 2009

125

126

5  Multiple Linear Regression

y
r
a
a
S

l

70

60

50

40

0

5

10

15

20

25

30

35

Years of Experience

  Figure 5.1

  A plot of the professional salary data (prefsalary.txt)

and examining the associated regression diagnostics. The inadequacy of the straight-
line model and potentially how to overcome it will be seen from this analysis.

 We begin by considering the simple linear regression model

Y

=

b

0

+

b
1

x

+

e

(5.1)

    where  Y  = salary and  x  = years of experience. Figure  5.2  shows a plot of the stand-
ardized residuals from model (5.1) against  x .

 A curved pattern resembling a quadratic is clearly evident in Figure  5.2 . This
suggests that we add a quadratic term in  x  to model (5.1) and thus consider the fol-
lowing polynomial regression model

Y

=

b

0

+

b
1

x

+

b

2

x

+2

e

(5.2)

 where  Y  = salary and  x  = years of experience. Figure  5.3  contains a scatter plot of
salary against years of experience. The curve in Figure  5.3  is just the least squares
fit of model (5.2).

 Figure  5.4  shows a plot of the standardized residuals from model (5.2) against  x .
The random pattern in Figure  5.4  indicates that model (5.2) is a valid model for the
salary data.

 Figure  5.5  shows a plot of leverage from model (5.2) against  x . Marked on the
plot as a horizontal dashed line is the cut-off value for a point of high leverage  1   ,

  1 In the next chapter we shall see that the cut-off is 2( p  + 1)/ n  when there are  p  predictors.

5.1  Polynomial Regression

127

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1

0

−1

−2

0

5

10

15

20

25

30

35

Years of Experience

  Figure 5.2

  A plot of the standardized residuals from a straight-line regression model

y
r
a
a
S

l

70

60

50

40

0

5

10

15

20

25

30

35

Years of Experience

  Figure 5.3

  A plot of salary against experience with a quadratic fit added

128

5  Multiple Linear Regression

2

1

0

−1

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

0

5

10

15

20

25

30

35

Years of Experience

  Figure 5.4

  A plot of the standardized residuals from a quadratic regression model

e
g
a
r
e
v
e
L

0.07

0.06

0.05

0.04

0.03

0.02

0.01

0

5

10

15

20

25

30

35

Years of Experience

  Figure 5.5

  A plot of leverage against  x , years of experience

6
0.042
namely,
and the two largest  x -values are leverage points.

143

=

=

n

6

  . It is evident from Figure  5.5  that the three smallest

5.1  Polynomial Regression

129

Residuals vs Fitted

77 118
29

40

50

60

70

Fitted Values

Scale−Location

77 118
29

6
4
2
0

−4

1.2

0.8

0.4

0.0

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

Normal Q−Q

77118
29

−2 −1
Theoretical Quantiles

1

2

0

Residuals vs Leverage

29

Cook’s distance

417

2

1

0

−1

2

1

0

−1

−2

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

40

50

60

70

0.00

0.02

0.04

0.06

Fitted Values

Leverage

   Figure 5.6   Diagnostic plots produced by R

 Next we look at the four summary diagnostic plots produced by R in Figure 5.6.
The bottom right plot shows that none of the points of high leverage have standard-
ized  residuals  with  absolute  value  of  2  or  higher.  The  bottom  left-hand  plot  is
consistent with the errors in model (5.2) having constant variance. Thus (5.2) is a
valid model.

 The output from R associated with fitting model (5.2) is given below. The last
part of the output gives the predicted salary (in thousands of dollars) and a 95%
prediction interval for 10 years of experience. In this case the 95% prediction inter-
val is ($52,505, $63,718).

  Regression output from R

      Call:

lm(formula = Salary ~ Experience + I(Experience^2))

Coefficients:

Estimate
34.720498
(Intercept)
Experience
2.872275
I(Experience^2)  -0.053316
---

Std. Error  t value
41.90
30.01
-21.53

0.828724
0.095697
0.002477

Pr(>|t|)

<2e-16 ***
<2e-16 ***
<2e-16 ***

130

5  Multiple Linear Regression

Residual standard error: 2.817 on 140 degrees of freedom
Multiple R-Squared: 0.9247,  Adjusted R-squared:0.9236
F-statistic: 859.3 on 2 and 140 DF,  p-value:< 2.2e-16

upr
[1,]  58.11164  52.50481  63.71847

lwr

fit

  5.2  Estimation and Inference in Multiple Linear Regression

 In the straight-line regression model, we saw that

E(

Y X x

=

|

)

=

b

0

+

b
1

x

 where the parameters   b0   and   b1   determine the intercept and the slope of a specific
straight line, respectively.

 Suppose in this case that   Y1 ,Y2 ,...,Yn    are independent realizations of the random
variable  Y  that are observed at the values   x1 ,x2 ,...,xn    of a random variable  X . Then
for   i = 1,...,n

Y
i

=

E(

Y X
|
i

i

=

x
i

)

+

e
i

=

b

0

+

b
1

x
i

e
+
i

 where
  ei =      random fluctuation (or error) in   Yi   such that   E(ei |X) = 0  .

 In this case the response variable  Y  is predicted from one predictor (or explana-
tory) variable  X  and the relationship between  Y  and  X  is linear in the parameters   b0
and    b1  .

 In the multiple linear regression model

E(

Y X
|
1

=

x X
,
1

2

=

x

2

,...,

X

p

=

x

p

)

=

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

p

 Thus,

Y
i

=

b

0

+

b

x
i
1 1

+

b

x
2 2

i

...
+ +

b

x

p

pi

+

e
i

 where
  ei  =      random  fluctuation  (or  error)  in    Yi    such  that    E(ei  | X) = 0  .  In  this  case  the
response variable  Y  is predicted from  p  predictor (or explanatory) variables  X  1 ,  X  2 ,
…,  X   p   and the relationship between  Y  and  X  1 ,  X  2 , …,  X   p   is linear in the parameters
  b0, b1, b2,..., bp  .

 An example of a multiple linear regression model is between
    Y  = salary

 and

    x   1  =  x , years of experience
   x   2  =  x   2  , (years of experience) 2

5.2  Estimation and Inference in Multiple Linear Regression

131

  Least squares estimates

 The least squares estimates of    0
2
which the sum of the squared residuals,

,
b b b
1

,

,...,

n

n

n

b    are the values of    0

b b b
,
1
2

,

p

,...,

b    for

p

RSS

=

2
ˆ
∑ ∑
e
=
i

i

=

1

i

=

1

(

y
i

−

ˆ
y
i

2

)

=

∑

i

=

1

y
(
i

−

b
0

−

b x
i
1 1

−

b x
2 2

i

...
− −

b x
p

pi

2

)

 is a minimum. For RSS to be a minimum with respect to    0
we require

b b b
,
1
2

,

,...,

b
p

RSS
∂
b
∂
0

2
= −

n

∑

i

=

1

y
(
i

−

b
0

−

b x
i
1 1

−

b x
2 2

i

...
− −

b x
p

pi

)

=

0

RSS
∂
b
∂
1

2
= −

n

∑

i

=

1

x
i
1

(

y
i

−

b
0

−

b x
i
1 1

−

b x
2 2

i

...
− −

b x
p

pi

)

=

0

.
.

n

x

pi

(

y
i

−

b
0

−

b x
i
1 1

−

b x
2 2

i

...
− −

b x
p

pi

)

=

0

∑

i

=

1

∂
∂

RSS
b

p

2
= −

 This  gives  a  system  of  ( p   +  1)  equations  in  ( p   +  1)  unknowns.  In  practice,  a
computer  package  is  needed  to  solve  these  equations  and  hence  obtain  the  least
ˆ
ˆ
ˆ
,
squares estimates,    0
b b b
1

ˆ
b   .
p

,...,

,

2

  Matrix formulation of least squares

,

 A  convenient  way  to  study  the  properties  of  the  least  squares  estimates,
ˆ
ˆ
ˆ
ˆ
b    is to use matrix and vector notation. Define the   (n × 1)   vector,   Y  ,
   0
,
b b b
1
the   n × (p + 1)   matrix,   X  , the   (p + 1) × 1   vector,   b   of unknown regression parameters
and the   (n × 1)   vector,   e   of random errors by

,...,

p

2

Y

=

⎛
⎜
⎜
⎜
⎜
⎝

y
1
y
2
⋮

y

n

⎞
⎟
⎟
⎟
⎟
⎠

,

X

=

1

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

x
1
x

2

p

p

⋯

x
11

⋯

21

x
⋮

x

n
1

⋯

x

np

⎞
⎟
⎟
⎟
⎟
⎠

,

b

=

⎛
⎜
⎜
⎜
⎜
⎝

b

0
b
1
⋮

b

p

⎞
⎟
⎟
⎟
⎟
⎠

,

e

=

⎛
⎜
⎜
⎜
⎜
⎝

e
1
e
2
⋮

e
n

⎞
⎟
⎟
⎟
⎟
⎠

 We can write the multiple linear regression model in matrix notation as

Y X

b=

+

e

(5.3)

 In addition, let    ix¢    denote the  i th row of the matrix   X  . Then

 is a 1 × (p + 1 ) row vector      which allows us to write

¢x     = (1 xi1 xi2 ... xip)
   i

132

5  Multiple Linear Regression

E(

Y X x

=

|

)

=

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

p

¢
= x
i

b

 The residual sum of squares as a function of   b   can be written in matrix form as

RSS(

)b

=

(
Y X
−

b

) (
′

Y X
−

b

)

(5.4)

 Noting  that    (

AB

)¢

=

B A     and  that

¢

¢

B A A B     when  the  result  is    (1  ×  1)  ,

¢=

¢

expanding this last equation gives

RSS(

b

)

=

=

(
Y Y X
¢
+
Y Y
b¢
¢
+

)
X
b ¢ b
X X
(
)
¢

−
b

Y X

(
X
¢ b
−
Y X
2
¢ b

−

)
b ¢

Y

 To find the least squares estimates we differentiate this last equation with respect
to   b  , equate the result to zero and then cancel out the 2 common to both sides. This
gives the following matrix form of the normal equations

(

X X
¢

)b

¢=

X Y

(5.5)

 Assuming that the inverse of the matrix   (X¢X)   exists, the least squares estimates

(5.6)

(5.7)

(5.8)

are given by

ˆ
b

= X X X Y
)

(

¢

¢

1
−

 The fitted or predicted values are given by

 and the residuals are given by

ˆ
ˆ
b=Y X

ˆ
e

=

Y

−

ˆ
Y

=

Y

−

ˆ
b

X

  Special case: simple linear regression
 Consider the regression model

Y X

b=

+

e
.

 For simple linear regression the matrix,   X   is given by

X

=

1

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

x
1

x
2
⋮

x

n

⎞
⎟
⎟
⎟
⎟
⎠

 Thus,

5.2  Estimation and Inference in Multiple Linear Regression

133

=

n

1

x

⎛
⎜
⎜
⎝

1
n

x

n

∑

i

=

1

⎞
⎟
⎟
⎠

2
x
i

X X
¢

=

⎛
⎜
⎝

1 1
x x
1

2

⋯

…

1
x

n

⎛
⎜
⎞
⎜
⎟
⎠ ⎜
⎜
⎝

1

1
⋮

1

x
1

2

x
⋮

x

n

⎞
⎟
⎟
⎟
⎟
⎠

=

⎛
⎜
⎜
⎜
⎜
⎝

n

n

∑

i

=

1

n

n

∑ ∑
x
i

i

=

1

i

=

1

 and

X Y
¢

=

⎛
⎜
⎝

1 1
x x
1

2

⎛
⎜
⋯
1
⎞
⎜
⎟…
x
⎠ ⎜
⎜
⎝

n

y
1
y
2
⋮

y

n

⎞
⎟
⎟
⎟
⎟
⎠

=

⎛
⎜
⎜
⎜
⎜
⎝

 Taking the inverse of   (X¢X)   gives

x
i

2
x
i

⎞
⎟
⎟
⎟
⎟
⎠

n

y
i

∑

i

=

1

n

∑

i

=

1

x y
i
i

⎞
⎟
⎟
⎟
⎟
⎠

(
X X
¢

1
−

)

=

n

⎛
⎜
⎝

1
n

=

1
SXX

n

∑

1
n

⎛
⎜
i
=
⎜
⎝ −

1
x

2
x
i

−

x

1

⎞
⎟
⎟
⎠

1

2
x
i

−

2

( )
x

⎞
⎟
⎠

n

∑

i

=

1

n

∑

1
n

⎛
⎜
i
=
⎜
⎝ −

1
x

2
x
i

−

x

1

⎞
⎟
⎟
⎠

 Putting all these pieces together gives

ˆ
b

=

(

1
−
X X X Y
)

¢

¢

=

1
SXX

=

1
SXX

n

∑

1
n

⎛
⎜
i
=
⎜
⎝ −

1
x

2
x
i

−

x

1

⎛
⎞ ⎜
⎟ ⎜
⎟ ⎜
⎠ ⎜
⎝

n

∑

i

=

1

y
i

n

∑

i

=

1

x y
i
i

⎞
⎟
⎟
⎟
⎟
⎠

1
n

⎛
⎜
⎜
⎜
⎜
⎝

n

n

n

n

∑ ∑
y
i

i

=

1

i

=

1

2
x
i

−

x

∑

i

=

1

n

n

∑

i

=

1

x
i

y
i

−

x

∑

i

=

1

y
i

n

y

⎧
⎨
⎩

2
x
i

2

−

nx

∑

i

=

1

x

⎧
⎨
⎩

∑

i

=

1

−

⎫
⎬
⎭
SX

X

x y
i
i

⎞
⎟
⎟
⎟
⎟
⎠

x y
i
i

−

nxy

⎫
⎬
⎭

⎞
⎟
⎟
⎟
⎟
⎟
⎠

⎛
⎜
⎜
= ⎜
⎜
⎜
⎝

=

⎛
⎜
⎜
⎜
⎝

SXY
S
X
X
XY
S
SXX

−

y

SXY
SXX

x

⎞
⎟
⎟
⎟
⎠

134

5  Multiple Linear Regression

 matching the results in Chapter 2.

  Properties of least squares estimates
 Consider the regression model given by (5.3), i.e.,

Y X

b=

+

e

 with

Var( )e

s= 2

I    where   I   is the   (n × n)   identity matrix.

 From (5.6), the least squares estimates are given

ˆ
b

= X X X Y
)

(

¢

¢

1
−

 We  next  derive  the  conditional  mean  and  variance  of  the  least  squares

estimates:

(
ˆE
b

|

X

)

=

E

|

¢

¢

)

1
−
X X X Y X

(
(
(
Y X
X X X
E
)
|
¢
¢
1
−
X X X X
)
b

1
−

¢

¢

)
)

=

(

=

(

=

b

Var

(
ˆ
b

|

X

=

)
=

=

=

=

|

¢

¢

¢

)

1
−

1
−
X X X Y X

(
)
Var (
)
X X X
X X X
)
¢
¢
1
−
X X X IX X X
)
¢
¢s
2
1
1
−
−
(

(
Y X
|
(
X X X X
(

Var
2

1
−

)

)

(

¢

¢

¢

(

(

s

1
−

)

)
X X
¢
X X
¢

s

2

(

1
−

)

 using the fact that   (X¢X)-1   is a symmetric matrix.
  Reality check:  simple linear regression

 We saw earlier that for the case of simple linear regression

(
X X
¢

1
−

)

=

1
SXX

 Thus, for the slope of the fitted line

n

∑

1
n

⎛
⎜
i
=
⎜
⎝ −

1
x

2
x
i

−

x

1

⎞
⎟
⎟
⎠

ˆVar(

)
b =
1

2

s
SXX

 as we found in Chapter 2.

  Residual sum of squares
 From (5.4), the residual sum of squares as a function of the least squares estimates
   ˆb    can be written in matrix form as

5.2  Estimation and Inference in Multiple Linear Regression

135

RSS RSS(
=

ˆ
b

)

=

(
Y X
−

ˆ
b

 Estimating the error variance
 It can be shown that

′
)(

Y X
−

ˆ
b

)
=

ˆ ˆ
e e
¢

n

= ∑ 2
ˆ
e
i

i

=

1

2

S

=

RSS
p
− −

1

n

=

n

n

1
− − ∑
p
1

1

i

=

2
ˆ
e
i

 is an unbiased estimate of   s 2  .

  Confidence intervals and tests of significance

 Assuming that the errors are normally distributed with constant variance, it can be
shown that for  i  = 0, 1, …,  p

T
i

=

ˆ
b

−

b
ˆ
b

i
)

i
se(

t~

n p

− −

1

se(

 where
 S . Note that

)ib    is the estimated standard deviation of    ˆ
ˆ
ˆ
)ib      can be obtained from R.
 Notice that the degrees of freedom satisfy the formula:

se(

ib   obtained by replacing   s   by

 Degrees of freedom = Sample size – Number of mean parameters estimated.

 In this case we are estimating  p  + 1 such parameters, namely,    0

,
b b
1

,...,

b   .
p

  Analysis  of  variance  approach  to  testing  whether  there  is  a  linear  association
between Y and a subset/all of the predictors
 There is a linear association between  Y  and a subset/all of  X  1 ,  X  2 , …,  X   p   if

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

p

+

e

 and some/all of the

ib ≠     (i  = 1, 2, …,  p ). Thus we wish to test

0

H b
:
0
1

=

b

2

=

...

=

b

p

=    against

0

H

A

: at least some of the

b ≠   .

0

i

 Once again we define the following terminology:

   Total corrected sum of squares of the  Y ’s,

SST

=

SYY

=

n

−∑
y
(
i

i

2

y

)

  Residual sum of squares,

RSS

=

n

−∑
y
(
i

i

ˆ
y
i

2

)

  Regression sum of squares (i.e., sum of squares explained by the regression model),

SSreg

=

n

ˆ
−∑
y
(
i

i

2

y

)

136

5  Multiple Linear Regression

 It can be shown that

SST = SSreg

  Total sample Variability explained by Unexplained (or error)
variability

variability

the model

=

+  RSS
+

 If

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

p

+

e

   and

at least  one of the

ib

≠

0

then RSS should be “small” and SSreg should be “close” to SST. But how small is
“small” and how close is “close”? To test

H b
:
0
1

=

b

2

=

...

=

b

p

=    against

0

H

A

: at least some of the

0
b ≠

i

 we can use the test statistic

F

=

SSreg /
n

p
p
− −

RSS / (

1)

 since RSS has ( n  –  p  – 1) degrees of freedom and SSR has  p  degrees of freedom.
e    are independent and normally distributed, it
Under the assumption that    1
can be shown that  F  has an  F  distribution with  p  and  n  –  p  – 1 degrees of freedom
when   H0   is true. The usual way of setting out this test is to use the following:
 Analysis of variance table

,..., n

e e
2,

 Source of
variation

 Degrees of
freedom (df)

 Sum of squares
(SS)

 Mean square (MS)

 F

 Regression

  p

 SSreg

 SSreg/ p

F

=

 Residual

  n – p  – 1

 RSS

 Total

  n  – 1

 SST  = SYY

  S   2   =  RSS/

( n  –  p  – 1)

SSreg /
n

p
p
− −

RSS / (

1)

 Notes:
   1.      R  2 , the coefficient of determination of the regression line, is defined as the pro-
portion  of  the  total  sample  variability  in  the   Y ’s  explained  by  the  regression
model, that is,

2
R =

SSreg
SST

1
= −

RSS
SST

5.2  Estimation and Inference in Multiple Linear Regression

137

 Adding  irrelevant  predictor  variables  to  the  regression  equation  often
increases  R  2 . To compensate for this one can define an adjusted coefficient
of determination,

2

adjR

R

2
adj

1
= −

RSS / (

n
SST / (

p
− −
n
1)
−

1)

 Note that    2
S

=

   is an unbiased estimate of

RSS
p
n
− −
   is an unbiased estimate of
n −
1)

1

while   SST / (
=   .
0
Thus, when comparing models with different numbers of predictors one should
use

   when    1
b

adjR    and not  R  2 .

s =

2 Var(

)iY

...

=

=

b

2

p

s =

2 Var(

e
i

) Var(

=

Y
i

)

   2.     The   F -test  is  always  used  first  to  test  for  the  existence  of  a  linear  association
between  Y  and ANY of the  p x -variables. If the  F -test is significant then a natural
question to ask is

  For which of the p x-variables is there evidence of a linear association with Y?
 To answer this question we could perform  p  separate  t -tests of
 However, as we shall see later there are problems with interpreting these  t -tests
when the predictor variables are highly correlated.

H b =   .

0

:

0

1

  Testing whether a specified subset of the predictors have regression coefficients
equal to 0
Suppose that we are interested in testing

H0 : b1 = b2 = … = bk = 0 where k < p
 i.e., Y = b0 + bk+1xk+1 + … + bpxp + e (reduced model)

 against

  HA : H0 is not true
 i.e.,   Y = b0 + b1 x1 + … + bk xk + bk+1xk+1 + … + bpxp+ e   (full model)

 This can be achieved using an F-test. Let RSS(Full) be the residual sum of squares
under the full model (i.e., the model which includes all the predictors, i.e.,  H   A  ) and
RSS(Reduced) be the residual sum of squares under the reduced model (i.e., the
model which includes only the predictors thought to be non-zero, i.e.,  H  0 ). Then the
F-statistic is given by

f

reduced

f

d

−

full

)

F

=

=

−
RSS full
(

) (
(
d
RSS(reduced) RSS(full)
f
) d
RSS reduced RSS full
(
)
)
1

(
RSS full
(

−
(
n

p
− −

full
k

)

)

)

(

 since the reduced model has  p  + 1 –  k  predictors and

  [n – (p + 1 – k)] – [n – (p + 1)] = k.

 This is called a  partial     F-test.

138

5  Multiple Linear Regression

  Menu pricing in a new Italian restaurant in New York City (cont.)
 Recall from Chapter 1 that you have been asked to produce a regression model to
predict the price of dinner. Data from surveys of customers of 168 Italian restau-
rants  in  the  target  area  are  available.  The  data  are  in  the  form  of  the  average  of
customer views on

    Y  = Price = the price (in $US) of dinner (including 1 drink & a tip)
   x   1  = Food = customer rating of the food (out of 30)
   x   2  = Décor = customer rating of the decor (out of 30)
   x   3  = Service = customer rating of the service (out of 30)
   x   4  = East = dummy variable = 1 (0) if the restaurant is east (west) of Fifth Avenue
 The data are given on the book web site in the file nyc.csv. The source of the

data is the following restaurant guide book

  Zagat Survey 2001: New York City Restaurants , Zagat, New York
 In particular you have been asked to

    (a)     Develop a regression model that  directly predicts  the price of dinner (in dollars)

using a subset or all of the 4 potential predictor variables listed above.

    (b)     Determine which of the predictor variables Food, Décor and Service has the
largest  estimated  effect  on  Price?  Is  this  effect  also  the  most  statistically
significant?

    (c)     If the aim is to choose the location of the restaurant so that the price achieved
for dinner is maximized, should the new restaurant be on the east or west of
Fifth Avenue?

    (d)     Does it seem possible to achieve a price premium for “setting a new standard

for high-quality service in Manhattan” for Italian restaurants?

 Since  interest  centers  on  developing  a  regression  model  that  directly  predicts

price, we shall begin by considering the following model:

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

e
+

(5.9)

 At this point we shall assume that all the necessary assumptions hold. In particu-
lar, we shall assume that (5.9) is a valid model for the data. We shall check these
assumptions for this example in the next chapter and at that point identify any out-
liers.   Given below is some output from R after fitting model (5.9):

  Regression output from R

       Call:
lm(formula =  Price  ~  Food  +  Decor  +  Service  +  East)
Coefficients:

Estimate
(Intercept)  -24.023800
1.538120
Food
1.910087
Decor

Std. Error  t value  Pr(>|t|)

4.708359
0.368951
0.217005

-5.102  9.24e-07  ***
4.169  4.96e-05  ***
8.802  1.87e-15  ***

5.2  Estimation and Inference in Multiple Linear Regression

139

0.396232
0.946739

-0.002727
2.068050

Service
East
---
Signif.  codes:  ‘***’  0.001  ‘**’  0.01  ‘*’ 0.05 ‘.’0.1  ‘ ‘ 1
Residual standard error: 5.738 on 163 degrees of freedom
Multiple R-Squared: 0.6279, Adjusted R-squared:0.6187
F-statistic: 68.76 on 4 and 163 DF, p-value: <2.2e-16

0.9945
0.0304  *

-0.007
2.184

    (a)     The initial regression model is

  Price = – 24.02 + 1.54 Food + 1.91 Decor – 0.003 Service + 2.07 East

 At this point we shall leave the variable Service in the model even though its
regression coefficient is not statistically significant.

    (b)     The variable Décor has the largest effect on Price since its regression coeffi-
cient is largest. Note that Food, Décor and Service are each measured on the
same 0 to 30 scale and so it is meaningful to compare regression coefficients.
The variable Décor is also the most statistically significant since its  p -value is
the smallest of the three.

    (c)     In  order  that  the  price  achieved  for  dinner  is  maximized,  the  new  restaurant
should be on the east of Fifth Avenue since the coefficient of the dummy vari-
able is statistically significantly larger than 0.

    (d)     It  does  not  seem  possible  to  achieve  a  price  premium  for  “setting  a  new
standard for high quality service in Manhattan” for Italian restaurants since
the regression coefficient of Service is not statistically significantly greater
than zero.

 Given below is some output from R after dropping the predictor Service from

model (5.9):

  Regression output from R

      Call:
lm(formula  =
Coefficients:

Price  ~

Food

+

Decor  + East)

Std. Error  t value  Pr(>|t|)

Estimate
-24.0269
1.5363
1.9094
2.0670

4.6727
0.2632
0.1900
0.9318

(Intercept)
Food
Decor
East
---
Signif.  codes:  0  ‘***’ 0.001  ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘  ‘ 1
Residual standard error: 5.72 on 164 degrees of freedom
Multiple R-Squared:
0.6279,  Adjusted  R-squared:0.6211
F-statistic:  92.24  on  3  and  164  DF, p-value:  < 2.2e-16

-5.142  7.67e-07  ***
5.838  2.76e-08  ***
<2e-16  ***
0.0279  *

10.049
2.218

140

5  Multiple Linear Regression

 The final regression model is

  Price = – 24.03 + 1.54 Food + 1.91 Decor + 2.07 East

 Comparing  the  last  two  sets  of  output  from  R,  we  see  that  the  regression  coeffi-
cients for the variables in both models are very similar. This does  not  always occur.
In fact, we shall see that dropping predictors from a regression model can have a
dramatic effect on the coefficients of the remaining predictors. We shall discuss this
and  other  issues  related  to  choosing  predictor  variables  for  a  “final”  model  in
Chapter 7.

  5.3  Analysis of Covariance

 Consider the situation in which we want to model a response variable,  Y  based on
a continuous predictor,  x  and a dummy variable,  d . Suppose that the effect of  x  on
 Y  is linear. This situation is the simplest version of what is commonly referred as
 Analysis  of  Covariance ,  since  the  predictors  include  both  quantitative  variables
(i.e.,  x ) and qualitative variables (i.e.,  d ).

  Coincident regression lines : The simplest model in the given situation is one in

which the dummy variable has no effect on  Y , that is,

Y

=

b

0

+

b
1

x

e
+

 and  the  regression  line  is  exactly  the  same  for  both  values  of  the  dummy
variable.

  Parallel regression lines : Another model to consider for this situation is one in

which the dummy variable produces only an additive change in  Y , that is,

Y

=

b

0

+

b
1

x

+

b

2

d e

+ = 〈

Y
Y

x e
b b
+
= +
0
1
b b b
= + +
2
1

0

x e
+

when
when

d
d

0
=
=
1

 In this case, the regression coefficient   b2   measures the additive change in  Y  due to
the dummy variable.

  Regression  lines  with  equal  intercepts  but  different  slopes :    A  third  model  to
consider for this situation is one in which the dummy variable only changes the size
of the effect of  x  on  Y , that is,

Y

=

b

0

+

b
1

x

+

b

3

d

e
× + = 〈

x

Y
Y

x e
b b
+
= +
0
1
b b
b
+
= +
⎛
⎜
0
1
3
⎝

x e
+

⎞
⎟
⎠

when
when

d
d

0
=
=
1

  Unrelated  regression  lines :  The  most  general  model  is  appropriate  when  the
dummy variable produces an additive change in  Y  and also changes the size of the
effect of  x  on  Y . In this case the appropriate model is

5.3  Analysis of Covariance

141

Y

=

b

0

+

b
1

x

+

b

2

d

+

b

3

d

e
× + = 〈

x

Y
Y

x e
b b
+
= +
0
1
b b
= + +
⎛
⎜
0
2
⎝

b b
+
1
3

x e
+

⎞
⎟
⎠

when
when

d
d

0
=
1
=

 In the unrelated regression lines model, the regression coefficient   b2   measures the
additive change in  Y  due to the dummy variable, while the regression coefficient   b3
measures the change in the size of the effect of  x  on  Y  due to the dummy variable.

  Stylized example: Amount spent on travel
 This stylized example is based on a problem in a text on business statistics. The
background to the example is as follows:

 A small travel agency has retained your services to help them better understand two impor-
tant customer segments. The first segment, which we will denote by A, consists of those
customers who have purchased an adventure tour in the last twelve months. The second
segment, which we will denote by C, consists of those customers who have purchased a
cultural tour in the last twelve months. Data are available on 925 customers (i.e. on 466
customers from segment A and 459 customers from segment C). Note that the two seg-
ments  are  completely  separate  in  the  sense  that  there  are  no  customers  who  are  in  both
segments. Interest centres on  identifying any differences between the two segments in terms
of the amount of money spent in the last twelve months . In addition, data are also available
on the age of each customer, since age is thought to have an effect on the amount spent.

 The data in Figure  5.7  are given on the book web site in the file travel.txt. The

first three and the last three rows of the data appear in Table  5.1 .

 It is clear from Figure  5.7  that the dummy variable for segment changes the size
of  the  effect  of  Age,   x   on  Amount  Spent,   Y .  We  shall  also  allow  for  the  dummy
variable for Segment to produce an additive change in  Y . In this case the appropriate
model is what we referred to above as  Unrelated regression lines

Y

=

b

0

+

b
1

x

+

b

C

2

+

b

3

C x

e
× + = 〈

Y
Y

x e
b b
+
= +
0
1
b b
= + +
⎛
⎜
0
2
⎝

b b
+
1
3

x e
+

⎞
⎟
⎠

when
when

C
C

0
=
=
1

 where

  Y   =  amount  spent;   x   =  Age;  and   C   is  a  dummy  variable  which  is  1  when  the
customer is from Segment C and 0 otherwise (i.e., if the customer is in Segment A).
The output from R is as follows:

  Regression output from R

        Call:
lm(formula
Coefficients:

=

Amount

~

Age

+

C +

C:Age)

Estimate
(Intercept)  1814.5445
-20.3175
Age
-1821.2337
C
40.4461
Age:C

Std. Error  t value  Pr(>|t|)

8.6011
0.1878
12.5736
0.2724

211.0
-108.2
-144.8
148.5

<2e-16  ***
<2e-16  ***
<2e-16  ***
<2e-16  ***

Residual standard error: 47.63 on 921 degrees of freedom
Multiple  R-Squared:
F-statistic:  7379  on  3  and  921

0.9601,  Adjusted R-squared:0.9599

DF,  p-value:<2.2e-16

142

5  Multiple Linear Regression

t
n
e
p
S

t
n
u
o
m
A

1400

1200

1000

800

600

400

A
A
A
A
A
A
A
A
A
A
A
A
A
A
A
A
A
A A
A
A
A
A
A
A
A
A
A
A
A
A
AA
A
A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A

C
C
C
C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C

C
C
C
C
C

C
C
C
C
C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C

C
C
C
C
C
C

C

C
C
C
C
C
C
C
C
C
C
C
C
C

A

A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A
A
A
C
A
A
A
C
A
C
A
C
C
C
C
A
C
C
C
C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C C
C
C
C
C
C
C
C
C
C
C
C
C
C

C

C
C
C
C
C
C
C
C
C
C
C
C
C
A
C
C
C
C
C
C
C
C
C
C
CC
C
C
C
AA
C
C
C
C
C
C
C
C
C
A
C
A
C
C
A
C
A
C
C
A
A
A
C
C
C
CC
A
C
C
A
C
C
C
C
C
C
C
CC C
C
C
C
A
A
A
C
C
C
C
A
A
C
C
C
A
C
C
C
C
A
C
C
A
C
C
C
C
C
A
A
A
C
C
A
C
C
A
A
A
C
C
A
A
A
C
A
A
A
C
A
C
A
A
A
CC
A
C
C
A
C
C
A
A
A
A
A
A
C
C
C
A
C
AA
A
C
A
A
A
A
A
A
A
A
A
C
A
A
C
A
A
A
C
A
C
A
A
A
C
A
A
C
C
A
C C
A
A
C
A
C
A
A
A
A
A
A
A
A
A
A
A
C
C
A
A
A
C
A
A
A
C
C
A
A
A
C
A
A
A
A
A
A
C
A
C
A
C
C
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A

C
C
C
C
C
C
C
C
C

C
C
C
C
C
C
C
C
C
C
C
C
C

C
C
C
C
C
C
C
C
C
C
C
C

C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C C
C
C
C
C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C C
C
C
C
C
C
C
C
CC
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C
C

A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A

A

A
A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A

A
A
A
A
A
A
A
A
A
A
A
A
A
A
A

30

40

50

60

Age

  Figure 5.7

  A scatter plot of Amount Spent versus Age for segments A and C

 Table  5.1
for two market segments (A & C)

  Amount  spent  on  travel

 Amount

 Age

 Segment

 C

 997
 997
 951
.
 1,111
 883
 1,038

 44
 43
 41
.
 57
 43
 53

 A
 A
 A
.
 C
 C
 C

 0
 0
 0
.
 1
 1
 1

 Notice  that  all  the  regression  coefficients  are  highly  statistically  significant.

Thus, we shall use as a final model

Y

=

ˆ
b

0

ˆ
b
1

+

x

+

ˆ
b

C

2

+

ˆ
b

3

C x

× = 〈

Y

Y

x

ˆ
ˆ
b b
= +
0
1
ˆ
ˆ
b b
= + +
0
2

ˆ
ˆ
b b
+
1
3

⎛
⎜
⎜
⎝

x

⎞
⎟
⎟
⎠

when C 0

when C 1

=
=

 For customers in segment A (i.e.,  C  = 0) our model predicts

  Amount Spent = $1814.54 – $20.32 × Age

 while for customers in segment C (i.e.,  C  = 1) our model predicts

  Amount Spent = – $6.69 + $20.13 × Age

5.3  Analysis of Covariance

143

 since

 and

  1814.5445 + (– 1821.2337) = – 6.69

  – 20.3175 + 40.4461 = 20.13.

 Thus, in segment A (i.e., those customers who have purchased an adventure tour)
the  amount  spent  decreases  with  Age  while  in  Segment  C  (i.e.,  those  customers
who have purchased a cultural tour) the amount spent increases with Age.

 Finally, imagine that we are interested in an overall test of

  H0 : b2 = b3 = 0

 i.e.,   Y = b0 + b1x1 + e   (reduced model:  coincident regression lines :)

against

  HA :H0 is not true

 i.e.,   Y = b0 + b1x + b2C + b3C × x + e   (full model:  unrelated lines )

 The fit under the full model is given on a previous page, while the fit under the

reduced model appears next:

  Regression output from R

        Call:
lm(formula = Amount ~ Age)
Coefficients:

Estimate
957.9103
-1.1140

Std. Error  t value  Pr(>|t|)

(Intercept)
Age
---
Residual standard error: 237.7 on 923 degrees of freedom
Multiple R-Squared: 0.002913, Adjusted R-squared: 0.001833
F-statistic: 2.697 on 1 and 923 DF, p-value: 0.1009

31.3056
0.6784

30.599
-1.642

0.101

<2e-16  ***

 The test can be achieved using a partial F-test. Let RSS(Full) be the residual sum
of squares under the full model (i.e., the model which includes all the predictors,
i.e.,  H   A  ) and RSS(Reduced) be the residual sum of squares under the reduced model
(i.e., the model which includes only the predictors thought to be nonzero, i.e.,  H  0 ).
Then the F-statistic is given by

F

=

(
RSS(reduced) RSS(full)

) (

df

reduced

−

df

full

)

−
RSS(full) df

full

 Given below is the output from R associated with this F-statistic:

144

5  Multiple Linear Regression

  Regression output from R

        Analysis of Variance Table
Model 1: Amount ˜ Age
Model 2: Amount ˜ Age + C + C:Age

Res. Df

RSS

Df

Sum of Sq

F

Pr(>F)

923  52158945
921

2089377

1
2
---
Signif. codes:

2

50069568  11035  <2.2e-16  ***

0 ‘***’  0.001 ‘**’  0.01 ‘*’ 0.05  ‘.’ 0.1 ‘‘1

 Calculating by hand we find that

F

=

) (
(
52158945 2089377
−
2089377 921

)
923 921
−

=

25034784
2268.6

=

11035

 which agrees with the result from the R-output.

 As expected there is very strong evidence against the reduced model in favour
of the full model. Thus, we prefer the unrelated regression lines model to the coin-
cident lines model.

  Menu pricing in a new Italian restaurant in New York City (cont.)
 Recall from Chapter 1 and earlier in Chapter 5 that the data are in the form of the
average of customer views on

    Y  = Price = the price (in $US) of dinner (including one drink and a tip)
   x  1  = Food = customer rating of the food (out of 30)
   x  2  = Décor = customer rating of the decor (out of 30)
   x  3  = Service = customer rating of the service (out of 30)
   x  4  = East = dummy variable = 1 (0) if the restaurant is east (west) of Fifth Avenue
 Earlier  in  Chapter  5  we  obtained  what  we  referred  to  as  the  “final  regression

model,” namely

  Price = –24.03 + 1.54 Food + 1.91 Decor + 2.07 East

 In particular, the variable Service had very little effect on Price and was omitted

from the model.

 When the young New York City chef, who plans to create the new Italian res-
taurant in Manhattan, is shown your regression model there is much discussion of
the implications of the model. In particular, heated debate focuses on the statistical
insignificance of the predictor variable Service, since the stated aims of the restau-
rant are to provide the highest quality Italian food utilizing state-of-the-art décor
while  setting  a  new  standard  for  high-quality  service  in  Manhattan.  The  general
consensus from the other members of the team supporting the chef is that the model
is too simple to reflect the reality of Italian restaurants in Manhattan. In particular,
there  is  general  consensus  amongst  the  team  that  restaurants  on  the  east  of  Fifth
Avenue  are  very  different  from  those  on  the  west  side  with  service  and  décor
thought to be more important on the east of Fifth Avenue. As such you have been
asked to consider different models for the East and West.

5.3  Analysis of Covariance

145

 In  order  to  investigate  whether  the  effect  of  the  predictors  depends  on  the
dummy variable East, we shall consider the following model which is an extension
of the  unrelated regression lines  model to more than one predictor variable:

Y

=

b

0

+

b

x
1 1
x
5 1

+

×

b

x
2 2
East

+

b

+

b

x
3 3
x
6 2

+

×

b
4
East

+

b

East

+

b

x
7 3

×

East

+

e

(Full)

 where  x  1  = Food,  x  2  = Décor and  x  3  = Service. Regression output from R showing
the fit of this model appears next:

  Regression output from R

        Call:
lm(formula = Price ~ Food + Decor + Service + East +
Food:East + Decor:East + Service:East)
Coefficients:

Estimate   Std. Error   t value    Pr(>|t|)

8.4672
0.5704
0.2984
0.6443
10.2499
0.7743
0.4570
0.8171

(Intercept)  -26.9949
1.0068
Food
1.8881
Decor
0.7438
Service
6.1253
East
1.2077
Food:East
-0.2500
Decor:East
Service:East  -1.2719
---
Signif.  codes:  0 ‘***’ 0.001  ‘**’ 0.01 ‘*’ 0.05  ‘.’0.1  ‘ ‘  1
Residual standard error: 5.713 on 160 degrees of freedom
Multiple R-Squared: 0.6379,     Adjusted R-squared:0.622
F-statistic: 40.27 on 7 and 160 DF, p-value: <2.2e-16

0.00172
0.07946
2.40e-09
0.25001
0.55095
0.12079
0.58510
0.12151

-3.188
1.765
6.327
1.155
0.598
1.560
-0.547
-1.557

**
.
***

 Notice how none of the regression coefficients for the interaction terms are sta-
tistically  significant.  However,  both  the  interactions  between  Food  and  East  and
Service and East have  p -values equal to 0.12.

 We  next  compare  the  full  model  above  with  what  we  previously  called  the

“final” model. We consider an overall test of

  H0 : b3 = b5 = b6 = b7 = 0

 i.e.,   Y = b0 + b1x1 + b2x2 + b4 East + e

(Reduced   )

 against

 i.e.,

Y

=

b

+

0
b

  HA : H0 is not true

b

+
x
5 1

b

x
1 1
×

+
East

x
2 2
b
+

b

+
x
6 2

b

x
3 3
×

+
East

4
+

East

b

x
7 3

×

East

+

e

(Full)

 The fit under the full model is given above, while the fit under the reduced model
appears next.

146

5  Multiple Linear Regression

  Regression output from R

        Call:
lm(formula = Price ~ Food + Decor + East)
Coefficients:

Estimate  Std. Error  t value  Pr(>|t|)

(Intercept)  -24.0269
1.5363
Food
1.9094
Decor
2.0670
East
---
Residual standard error: 5.72 on 164 degrees of freedom
Multiple R-Squared: 0.6279, Adjusted R-squared:0.6211
F-statistic: 92.24 on 3 and 164 DF,  p-value:<2.2e-16

-5.142  7.67e-07  ***
5.838  2.76e-08  ***
< 2e-16  ***
0.0279  *

4.6727
0.2632
0.1900
0.9318

10.049
2.218

 The test of whether the effect of the predictors depends on the dummy variable

East can be achieved using the following partial F-test:

F

=

(
RSS(reduced) RSS(full)

) (
df

reduced

−

df

)full

−
RSS(full) df

full

 Given below is the output from R associated with this F-statistic:

  Regression output from R

        Analysis of Variance Table
Model 1: Price ~ Food + Decor + East
Model 2:  Price ~ Food + Decor + Service + East + Food:East +
Decor:East
Res.Df
164
160

+ Service:East
RSS  Df  Sum of Sq

5366.5
5222.2

1.1057

Pr(>F)

0.3558

144.4

1
2

F

4

 Given  the   p -value  equals  0.36,  there  is  little,  if  any,  evidence  to  support  the
alternative  hypothesis  (i.e.,  the  need  for  different  models  for  the  East  and  West).
This means that we are happy to adopt the reduced model:

  Y = b0 + b1x1 + b2x2 + b4 East + e

(Reduced)

  5.4  Exercises

     1.     This  problem  is  based  on  CASE  32  –  Overdue  Bills  from  Bryant  and  Smith
(1995). Quick Stab Collection Agency (QSCA) is a bill-collecting agency that
specializes  in  collecting  small  accounts.  To  distinguish  itself  from  competing
collection agencies, the company wants to establish a reputation for collecting
delinquent accounts quickly. The marketing department has just suggested that
QSCA adopt the slogan: “Under 60 days or your money back!!!!”

 You have been asked to look at account balances. In fact, you suspect that the
number of days to collect the payment is related to the size of the bill. If this is

5.4  Exercises

147

the case, you may be able to estimate how quickly certain accounts are likely to
be collected, which, in turn, may assist the marketing department in determining
an appropriate level for the money-back guarantee.

 To test this theory, a random sample of accounts closed out during the months
of January through June has been collected. The data set includes the initial size
of the account and the total number of days to collect payment in full. Because
QSCA  deals  in  both  household  and  commercial  accounts  in  about  the  same
proportion, an equal number have been collected from both groups. The first 48
observations in the data set are residential accounts and the second 48 are com-
mercial accounts. The data can be found on the book web site in the file named
overdue.txt. In this data set, the variable LATE is the number of days the pay-
ment is overdue, BILL is the amount of the overdue bill in dollars and TYPE
identifies whether an account is RESIDENTIAL or COMMERCIAL.

 Develop a regression model to predict LATE from BILL.

   2.     On July 23, 2006, the  Houston Chronicle  published an article entitled “Reading:
First-grade standard too tough for many”. The article claimed in part that “more
students  (across  Texas)  are  having  to  repeat  first  grade.  Experts  attribute  the
increase partially to an increase in poverty.” The article presents data for each of
61 Texas counties on

    Y  = Percentage of students repeating first grade
   x =  Percentage of low-income students

 for both 2004–2005 and 1994–1995. The data can be found on the book web site
in the file HoustonChronicle.csv. Use analysis of covariance to decide whether:

  (a)  An increase in the percentage of low income students is associated with an

increase in the percentage of students repeating first grade.

  (b)  There has been an increase in the percentage of students repeating first grade

between 1994–1995 and 2004–2005

  (c)  Any association between the percentage of students repeating first grade and the
percentage of low-income students differs between 1994–1995 and 2004–2005.

   3.     Chateau Latour is widely acknowledged as one of the world’s greatest wine estates
with a rich history dating back to at least 1638. The Grand Vin de Chateau Latour
is a wine of incredible power and longevity. At a tasting in New York in April 2000,
the 1863 and 1899 vintages of Latour were rated alongside the 1945 and the 1961
vintages as the best in a line-up of 39 vintages ranging from 1863 to 1999 ( Wine
Spectator , August 31, 2000). Quality of a particular vintage of Chateau Latour has
a huge impact on price. For example, in March 2007, the 1997 vintage of Chateau
Latour could be purchased for as little as $159 per bottle while the 2000 vintage of
Chateau Latour costs as least $700 per bottle (  www.wine-searcher.com    ).

 While many studies have identified that the timing of the harvest of the grapes
has an important effect on the quality of the vintage, with quality improving the
earlier the harvest. A less explored issue of interest is the effect of unwanted rain
at vintage time on the quality of icon wine like Chateau Latour. This question
addresses this issue.

148

5  Multiple Linear Regression

 The  Chateau  Latour  web  site  (  www.chateau-latour.com    )  provides  a  rich
source of data. In particular, data on the quality of each vintage, harvest dates
and weather at harvest time were obtained from the site for the vintages from
1961 to 2004. An example of the information on weather at harvest time is given
below for the 1994 vintage:

 Harvest  began  on  the  13th  September  and  lasted  on  the  29th,  frequently  interrupted  by
storm showers. But quite amazingly the dilution effect in the grapes was very limited ….
(  http://www.chateau-latour.com/commentaires/1994uk.html”    ; Accessed: March 16, 2007)

 Each vintage was classified as having had “unwanted rain at harvest” (e.g., the
1994 vintage) or not (e.g., the 1996 vintage) on the basis of information like that
reproduced above. Thus, the data consist of:

 Vintage = year the grapes were harvested
 Quality – on a scale from 1 (worst) to 5 (best) with some half points
 End of harvest – measured as the number days since August 31
 Rain – a dummy variable for unwanted rain at harvest = 1 if yes.
 The data can be found on the book web site in the file latour.csv.
 The first model considered was:

Quality

=

b

0

+

+

b
1
b

3

End of Harvest
End of Harvest Rain e
+

Rain

+

b

×

2

(5.10)

 A plot of the data and the two regression lines from model (5.10) can be found
in Figure  5.8 . In addition, numerical output appears below.

   (a)     Show that the coefficient of the interaction term in model (5.10) is statisti-
cally significant. In other words, show that the rate of change in quality rat-
ing depends on whether there has been any unwanted rain at vintage.

   (b)    Estimate  the  number  of  days  of  delay  to  the  end  of  harvest  it  takes  to

decrease the quality rating by 1 point when there is:

   (i)     No unwanted rain at harvest
   (ii)     Some unwanted rain at harvest

  Regression output from R

             Call:
lm(formula = Quality ~ EndofHarvest + Rain +
Rain:EndofHarvest)
Coefficients:

Estimate  Std. Error  t value  Pr(>|t|)

5.16122
(Intercept)
-0.03145
EndofHarvest
Rain
1.78670
EndofHarvest:Rain  -0.08314
---
Residual  standard  error:  0.7578  on  40 degrees  of freedom
Multiple  R-Squared:  0.6848,
Adjusted R-squared: 0.6612
F-statistic:  28.97 on 3 and

0.68917
0.01760
1.31740
0.03160

0.0816 .
0.1826
0.0120 *

40 DF, p-value: 4.017e-10

-1.787
1.356
-2.631

7.489  3.95e-09 ***

5.4  Exercises

149

y
t
i
l

a
u
Q

5

4

3

2

1

Rain at Harvest?
No
Yes

20

25

30

35

40

45

50

55

End of Harvest (in days since August 31)

  Figure 5.8

  A scatter plot of Quality versus End of Harvest for Chateau Latour

Call:
lm(formula = Quality ~ EndofHarvest + Rain)
Coefficients:

Estimate  Std. Error  t value  Pr(>|t|)

(Intercept)
6.14633
EndofHarvest  -0.05723
-1.62219
Rain
---
Residual standard error: 0.8107 on 41 degrees of freedom
Multiple R-Squared: 0.6303,
F-statistic: 34.95 on 2 and 41 DF,  p-value: 1.383e-09

9.930  1.80e-12  ***
-3.660  0.000713  ***
-6.367  1.30e-07  ***

0.61896
0.01564
0.25478

Adjusted R-squared: 0.6123

Analysis of Variance Table
Model 1: Quality ~ EndofHarvest + Rain
Model 2: Quality ~ EndofHarvest + Rain + Rain:EndofHarvest

Res.Df

RSS  Df  Sum of Sq

F

Pr(>F)

1
2

41  26.9454
40  22.9705

1

3.9749

6.9218  0.01203  *

   Chapter 6
  Diagnostics and Transformations for Multiple
Linear Regression

 In the previous chapter we studied multiple linear regression. Throughout Chapter 5,
we  assumed  that  the  multiple  linear  regression  model  was  a  valid  model  for  the
data. Thus, we implicitly made a series of assumptions. In this chapter we consider
a series of tools known as regression diagnostics to check each of these assump-
tions. Having used these tools to diagnose potential problems with the assumptions,
we look at how to first identify and then overcome or deal with common problems
such as nonlinearity and nonconstant variance.

  6.1  Regression Diagnostics for Multiple Regression

 We next look at regression diagnostics in order to check the validity of all aspects
of a regression model. When fitting a multiple regression model we will discover
that it is important to:

   1.     Determine whether the proposed regression model is a valid model (i.e., determine
whether it provides an adequate fit to the data). The main tools we will use to
validate regression assumptions are plots involving  standardized residuals  and/
or  fitted values . We shall see that these plots enable us to assess visually whether
the assumptions are being violated and,  under certain conditions , point to what
should be done to overcome these violations. We shall also consider a tool, called
 marginal model plots , which have wider application than residual plots.

   2.     Determine which (if any) of the data points have predictor values that have an
unusually  large  effect  on  the  estimated  regression  model.  (Recall  that  such
points are called  leverage points .)

   3.     Determine which (if any) of the data points are  outliers , that is, points which do
not follow the pattern set by the bulk of the data, when one takes into account
the given model.

   4.     Assess  the  effect  of  each  predictor  variable  on  the  response  variable,  having
adjusted for the effect of other predictor variables using  added variable plots .
   5.     Assess the extent of  collinearity  among the predictor variables using  variance

inflation factors .

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_6, © Springer Science + Business Media LLC 2009

151

152

6  Diagnostics and Transformations for Multiple Linear Regression

   6.     Examine whether the assumption of constant error variance is reasonable. If not,

decide how can we overcome this problem.

   7.     If the data are collected over time, examine whether the data are correlated over

time.

 We shall begin by looking at the second item of the above list, leverage points, as
once  again,  these  will  be  needed  in  the  definition  of  standardized  residuals.
However, before we begin let’s briefly review some material from Chapter 5.

  Matrix formulation of least squares regression
 Define the   (n × 1)   vector,   Y   and the   n × (p +1)   matrix,   X   by

Y

=

⎛
⎜
⎜
⎜
⎜
⎝

y
1
y
2
⋮

y

n

⎞
⎟
⎟
⎟
⎟
⎠

X

=

1

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

x
1
x

2

p

p

⋯

x
11

⋯

21

x
⋮

x

n
1

⋯

x

np

⎞
⎟
⎟
⎟
⎟
⎠

Also  define  the    (p  +  1) × 1    vector,    b    of  unknown  regression  parameters  and  the
  (n × 1)  vector,   e   of random errors

b

=

⎛
⎜
⎜
⎜
⎜
⎝

b

0
b
1
⋮

b

p

⎞
⎟
⎟
⎟
⎟
⎠

e

=

⎛
⎜
⎜
⎜
⎜
⎝

e
1
e
2
⋮

e
n

⎞
⎟
⎟
⎟
⎟
⎠

 As in (5.3), we can write the multiple linear regression model in matrix notation as

 Y = X b + e

 (6.1)

 where   Var(e) = σ2Ι   and Ι     is the (n × n)     identity matrix. Recall from (5.6) to (5.8)
that the fitted values are given by

 where

 and the residuals are given by

  Yˆ = Xbˆ

  bˆ = (X¢ X)-1 X¢Y

  ê = Y−Yˆ = Y− Xbˆ

  6.1.1  Leverage Points in Multiple Regression

 (6.2)

 (6.3)

 (6.4)

Recall that data points which exercise considerable influence on the fitted model
are called  leverage points . Recall also that leverage measures the extent to which

6.1  Regression Diagnostics for Multiple Regression

153

the  fitted  regression  model  is  attracted  by  the  given  data  point.  We  are  therefore
interested in the relationship between the fitted values   Yˆ and Y  .

 From (6.2) and (6.3)

ˆ
Y X
=

ˆ
b

=

 where

-
1
X X X X Y HY

=′

(

)

′

H X X X X-
(
′

=

)

1

′

 (6.5)

 The   (n × n)   matrix  H  is commonly called the  hat matrix  since pre-multiplying  Y
by  H  changes  Y  into   Yˆ  . According to Hoaglin and Welsh (1978, p. 17) the term hat
matrix is due to John Tukey, who coined the term in the 1960s.

 Let  h   ij   denote the ( i , j )th element of  H , then

ˆ
Y
i

=

h Y
ii
i

h Y
ij

j

+ ∑

j

≠

i

 where  h   ii   denotes the  i th diagonal element of  H . Thus, as we saw in Chapter 3,  h   ii
measures the extent to which the fitted regression model   Yˆi   is attracted by the given
data point,  Y   i  .
  Special case: Simple linear regression

 Consider the simple linear regression model in matrix form

 where   X   is given by

Y X

b=

+

e
.

X

=

1

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

x
1

x
2
⋮

x

n

⎞
⎟
⎟
⎟
⎟
⎠

 We found in Chapter 5 that

(
X X
′

1
−

)

=

1
SXX

n

∑

1
n

⎛
⎜
i
=
⎜
⎝ −

1
x

2
x
i

−

x

1

⎞
⎟
⎟
⎠

 Putting all the pieces together we find that

H X X X X

)

(

=

′

1
−

′
x
1

x
2
⋮

x

n

=

1
1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

⎞
⎟
⎟
⎟
⎟
⎠

1
SXX

n

∑

1
n

⎛
⎜
i
=
⎜
⎝ −

1
x

2
x
i

−

x

1

⎞
⎟
⎟
⎠

⎛
⎜
⎝

1 1
x x
1

2

⋯

…

1
x

n

⎞
⎟
⎠

154

6  Diagnostics and Transformations for Multiple Linear Regression

 After  multiplication  and  simplification  we  find  that  the  ( i , j )  th  element  of   H   is
given by

h
ij

=

1
n

+

(

x
i

−

x x
)(

j

−

x

)

SXX

=

1
n

(

x
i

−
n

+

x x
)(

j

−

x

)

−∑
x
(

j

j

=

1

2

x

)

 as we found in Chapter 3.

  Rule for identifying leverage points

 A popular rule, which we shall adopt, is to classify the  i th point as a point of high lever-
age (i.e., a leverage point) in a multiple linear regression model with  p  predictors if

h
ii

> ×

2 average (

h
ii

)

2
= ×

)1

(

p

+
n

  6.1.2  Properties of Residuals in Multiple Regression

 Recall from (6.4) and (6.5) that the vector of residuals is given by

ê = Y−Ŷ = Y − HY =(I − H)Y

 where      H = X(X′X)−1X′.

 The  expected value  of the vector of  residuals  is

(
ˆE |
e

X

) (
I
=
I
(
=

−

−

H

) ( )
Y
E
H X
)
b

X X X

(

′

1
−

)

X X
′

b

X

b

=

=

=

X

b

X

b

−

−

0

 The  variance  of the vector of  residuals  is

(
ˆVar
e

| X

)

=

=

=

=

=

=

′

′

2

2

s

)

Var

)
)
−

( )(
(
Y I H
I H
−
−
)
(
(
I I H
I H
−
−
)
)(
(
I H I H
s
′
(
IH HI HH
II
′
+
)
(
I H H H
−
)
(
I H
−

′ −

s

s

s

−

−

+

−

′

′

2

2

2

′

)

 since   HH′ = H2 = X(X′X)-1X′X(X′X)-1X′=X(X′X)-1X′ = H

6.1  Regression Diagnostics for Multiple Regression

155

  Standardized residuals

 The  i th least squares residual has variance given by

ˆVar (
e
i

)

s=

2

[
1

−

h
ii

]

 where   hii   is the  i th diagonal element of  H . Thus, the  i th  standardized residual ,  r   i   is
given by

r
i

=

s

ˆ
e
i
−

1

h
ii

n

+ ∑   is the usual estimate of   s   .
1)

ˆ
e

2
j

j

=

1

s
 where

=

1
p
(

n

−

 We shall follow the common practice of labelling points as  outliers  in small to
moderate size data sets if the standardized residual for the point falls outside the
interval from  -2 to 2 . In very large data sets, we shall change this rule to  -4 to 4 .
(Otherwise, many points will be flagged as potential outliers.) Recall, however, that
a point can only be declared to be an outlier, only after we are convinced that the
model under consideration is a valid one.

  Using residuals and standardized residuals for model checking
 In its simplest form, a multiple linear regression model is a  valid model  for the data
if the conditional mean of  Y  given  X  is a linear function of  X  and the conditional
variance of  Y  given  X  is constant. In other words,

E(

Y X x

=

|

)

=

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

p

and

Var (

Y X x

=

|

)

=

s

2

.

 When a  valid model  has been fit, a plot of standardized residuals,  r   i   against any
predictor or any linear combination of the predictors (such as the fitted values) will
have the following features:
  ▪

 A random scatter of points around the horizontal axis, since the mean function
of the  e   i   is zero when a correct model has been fit
 Constant variability as we look along the horizontal axis

 ▪

 An  implication  of  these  features  is  that   any  pattern  in  a  plot  of  standardized
residuals is indicative that an invalid model has been fit to the data .

 In multiple regression, plots of residuals or standardized residuals provide direct
information on the way on which the model is misspecified when the following two
conditions hold:

 and

E(

Y X x

=

|

)

=

g

(

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

)

p

E(

X X
|
i

j

)

≈

a

0

+

a

1

X

j

 (6.6)

 (6.7)

156

6  Diagnostics and Transformations for Multiple Linear Regression

 This finding is based on the work of Li and Duan (1989 ). The linearity condition
(6.7)  is  just  another  way  to  say  that  the  distribution  of  the  predictors  follow  an
elliptically symmetric distribution. Note that if the  X ’s follow a multivariate normal
distribution then this is stronger than condition (6.7).

 Furthermore, when (6.6) and (6.7) hold, then the  plot of   Y   against fitted values,
  Yˆ   provides direct information about  g . In particular, in the usual multiple regression
model  g  is the identity function (i.e.,  g ( x ) =  x ). In this case the plot of  Y  against   Yˆ
should produce points scattered around a straight line.

  If either condition (6.6) or (6.7) does not hold, then a pattern in a residual plot
indicates  that  an  incorrect  model  has  been  fit,  but  the  pattern  itself  does  not
provide direct information on how the model is misspecified.  For example, we shall
see shortly that in these circumstances it is possible for the standardized residuals
to display nonconstant variance when the errors in fact have constant variance but
the  conditional  mean  is  modelled  incorrectly.  Cook  and  Weisberg  (1999a ,  p.  36)
give the following advice for this situation:

 Using  residuals  to  guide  model  development  will  often  result  in  misdirection,  or  at  best
more work than would otherwise be necessary.

 To understand how (6.7) affects the interpretability of residual plots we shall consider
the following stylized situation in which the true model is

y
i

=

b

0

+

b

x
i
1 1

+

b

x
2 2

i

+

b

x
3 3

i

e
+
i

 and that  x   1   and  x   3   and  x   2   and  x   3   are nonlinearly related (i.e., that (6.7) does not hold).
Suppose that we fit a model without the predictor  x  3  and obtain the following least
squares fitted values

ˆi
y

=

ˆ
b

0

ˆ
x
b
i
1 1

+

ˆ
b

+

x
2 2

i

 Thus, the residuals are given by

ˆ
e
i

=

y
i

−

ˆ
y
i

=

(

b

0

−

ˆ
b

)

+

(

b
1

0

−

ˆ
b
1

)

x
i
1

+

(

b

2

−

ˆ
b

2

)

x

2

i

+

b

x
3 3

i

e
+
i

 Then, due to the term   b3x3   and the fact that  x   1   and  x   3   are nonlinearly related, the
residuals plotted against  x   1   would show a potentially misleading nonrandom nonlinear
pattern in  x  1 . Similarly, residuals plotted against  x  2  would show a potentially mis-
leading nonrandom nonlinear pattern in  x  2 . In summary, in this situation the residual
plots would show nonrandom patterns indicating that an invalid model has been fit
to the data. However, the nonrandom patterns do not provide direct information on
how the model is misspecified.

  Menu pricing in a new Italian restaurant in New York City (cont.)

 Recall from Chapter 1 that you have been asked to produce a regression model to
predict the price of dinner. Data from surveys of customers of 168 Italian restau-
rants  in  the  target  area  are  available.  The  data  are  in  the  form  of  the  average  of
customer views on

6.1  Regression Diagnostics for Multiple Regression

157

  Y  = Price = the price (in $US) of dinner (including one drink and a tip)
  x  1 = Food = customer rating of the food (out of 30)
  x  2 = Décor = customer rating of the decor (out of 30)
  x  3 = Service = customer rating of the service (out of 30)
  x  4 = East = dummy variable = 1 (0) if the restaurant is east (west) of Fifth Avenue

 The data are given on the book web site in the file nyc.csv.

 Recall further that interest centers on developing a regression model that directly

predicts Price and so we began by considering the following model:

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

e
+

(6.8)

 We begin by looking at the validity of condition (6.7) above. Figure  6.1  shows a
scatter  plot  matrix  of  the  three  continuous  predictors.  The  predictors  seem  to  be
related linearly at least approximately.

10

15

20

25

Food

25

20

15

10

Decor

Service

16

18

20

22

24

14 16 18 20 22 24

  Figure 6.1

  Scatter plot matrix of the three continuous predictor variables

24

22

20

18

16

24

22

20

18

16

14

158

6  Diagnostics and Transformations for Multiple Linear Regression

 Assuming that condition (6.6) holds we next look at plots of standardized residu-
als  against  each  predictor  (see  Figure   6.2 ).  The  random  nature  of  these  plots  is
indicative that model (6.8) is a valid model for the data.

   Finally, Figure  6.3  shows a plot of  Y , price against fitted values,   Yˆ  . We see from
this figure that  Y  and   Yˆ   appear to be linearly related, i.e., that condition (6.6) appears

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1
0

−2

3
2
1
0

−2

16

18

20

22

24

Food

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1
0

−2

3
2
1
0

−2

10

15

20

25

Decor

14

16

18

20

22

24

0.0 0.2 0.4 0.6 0.8 1.0

Service

East

  Figure 6.2

  Plots of standardized residuals against each predictor variable

e
c
i
r

P

60

50

40

30

20

20

30

40

50

60

Fitted Values

  Figure 6.3

  A plot of Price against fitted values

6.1  Regression Diagnostics for Multiple Regression

159

to hold with  g  equal to the identity function. This provides a further indication that
(6.8) is a valid model.

  Generated example for which condition (6.6) does not hold

 In this example we look at a generated data set for which condition (6.6) does not
hold. The example is taken from Cook and Weisberg (1999a , p. 36). The data are
available  in  the  R-library,  alr3  in  the  file  called  caution.  According  to  Cook  and
Weisberg (1999, p. 36), “… the  p  = 2 predictors were sampled from a Pearson type
II distribution on the unit disk, which is an elliptical distribution,” which satisfies
condition (6.7). The mean function was chosen to be

E(

Y X
|

)

=

|

|

x
1
2 (1.5
+

+

=

g x
(
1
1
g x
(
2

2

)
)

x

2

2

)

 This clearly does not satisfy condition (6.6) since two functions, rather than one,
are needed to model  Y | X . The errors were chosen to be normally distributed with
mean 0 and variance 1 and the data set consists of 100 cases.

 Figure  6.4  shows a scatter plot matrix of the data. The predictor variables  x   1   and
 x   2   are close to being uncorrelated with   corr(x1, x2) = − 0.043   and there is no evidence
of a nonlinear relationship between  x  1  and  x  2 .

 We begin by considering the following model:

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

e
+

 even though condition (6.6) does not hold.

 We next look at plots of standardized residuals against each predictor and the
fitted values (see Figure  6.5 ). The nonrandom nature of these plots is indicative that
model is not a valid model for the data. The usual interpretations of the plots of
standardized  residuals  against   x  2   and  fitted  values  are  indicative  of  nonconstant
error variance. However, this is not true in this case, as the error variance is con-
stant. Instead the mean function of the model is misspecified. Since condition (6.6)
does not hold, all we can say in this case is that an invalid model has been fit to the
data.   Based  on  residual  plots,  we  cannot  say  anything  about  what  part  of  the
model is misspecified.

 Finally, Figure  6.6  shows a plot of  Y  against fitted values,   Yˆ  . We see from this
figure that  Y  does not seem to be a single function of   Yˆ  , i.e., that condition (6.6)
appears not to hold.

  Next steps:

 In this example, since there are just two predictor variables, a three-dimensional
plot of  Y  against the predictors will reveal the shape of the mean function. In a
situation  with  more  than  two  predictor  variables,  methods  exist  to  directly

160

6  Diagnostics and Transformations for Multiple Linear Regression

−0.5

0.0

0.5

1.0

y

1.0

0.5

0.0

−0.5

0.8

0.6

0.4

0.2

0.0

1.0

0.5

0.0

−0.5

−1.0

x1

x2

0.0 0.2 0.4 0.6 0.8

−1.0 −0.5 0.0

0.5

1.0

  Figure 6.4

  Scatter plot matrix of the response and the two predictor variables

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1
0

−2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1
0

−2

−0.5

0.0

x1

0.5

1.0

−1.0

−0.5

0.5

1.0

0.0

x2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1
0

−2

0.05

0.15

0.25

0.35

Fitted Values

  Figure 6.5

  Plots of standardized residuals against each predictor and the fitted values

6.1  Regression Diagnostics for Multiple Regression

161

0.8

0.6

y

0.4

0.2

0.0

0.05

0.10

0.15

0.20

0.25

0.30

0.35

Fitted Values

  Figure 6.6

  A plot of  Y  against fitted values

 estimate  more  than  one   g -function  and  to  determine  the  number  of   g -functions
required. One such method, which was developed by Li (1991) is called Sliced
Inverse  Regression  (or  SIR).  Unfortunately,  a  discussion  of  SIR  is  beyond  the
scope of this book.

  Generated example for which condition (6.7) does not hold

 In this example we look at a generated data set for which condition (6.7) does
not  hold.  The  data  consist  of   n   =  601  points  generated  from  the  following
model

where

Y

=

x
1

+

2

x
23

+
e

E(

x

2

|

x
1

)

=

sin(

x
1

)

  x  1  is equally spaced from -3 to 3 and the errors are normally distributed with standard
deviation equal to 0.1. The data can be found on the book website in the file called
nonlinear.txt. Figure  6.7  shows scatter plots of the data. There nonlinear relationship
between  x  1  and  x  2  is clearly evident in Figure  6.7 .

162

6  Diagnostics and Transformations for Multiple Linear Regression

y

4

2

0

−2

y

4

2

0

−2

−3

−1 0

1

2

3

−1.0

x1

1.0

2
x

0.0

−1.0

0.5

1.0

0.0

x2

−3

−1

0

1

2

3

x1

  Figure 6.7

  Scatter plots of the response and the two predictor variables

 We begin by considering the following model:

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

e
+

 even though condition (6.7) does not hold. Figure  6.8  shows plots of standardized
residuals against each predictor and the fitted values. The nonrandom nature of these
plots is indicative that model is not a valid model for the data. The usual interpreta-
tion of the plot of standardized residuals against  x  1  is that a periodic function of  x  1  is
missing from the model. However, this is not true in this case. The highly nonlinear
relationship between the two predictors has produced the nonrandom pattern in the
plot of standardized residuals against  x  1 . Since (6.7) does not hold, all we can say in
this case is that model fit to the data is invalid.  Based on residual plots, we cannot
say anything about what part of the model is misspecified.

  6.1.3  Added Variable Plots

 Added-variable plots enable us to visually assess the effect of each predictor, having
adjusted for the effects of the other predictors.

 Throughout this section we shall assume that our current regression model is the

multiple linear regression model,

6.1  Regression Diagnostics for Multiple Regression

163

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1.0

0.0

−1.5

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1.0

0.0

−1.5

−3

−1

0

x1

1

2

3

−1.0

0.5

1.0

0.0

x2

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1.0

0.0

−1.5

−1

0

1

2

3

4

Fitted Values

  Figure 6.8

  Plots of standardized residuals against each predictor and the fitted values

Y X

b=

+

e

(6.9)

 where   Var(e) = s 2 I   and   I   is the   (n × n)   identity matrix and the   (n × 1)   vector,   Y   the
n × (p + 1)   matrix,   X   and the   (n ×1)   vector   b   are given by

Y

=

⎛
⎜
⎜
⎜
⎜
⎝

y
1
y
2
⋮

y

n

⎞
⎟
⎟
⎟
⎟
⎠

  X

=

1

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

⋯

⋯

x
11

x

21

x
1
x

2

p

p

⋮

x

n
1

⋯

x

np

⎞
⎟
⎟
⎟
⎟
⎠

b

=

⎛
⎜
⎜
⎜
⎜
⎝

b

0
b
1
⋮

b

p

⎞
⎟
⎟
⎟
⎟
⎠

 Further, suppose that we are considering the introduction of an additional predictor
variable  Z  to model (6.9). In other words, we are considering the model

Y X
=

b

+

Z

a

+

e

(6.10)

 where

Z

=

⎛
⎜
⎜
⎜
⎜
⎝

z
1

z
2
⋮

z

n

⎞
⎟
⎟
⎟
⎟
⎠

164

6  Diagnostics and Transformations for Multiple Linear Regression

In particular, we are interested in   a  , the regression coefficient measuring the effect
of  Z  on  Y , having adjusted for the effect of  X  on  Y . The  added-variable plot  for
predictor variable  Z  enables us to visually estimate   a  . The added-variable plot is
obtained by plotting on the vertical axis the residuals from model (6.9) against on
the horizontal axis the residuals from model

Z X e
 (6.11)
   = δ +
 Notice that the residuals from model (6.9) give that part of  Y  that is not predicted by
 X  while the residuals from model (6.11) give that part of  Z  that is not predicted
by  X . Thus, the added-variable plot for predictor variable  Z  shows that part of  Y
that is not predicted by  X  against that part of  Z  that is not predicted by  X  (i.e., the
effects due to  X  are removed from both axes). The added-variable plot was intro-
duced by Mosteller and Tukey (1977).

  Mathematical justification for added-variable plots

 In what follows, we follow the approach taken by Chatterjee and Hadi (1988,
pp. 54–56). The vector of residuals from model (6.9) is given by

ˆ
e

Y X
.

=

ˆ

)
Y Y Y H Y I H Y
X

(

=

=

−

−

−

X

where

=XH

′

(

′.

1
)−

X X X X    Multiplying equation (6.10) by  (
(
(
)
I H Y I H X
=
X
)
(
I H Z
X

(
)
I H Z
X
)
(
I H e
X

)

a

a

−

+

=

−

−

−

−

b

+

+

X

)
I H  results in
− X
(
)
I H e
X

−

   (6.12)

)
 since(
X X X
(
=
is just the vector of residuals from model (6.9).

(
I H X I X X
=

X

X

)

−

=

−

−

1
−

)

′

′

X

0.

     Notice that  (

)X
I H Y e

=

−

Y.Xˆ

 We  next  consider  the  first  term  on  the  right-hand  side  of  (6.12),  namely,
(
)X
−I H Z   Notice  that  the  multiple  linear  regression  model  (6.11)  has  residuals
given by

a.

ˆ
e

Z.X

=

ˆ

Z Z Z H Z

=

−

−

X

=

(
)
I H Z
X

−

    where

H

′
 Thus (6.12) can be rewritten as

X XX

X
.
′

=

)

(

X

1
−

X

−

)

)
(
  (
I H Y I H Z
=
ˆ
ea
e
+

i.e.

−

=

ˆ
e

X

Y.X

Z.X

a

+

(
)
I H e
X

−

* (Added-variable plot model)

(
I H e  Thus, a is the slope parameter in a regression of   Y.Xˆe
−

)X

.

e

*

=

where
the residuals from the regression of  Y  on  X ) on
ˆa
regression  of   Z   on   X ).  Let
parameter in a regression of  Y.Xˆe
.ˆ Z Xe
on
is  equal  to

    (i.e.,
    (i.e., the residuals from  the
    denote  the  least  squares  estimate  of  the  slope
AVP
     (i.e., the residuals from the regression of  Y  on  X )

Z.Xˆe

ˆa ,  the  least  squares  estimate  of  a  in  model  (6.10).  Furthermore,

    (i.e., the residuals from the regression of  Z  on  X ). It can be shown that

ˆa

AVP

LS

6.1  Regression Diagnostics for Multiple Regression

165

assuming  that  (6.10)  is  a  valid  model  for  the  data,  then  the  added-variable  plot
should produce points randomly scattered around a line through the origin with slope
ˆa   .  This  plot  will  also  enable  the  user  to  identify  any  data  points  which  have
   LS
undue influence on the least squares estimate of a    .

  Menu pricing in a new Italian restaurant in New York City (cont.)

 Recall from Chapter 1 that you have been asked to produce a regression model to predict
the price of dinner. The data are in the form of the average of customer views on

  Y  = Price = the price (in $US) of dinner (including one drink and a tip)
  x  1 = Food = customer rating of the food (out of 30)
  x  2 = Décor = customer rating of the decor (out of 30)
  x  3 = Service = customer rating of the service (out of 30)
  x  4 = East = 1 (0) if the restaurant is east (west) of Fifth Avenue

 The data are given on the book web site in the file nyc.csv.

 Recall further that interest centers on developing a regression model that directly

predicts Price and so we began by considering the following model:

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

e
+

(6.13)

Figure  6.9  contains a plot of  Y , Price against each predictor. Added to each plot is
the least squares line of best fit for a simple linear regression of Price on that predic-
tor variable.

e
c
i
r

P

e
c
i
r

P

60

40

20

60

40

20

16

18

22

24

20
Food

e
c
i
r

P

e
c
i
r

P

60

40

20

60

40

20

10

15
Decor

20

25

14

16

18

20

22

24

0.0 0.2 0.4 0.6 0.8 1.0

Service

East

  Figure 6.9

  A scatter plot of  Y , price against each predictor

166

6  Diagnostics and Transformations for Multiple Linear Regression

A shortcoming of each plot in Figure  6.9  is that it looks at the effect of a given
predictor  on   Y ,  Price,  ignoring  the  effects  of  the  other  predictors  on  Price.  This
shortcoming is overcome by looking at added-variable plots (see Figure  6.10 ). The
lack of statistical significance of the regression coefficient associated with the variable
Service is clearly evident in the bottom left-hand plot of Figure  6.10 . Thus, having
adjusted for the effects of the other predictors, the variable Service adds little to the
prediction of  Y , Price. Two points are identified in the top left-hand plot as having
a large influence on the least squares estimate of the regression coefficient for Food.
These points correspond to cases 117 and 168 and should be investigated. Case 117
corresponds to a restaurant called Veronica which has very low scores for Décor
and Service, namely 6 and 14, respectively while achieving a relatively high food
score  of  21  given  a  price  of  $22.  Case  168  corresponds  to  a  restaurant  called
Gennaro, which has low scores for Décor and Service, namely 10 and 16, respec-
tively  while  achieving  a  high  food  score  of  24  for  a  relatively  low  price  of  $34.
Gennaro, still in existence at the end of 2007, is described in the  2008 Zagat Guide
to New York City Restaurants  as follows:

 Upper  Westsiders  gennar-ally   gush  over  this  “unassuming”  cash-only  Italian  “gem”,  citing
“sophisticated” preparations at “bargain” prices; to cope with “awful lines”, “crapshoot” service
and a room “packed tighter than a box of pasta”, go at off-hours.

Added−Variable Plot

Added−Variable Plot

168

117

s
r
e
h
t
o

|

e
c
i
r

P

0
1

0
1
−

−2

0

2

4

6

Food | others

−6

−2 0

2

4

6

Decor | others

Added−Variable Plot

Added−Variable Plot

s
r
e
h

t

o

|

e
c
i
r

P

15

5

−5

−15

s
r
e
h
t
o

|

e
c
i
r

P

15

5

−5

−15

s
r
e
h

t

o

|

e
c
i
r

P

15

5

−5

−15

−3

−1 0
Service|Others

1

2

−0.5

0.0

0.5

East|Others

  Figure 6.10

  Added-variable plots for the New York City restaurant data

6.2  Transformations

  6.2  Transformations

167

 In this section we shall see how transformations in multiple regression can be used to:
  ▪
 ▪

 Overcome problems due to nonlinearity
 Estimate percentage effects

  6.2.1  Using Transformations to Overcome Nonlinearity

 In this section we consider the following two general methods for transforming the
response variable  Y  and/or the predictor variables  X  1 ,  X  2 ,  … ,  X   p   to overcome prob-
lems due to nonlinearity:
  ▪
 ▪

 Inverse response plots
 Box-Cox procedure

 There are three situations we need to consider (a) only the response variable needs
to be transformed; (b) only the predictor variables needs to be transformed; and (c)
both  the  response  and  predictor  variables  need  to  be  transformed.  We  begin  by
looking at the first situation.

  Transforming only the response variable Y using inverse regression

 Suppose that the true regression model between Y and  X  1 ,  X  2 ,  … ,  X   p   is given by

Y

=

g

(

b

0

+

b

x
1 1

+

b

x
2 2

+ …+

b

x

p

p

+

e

)

 where   g   is  a  function  which  is  generally  unknown.  The  previous  model  can  be
turned into a multiple linear regression model by transforming  Y  by  g  –1 , the inverse
of  g , since,

1
−
g Y
( )

=

b

0

+

b

x
1 1

+

b

x
2 2

+ …+

b

x

p

p

e
+

 For example suppose that

Y

=

exp(

b

+

b

x
1 1

+

b

x
2 2

0

+ …+

b

x

p

p

+

e

)

then,

g Y
( )

=

exp( ) and so

Y

1
−
g Y
( )

=

Y
log( ).

 We next look at methods for estimating  g  –1 .

  Example: Modelling defective rates

 This example is adapted from Siegel (1997, pp. 509–510). According to Siegel:

 Everybody seems to disagree about just why so many parts have to be fixed or thrown away
after they are produced. Some say that it’s the standard deviation of the temperature of the
production process, which needs to be minimised. Others claim it is clearly the density of

168

6  Diagnostics and Transformations for Multiple Linear Regression

the product, and that the problems would disappear if the density is increased. Then there
is  Ole,  who  has  been  warning  everyone  forever  to  take  care  not  to  push  the  equipment
beyond its limits. This problem would be easiest to fix, simply by slowing down the production
rate; however, this would increase some costs. The table below gives the average number
of defects per 1,000 parts produced (denoted by Defective) along with values of the other
variables described above for 30 independent production runs.

 The data are given in Table 6.1 and can be found on the book web site in the file
defects.txt.

 Interest centres on developing a model for  Y , Defective, based on the predictors

 x  1 , Temperature;  x  2 , Density and  x  3 , Rate.

 Figure  6.11  contains a scatter plot matrix of the response variable, Defective and
the  predictors  Temperature,  Density  and  Rate.  The  three  predictors  appear  to  be
linearly related. However, the separate relationships between the response variable
and each of the predictor variables do not appear to be linear.

 We begin by fitting the regression model

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+
e

  (6.14)

 Figure  6.12  contains scatter plots of the standardized residuals against each predic-
tor and the fitted values for model (6.14). Each of the plots in Figure  6.12  shows a
curved rather than a random pattern. Thus, model (6.14) does not appear to be a
valid model for the data.

 Figure   6.13   contains  a  plot  of   Y ,  Defective  against  the  fitted  values,     Ŷ .  The
straight-line  fit  to  this  plot  (displayed  as  a  dashed  line)  provides  a  poor  fit.  This
provides  further  evidence  that  model  (6.14)  is  not  a  valid  model  for  the  data.
The solid line in Figure  6.11  is a quadratic fit and it follows the points more closely
than the straight line.

 In summary, model (6.14) does not provide a valid model to the data since:

  Table 6.1

  Data on defective rates (defects.txt)

 Temperature

 Density

 Rate

 Defective

 Temperature

 Density

 Rate

 Defective

 0.97
 2.85
 2.95
 2.84
 1.84
 2.05
 1.5
 2.48
 2.23
 3.02
 2.69
 2.63
 1.58
 2.48
 2.25

 32.08
 21.14
 20.65
 22.53
 27.43
 25.42
 27.89
 23.34
 23.97
 19.45
 23.17
 22.7
 27.49
 24.07
 24.38

 177.7
 254.1
 272.6
 273.4
 210.8
 236.1
 219.1
 238.9
 251.9
 281.9
 254.5
 265.7
 213.3
 252.2
 238.1

 0.2
 47.9
 50.9
 49.7
 11
 15.6
 5.5
 37.4
 27.8
 58.7
 34.5
 45
 6.6
 31.5
 23.4

 2.76
 2.36
 1.09
 2.15
 2.12
 2.27
 2.73
 1.46
 1.55
 2.92
 2.44
 1.87
 1.45
 2.82
 1.74

 21.58
 26.3
 32.19
 25.73
 25.18
 23.74
 24.85
 30.01
 29.42
 22.5
 23.47
 26.51
 30.7
 22.3
 28.47

 244.7
 222.1
 181.4
 241
 226
 256
 251.9
 192.8
 223.9
 260
 236
 237.3
 221
 253.2
 207.9

 42.2
 13.4
 0.1
 20.6
 15.9
 44.4
 37.6
 2.2
 1.5
 55.4
 36.7
 24.5
 2.8
 60.8
 10.5

169

60

40

20

0

32

28

24

20

6.2  Transformations

Defective

1.0

2.0

3.0

180

220

260

3.0

2.0

1.0

260

220

180

Temperature

Density

Rate

0

20

40

60

20

24

28

32

  Figure 6.11

  A scatter plot matrix of the data in the file defects.txt

  ▪

 ▪

 The plots of standardized residuals against each predictor and the fitted values
do not produce random scatters
 The  summary  plot  of   Y   against  ˆY   shows  a  quadratic  rather  than  a  linear
 where  g  is a quadratic function
trend, that is,

ˆ( )
g Y≅

Y

 In view of the last point, it is natural to consider a transformation of  Y .

  Inverse response plots

 Suppose that the true regression model between Y and  X  1 ,  X  2 ,  … ,  X   p   is given by

Y

=

g

(

b

0

+

b

x
1 1

+

b

x
2 2

+ …+

b

x

p

p

+

e

)

 where  g  is an unknown function. Recall that the previous model can be turned into
a multiple linear regression model by transforming  Y  by  g  –1 , the inverse of  g , since,

1
−
g Y
( )

=

b

0

+

b

x
1 1

+

b

x
2 2

+ …+

b

x

p

p

+

e
.

170

6  Diagnostics and Transformations for Multiple Linear Regression

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

1.0

1.5

2.0

2.5

3.0

20

24

28

32

Temperature

Density

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

2

1

0

−2

2

1

0

−2

180

220

260

−10

10

30

50

Rate

Fitted Values

  Figure 6.12

  Plots of the standardized residuals from model (6.14)

e
v
i
t
c
e
e
D

f

60

50

40

30

20

10

0

−10

0

10

20

30

40

50

Fitted Values

  Figure 6.13

  Plot of  Y  against fitted values with a straight line and a quadratic curve

6.2  Transformations

171

x
1 1

,
 Thus, if we knew
b b
0
1
the horizontal axis and

b… we could discover the shape of  g  –1  by plotting  Y  on
,
b
 on the vertical axis.

p
b

+ …

+

b

x

p

0

p
 Based on the results of Li and Duan (1989), Cook and Weisberg (1994) showed
that if conditions (6.6) and (6.7) hold then  g  –1  can be estimated from the scatter plot
ˆ
of   Y   (on  the  horizontal  axis)  and
b
    (on  the  vertical  axis).
0
Such a plot is commonly referred to as  inverse response plot  (since the usual axis
for  Y  is the vertical axis). It can be shown that the assumption that the predictors  X  1 ,
 X  2 ,  … ,  X   p   have a multivariate normal distribution is much stronger than the assump-
tion than the predictors  X  1 ,  X  2 , …,  X   p   are linearly related at least approximately.
  Example: Modelling defective rates (cont.)

ˆ
x
b
1 1

+ …+

ˆ
b

+

=

ˆ
y

x

p

p

 Figure  6.14  contains an inverse response plot for the data in the example involving
defective  rates.  Since  we  found  that  the  predictors  are  linearly  at  least  approxi-
mately  (see  Figure   6.11 ),  we  should  be  able  to  estimate   g  –1   from  the  inverse
response plot. Marked on the plot are three so-called power curves

ˆ
y

=

yl

for

l

=

0,0 4

.4 ,1

 where, as we shall see below,
that among the three curves, the power curve

0

l =  corresponds to natural logarithms. It is evident

ˆy

=

(
ˆ
b

0

ˆ
x
b
1 1

ˆ
b

+

+

x
2 2

+

ˆ
b

x
3 3

) 0.44
y
=

provides the closest fit to the data in Figure  6.14 . This is not unexpected since we
found  in  Figure   6.13   that  a  quadratic  provided  an  approximation  to   g .  Rounding

t

a
h
y

50

40

30

20

10

0

−10

0.44
0
1

0

10

20

30

40

50

60

Defective

  Figure 6.14

  Inverse response plot for the data set defects.txt

172

6  Diagnostics and Transformations for Multiple Linear Regression

0.44 to the nearest reasonable value, namely, 0.5 we shall transform  Y  by taking the
square root and thus consider the following model

1
−
g Y
( )

=

Y

0.5

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+
e

  (6.15)

  Transforming only the response variable Y using Box-Cox method

 Box  and  Cox  (1964)  provide  a  general  method  for  transforming  a  strictly  positive
response variable  Y . The Box-Cox procedure aims to find a transformation that makes
the  transformed  response  variable  close  to  normally  distributed  having  taken  into
account the regression model under consideration. Box and Cox (1964) considered
the modified family of power transformations

ψ

M

Y
( ,

l

)

= ψ

S

Y
( ,

l

1
Y
) gm( )
×

−

l

=

−

l

l

Y
(

Y
1)/
gm( )
−
Y
Y
gm( )log( )

{ 1

l

  if

0
l
≠
if  =0
l

n

n

1

n

=

=

Y
i

exp

∏

Y
gm( )

 where

⎞
)
⎟
⎠
method is based on the notion that for some value of l the transformed version of  Y ,
 is normally distributed. The method is based on choosing l that
namely,
,
maximizes the log-likelihood function for
…

   is the geometric mean of  Y . The Box-Cox

2
,
b s l Y

M Y l
( ,

log(

∑

⎛
⎜
⎝

Ψ

Y
i

).

l

)

,

,

|

=

=

1

1

i

i

1
n

,
b b
0
1

M Y
( ,

p

  Example: Modelling defective rates (cont.)

 Figure  6.15  provides plots of the log-likelihood against l for the data in the example
involving defective rates. The value of l that maximizes the log-likelihood and 95%
confidence limits for l are marked on the plot. The value of l that maximizes the
log-likelihood  is  0.45.  Thus,  in  this  case,  both  the  inverse  response  plot  and  the
Box-Cox transformation method point to using a square root transformation of  Y .
Thus, we next consider the multiple linear regression model given by (6.15).

 Figure   6.16   contains  plots  of   Y   0.5   against  each  predictor.  It  is  evident  from
Figure  6.16  that the relationship between  Y   0.5  and each predictor is more linear than
the relationship between  Y  and each predictor.

 Figure  6.17  contains scatter plots of the standardized residuals against each predic-
tor and the fitted values for model (6.15). Each of the plots in Figure  6.15  shows a
random pattern. Thus, model (6.15) appears to be a valid model for the data.
0.5

 against the fitted values. The
straight-line fit to this plot provides a reasonable fit. This provides further evidence
that model (6.15) is a valid model for the data.

 Figure  6.18   contains a plot of

Defective

Y

=

 The diagnostic plots provided by R for model (6.15) shown in Figure  6.19  fur-

ther confirm that it is a valid model for the data.

 We finish by considering the following theories put forward regarding the causes

of the defects (taken from Siegel, 1997, p. 509):

 Others claim it is clearly the density of the product, and that the problems would disappear
if the density is increased. Then there is Ole, who has been warning everyone forever to
take care not to push the equipment beyond its limits. This problem would be easiest to fix,
simply by slowing down the production rate ….

6.2  Transformations

173

−93.0

d
o
o
h

i
l

i

e
k
L
−
g
o

l

−94.0

−95.0

−96.0

 95%

0.30

0.35

0.40

0.45

0.50

0.55

0.60

0.65

λ

  Figure 6.15

  Log-likelihood for the Box-Cox transformation method

8

6

4

2

e
v
i
t
c
e
f
e
D

8

6

4

2

e
v
i
t
c
e
f
e
D

1.0

1.5

2.0

2.5

3.0

20

24

28

32

Temperature

Density

8

6

4

2

e
v
i
t
c
e

f

e
D

180

220

260

Rate

  Figure 6.16

  Plots of  Y   0.5  against each predictor

174

6  Diagnostics and Transformations for Multiple Linear Regression

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1.0

1.5

2.0

2.5

3.0

Temperature

2

1

0

−2

2

1

0

−2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

2

1

0

−2

20

24

28

32

Density

180

220

260

0

2

4

6

8

Rate

Fitted Values

  Figure 6.17

  Plots of the standardized residuals from model (6.15)

8

6

4

2

e
v
i
t
c
e
e
D

f

0

2

4

6

8

Fitted Values

  Figure 6.18

  A plot of  Y   0.5  against fitted values with a straight line added

6.2  Transformations

175

Residuals vs Fitted

27

21

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

24

0

2

4

6

8

Fitted Values

Scale−Location
27

24

21

l

i

s
a
u
d
s
e
r
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

Normal Q−Q

27

21

2

1

0

−2

24

−2

−1

0

1

2

Theoretical Quantiles

Residuals vs Leverage

21

0.5

Cook’s distance

17

24

0.5

1.0

0.0

−1.0

1.5

1.0

0.5

0.0

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

0

2

4

6

8

0.00

0.10

0.20

0.30

Fitted Values

Leverage

  Figure 6.19

  Diagnostic plots provided by R for model (6.15)

Regression Output from R from model (6.15)

 Call:
 lm(formula = sqrt(Defective) ~ Temperature + Density + Rate)

 Coefficients:

 Estimate  Std. Error t value  Pr(>|t|)
0.2978
0.0259  *
0.0218  *
0.2273

 (Intercept)  5.59297
 Temperature  1.56516
-0.29166
 Density
 Rate
0.01290
 ---
 Residual standard error: 0.5677 on 26 degrees of freedom
 Multiple R-Squared: 0.943,      Adjusted R-squared: 0.9365
 F-statistic: 143.5 on 3 and 26 DF,  p-value: 2.713e-16

1.062
5.26401
0.66226
2.363
0.11954  -2.440
1.237
0.01043

 The variable Rate is not statistically significant, thus not supporting Ole’s theory
above. On the other hand, the coefficient of Density is statistically significantly less
than zero in line with the theory above of increasing the density as a way of lower-
ing the defect rate. However, the value of the variable Rate still needs to be consid-
ered  when  adjustments  are  made  to  one  or  both  of  the  statistically  significant

176

6  Diagnostics and Transformations for Multiple Linear Regression

predictors, since from Figure  6.11  Rate is clearly related to the other two predictors.
Finally,  we  show  in  Figure   6.20   the  added-variable  plots  associated  with  model
(6.15).  The  lack  of  statistical  significance  of  the  predictor  Rate  is  evident  in  the
bottom left-hand plot of Figure  6.18 .

  Transforming both the response and the predictor variables

 When some, or all, of the predictors and the response are highly skewed and trans-
formations of these variables are desirable, the following two alternative approaches
are suggested by Cook and Weisberg (1999b , p. 329):

  Approach 1:

,

(

l

),

x
1

Ψ
S

    1.     Transform   X  1 ,   X  2 ,  …,   X   p    so  that  the  distribution  of  the  transformed  versions
)
 are as jointly normal as possible. The mul-
Ψ
S
tivariate version of the Box-Cox transformation procedure is one way to do this.
  ,
)

   2.     Having  transformed   X  1 ,   X  2 ,  …,   X   p    to

,
2
      consider a multivariate linear regression model of the form

…Ψ
S

…Ψ
S

Ψ
S

Ψ
S

x
1

),

),

),

l

l

l

l

l

x

x

x

x

X
1

X
1

(

(

(

(

(

,

,

,

,

X

X

X

X

p

p

2

p

2

p

2

Y

=

g

(

b

0

b
+ Ψ
S
1

(

x
1

,

l

)

X
1

+ …+ Ψ
S

b

p

(

x

p

,

l

X

p

)

+

e

).

   Then use an inverse response plot to decide on the transformation,  g  –1  for  Y .

Added−Variable Plot

Added−Variable Plot

s
r
e
h
t
O

|
)
e
v
i
t
c
e
f
e
D

(
t
r
q
s

1.0

0.0

−1.0

s
r
e
h
t
o
|
)
e
v
i
t
c
e
f
e
D

(
t
r
q
s

1.0

0.0

−1.0

−0.3

−0.1

0.1

0.3

Temperature|Others

−1.0

0.0

1.0

2.0

Density|Others

Added−Variable Plot

s
r
e
h
O

t

|
)
e
v
i
t
c
e

1.0

0.0

f

e
D

(
t
r
q
s

−1.0

−10

0

10

20

Rate|Others

  Figure 6.20

  Added-variable plots for model (6.15)

6.2  Transformations

  Approach 2:

177

 Transform  X  1 ,  X  2 , …,  X   p   and  Y  simultaneously to joint normality using the multi-
variate generalization of the Box-Cox method.

  Example: Magazine revenue

 An  analyst  is  interested  in  understanding  the  relationship  between  revenue  from
magazine sales and that from advertising. The analyst has obtained some US data
from  Advertising Age’s  14th annual Magazine 300 report (  http://www.adage.com    )
which was released in September 2003. Data are available for 204 US magazines
for the following variables:

  Y  = AdRevenue = Revenue from advertising (in thousands of $)
  X  1 = AdPages = Number of pages of paid advertising
  X  2 = SubRevenue = Revenue from paid subscriptions (in thousands of $)
  X  3 = NewsRevenue = Revenue from newsstand sales (in thousands of $)

 The  data  are  on  the  book  web  site  in  the  file  magazines.csv.  Interest  centers  on
building a regression model to predict Ad Revenue from Ad Pages, Sub Revenue
and News Revenue.

 Figure  6.21  shows a scatter plot matrix of the response variable and the three
predictor variables. The response variable and the three predictor variables are each
highly skewed. In addition, the predictors do not appear to be linearly related. Thus,
we  need  to  consider  transformations  of  the  response  and  the  three  predictor
variables.

  Approach 1: Transforming the predictors first and then the response

 Given below is the R output using the bctrans command from alr3.

Output from R

 box.cox Transformations to Multinormality

 AdPages
 SubRevenue
 NewsRevenue

 Est.Power  Std.Err. Wald(Power=0)  Wald(Power=1)
-8.7560
-22.2493
-27.7249

1.1030
-0.1864
2.2769

0.1119
-0.0084
0.0759

0.1014
0.0453
0.0333

 LR  test,  all  lambda  equal
 LR  test,  all  lambda  equal

0
1

 LRT  df

p.value
6.615636  3  0.08521198
1100.018626  3  0.00000000

 Using the Box-Cox method to transform the predictor variables toward normality,
results values of l close to 0. Thus, we shall log transform all three predictors and
consider a model of the form

AdRevenue
g

b

(

+

b
1

0

=

log(AdPages)+ log(SubRevenue) +

b

b

2

log(NewsRevenue)

+

e

)

3

178

6  Diagnostics and Transformations for Multiple Linear Regression

500

2000 3500

0

100000

250000

AdRevenue

AdPages

4e+05

0e+00

3e+05

0e+00

SubRevenue

NewsRevenue

3500

2000

500

250000

100000

0

0e+00

4e+05

0e+00

3e+05

  Figure 6.21

  A scatter plot matrix of the data in file magazines.csv

 and seek to find  g  –1  using an inverse response plot, since,

1
−

g

(AdRevenue)

=

b

0

log(AdPages)+ log(SubRevenue)
2

b

b
1

+
+ log(NewsRevenue)

b

+

e

3

 Figure  6.22  contains an inverse response plot. (Since the predictor variables have
been  transformed  towards  normality,  we  should  be  able  to  estimate   g  –1   from  the
inverse response plot.) Marked on the plot are three so-called power curves

ˆ AdRevenue for
y

=

l
Y

l
Y

=

0,0.23,1

l =  corresponds to natural logarithms. It is evident that among the three

 where
0
curves, the power curve

ˆ AdRevenue
y =

0.23

0
 provides the closest fit to the data in Figure  6.22 . However, the curve based on
l =
also seems to provide an adequate fit, especially for small to moderate values of

6.2  Transformations

179

3e+05

2e+05

t
a
h
y

1e+05

0e+00

−1e+05

0.23
0
1

0e+00

2e+05

4e+05

6e+05

AdRevenue

  Figure 6.22

  Inverse response plot

AdRevenue. In addition, notice that two of the predictors and the response are all
measured in the same units (i.e., $). Thus, a second argument in favor of the log
transformation for the response variable is that it means that all the variables meas-
ured in dollars are transformed in the same way.

  Approach 2: Transforming all variables simultaneously

 Given below is the output from R using bctrans from alr3.

Output from R

 box.cox Transformations to Multinormality

 AdRevenue
 AdPages
 SubRevenue
 NewsRevenue

0.1071
0.0883
-0.0153
0.0763

 Est.Power Std.Err.  Wald(Power=0) Wald(Power=1)
-22.6719
-10.9068
-28.0413
-27.9682
p.value
0
13.87021  4  0.007721018
1  1540.50928  4  0.000000000

2.7182
1.0566
-0.4217
2.3087
 LRT df

0.0394
0.0836
0.0362
0.0330

 LR  test, all  lambda equal
 LR  test, all  lambda equal

 Using  the  Box-Cox  method  to  transform  the  predictor  and  response  variables
simultaneously toward multivariate normality, results in values of each l close to 0.
Thus,  the  two  approaches  agree  in  that  they  suggest  that  each  variable  be  trans-
formed using the log transformation.

180

6  Diagnostics and Transformations for Multiple Linear Regression

 Figure   6.23   shows  a  scatter  plot  matrix  of  the  log-transformed  response  and
predictor variables. The pair-wise relationships in Figure  6.23  are much more linear
than  those  in  Figure   6.21 .  The  least  linear  relationship  appears  to  be  between
log(AdRevenue) and log(NewsRevenue).

 We  next  consider  a  multiple  linear  regression  model  based  on  the  log-trans-

formed data, namely,

log(AdRevenue)

=

b

0

log(AdPages)+ log(SubRevenue)
2

b

b
1

+
+ log(NewsRevenue)

b

+

e

(6.16)

3

 Figure  6.24  contains scatter plots of the standardized residuals against each predic-
tor and the fitted values for model (6.16). Each of the plots in Figure  6.24  shows a
random pattern. Thus, model (6.16) appears to be a valid model for the data.

 The  plot  of  log(AdRevenue)  against  the  fitted  values  in  Figure   6.25   provides

further evidence that model (6.16) is a valid model.

5.5

6.5

7.5

864

10

log(AdRevenue)

log(AdPages)

7.5

6.5

5.5

10

8

6

4

13

11

9
8

13

11

9

7

log(SubRevenue)

log(NewsRevenue)

98

11

13

7

9

11

13

  Figure 6.23

  Scatter plot matrix of the log-transformed data

6.2  Transformations

181

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

5.5

6.5

7.5

log(AdPages)

2

1

0

−1

−3

2

1

0

−1

−3

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

7

8

9 10

12

log(SubRevenue)

2

1

0

−1

−3

2

1

0

−1

−3

4

6

8

10

12

8

9

10

11 12 13 14

log(NewsRevenue)

Fitted Values

  Figure 6.24

  Plots of the standardized residuals from model (6.16)

)
e
u
n
e
v
e
R
d
A
(
g
o

l

13

12

11

10

9

8

8

9

10

11

12

13

14

Fitted Values

  Figure 6.25

  A plot of log(adrevenue) against fitted values with a straight line added

182

6  Diagnostics and Transformations for Multiple Linear Regression

Residuals vs Fitted

1911

97

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

Normal Q−Q

2

1

−1

−3

971911

8

9

10 11 12 13 14

−3 −2 −1

0

1

2

3

Fitted Values

Theoretical Quantiles

Scale−Location
1911

97

Residuals vs Leverage

118158

199

Cook’s distance

2

1

−1

−3

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

0.5

−0.5

−1.5

1.5

1.0

0.5

0.0

l

s
a
u
d
s
e
R

i

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

8

9

10 11 12 13 14

0.00

0.04

0.08

0.12

Fitted Values

Leverage

  Figure 6.26

  Diagnostic plots provided by R for model (6.16)

 Figure  6.26  shows the diagnostic plots provided by R for model (6.16). These
plots further confirm that model (6.16) is a valid model for the data. The dashed
vertical line in the bottom right-hand plot of Figure  6.26  is the usual cut-off for declar-
ing a point of high leverage (i.e.,    2(
1) /
). Thus, there is a bad
leverage point (i.e., case 199) that requires further investigation.

8 / 204

0.039

=

=

+

p

n

 Given  below  is  the  output  from  R  associated  with  fitting  model  (6.16).    The
variable  log(NewsRevenue)  is  not  statistically  significant,  while  the  other  two
predictors are. Because both the predictor and response variables have been log-
transformed  the  usual  interpretation  of  regression  coefficients  as  percentages
holds. Thus, for example, holding all else constant, the model (6.16) predicts:
  ▪
 ▪

 A 1.03% increase in AdRevenue for every 1% increase in AdPages
 A 0.56% increase in AdRevenue for every 1% increase in SubRevenue

 Finally,  we  show  in  Figure   6.27   the  added-variable  plots  associated  with  model
(6.16).  The  lack  of  statistical  significance  of  the  predictor  Log(NewsRevenue)  is
evident in the bottom left-hand plot of Figure  6.27 .

6.2  Transformations

183

Added−Variable Plot

Added−Variable Plot

2

1

0

−1

s
r
e
h
t
o

|

)
e
u
n
e
v
e
R
d
A
(
g
o

l

−1.5

−0.5

0.5

1.5

log(AdPages) | Others

s
r
e
h
t
o

|

)
e
u
n
e
v
e
R
d
A
(
g
o

l

1.0

−0.5

−2.0

−3 −2 −1
log(SubRevenue) | Others

2

1

0

1.0

0.0

−1.0

s
r
e
h
t
o

|

)
e
u
n
e
v
e
R
d
A
(
g
o

l

Added−Variable Plot

−4

−2

0

2

4

log(NewsRevenue) | Others

  Figure 6.27

  Added-variable plots for model (6.16)

  Regression output from R

 Call:
 lm(formula  =  log(AdRevenue)  ~  log(AdPages)  +  log(SubRevenue)  +
log(NewsRevenue))
 Coefficients:

 Estimate  Std. Error t value  Pr(>|t|)
-2.02894
 (Intercept)
1.02918
 log(AdPages)
 log(SubRevenue)
0.55849
 log(NewsRevenue)  0.04109
 ---
 Residual standard error: 0.4483 on 200 degrees of freedom
 Multiple R-Squared: 0.8326,
Adjusted R-squared: 0.8301
 F-statistic: 331.6 on 3 and 200 DF, p-value: < 2.2e-16

0.41407  -4.900  1.98e-06  ***
0.05564  18.497  < 2e-16  ***
0.03159  17.677  < 2e-16  ***
0.02414

0.0903  .

1.702

184

  6.2.2

6  Diagnostics and Transformations for Multiple Linear Regression

 Using Logarithms to Estimate Percentage Effects:
Real Valued Predictor Variables

 In  this  section  we  illustrate  how  logarithms  can  be  used  to  estimate  percentage
change in  Y  based on a one unit change in a given predictor variable. In particular,
we consider the regression model

Y
log( )

=

b

0

+

b
1

log(

x
1

)

+

b

x
2 2

e
+

  (6.17)

 where log refers to log to the base  e  or natural logarithms and  x  2  is a predictor vari-
able taking numerical values (and hence  x  2  is allowed to be a dummy variable). In
this situation the slope

log(

Y
1

)

b

2

=

Δ

2
)

log(

Y
log( )
x
Δ
Y
log(
2

−
x
Δ
Y Y
2
1
x
Δ
Y Y
2
1
x
Δ
100(

2
Y Y
2
1
x
100Δ
Y
%Δ
x
100
Δ

2
−

1

2

2
)

2

=

=

≃

=

=

(using log(1

+

z

)

≃

z

)

−

1)

 So that, for small

2b

%

Δ

Y

≃

b

2

×

100

x
Δ

2

 Thus for every 1 unit change in  x   2   (i.e.,
change in  Y .

  Example: Newspaper circulation

xΔ =     ) the model predicts a

1

2

100 b× %

2

 Recall from Chapter 1 that the company that publishes a weekday newspaper in a
mid size American city has asked for your assistance in an investigation into the
feasibility of introducing a Sunday edition of the paper. The current circulation of
the  company’s  weekday  newspaper  is  210,000.  Interest  focuses  on  developing  a
regression model that enables you to predict the Sunday circulation of a newspaper
with a weekday circulation of 210,000. Circulation data from September 30, 2003
are available for 89 US newspapers that publish both weekday and Sunday editions.
The data are available on the book website, in the file circulation.txt.

6.2  Transformations

185

The situation is further complicated by the fact that in some cities there is more
than one newspaper In particular, in some cities there is a tabloid newspaper along
with a so called "serious" newspaper as a competitor. As such the data contains a
dummy variable, which takes value 1 when the newspaper is a tabloid with a seri-
ous competitor in the same city and value 0 othervise.

 Figure  6.28  is a repeat of Figure 1.3, which is a plot of log(Sunday Circulation)
versus log(Weekday Circulation) with the dummy variable Tabloid identified. On
the basis of Figure  6.28  we consider model (6.17) with

  Y  = log(Sunday Circulation)
  X  1  = log(Weekday Circulation)
  X  2  = Tabloid.with.a.Serious.Competitor (a dummy variable)
 Thus we consider the following multiple linear regression model:

log(SundayCirculation)

=

b

0

+

+

b
1
b
3

log(WeekdayCirculation)

Tabloid.with.a.Serious.Competitor + e

    (6.18)

 Figure   6.29   contains  scatter  plots  of  the  standardized  residuals  against  each
predictor and the fitted values for model (6.18). Each of the plots in Figure  6.29
shows a random pattern. Thus, model (6.18) appears to be a valid model for the data.

 Figure  6.30  contains a plot of log(Sunday Circulation) against the fitted values.
The  straight-line  fit  to  this  plot  provides  a  reasonable  fit.  This  provides  further
evidence that model (6.18) is a valid model for the data.

14.0

Tabloid dummy variable

0
1

)
n
o
i
t
a
u
c
r
i

l

C
y
a
d
n
u
S
(
g
o

l

13.5

13.0

12.5

12.0

11.5

12.0

12.5

13.0

13.5

14.0

log(Weekday Circulation)

  Figure 6.28

  A plot of log(Sunday Circulation) against log(Weekday Circulation)

186

6  Diagnostics and Transformations for Multiple Linear Regression

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

11.5

12.5

13.5

0.0 0.2 0.4 0.6 0.8 1.0

log(Sunday Circulation)

Tabloid.with.a.Serious.Competitor

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−2

12.0

13.0

14.0

Fitted Values

  Figure 6.29

  Plots of the standardized residuals from model (6.17)

)
n
o
i
t
a
u
c
r
i

l

C
y
a
d
n
u
S
(
g
o

l

14.0

13.5

13.0

12.5

12.0

12.0

12.5

13.0

13.5

14.0

Fitted Values

  Figure 6.30

  A plot of log(Sunday Circulation) against fitted values

6.2  Transformations

187

Residuals vs Fitted

6040

67

12.0

13.0

14.0

Fitted Values

Scale−Location

4060
51

0.4

0.2

−0.2

1.5

1.0

0.5

0.0

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3

2
1

0

−2

3

2
1

0

−2

Normal Q−Q

4060
51

−2

−1

0

1

2

Theoretical Quantiles

Residuals vs Leverage

40
51

1

0.5

Cook’s distance

9

0.5

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

12.0

13.0

14.0

0.00

0.10

0.20

Fitted Values

Leverage

  Figure 6.31

  Diagnostic plots provided by R for model (6.18)

 Figure  6.31  shows the diagnostic plots provided by R for model (6.18). These

plots further confirm that model (6.18) is a valid model for the data.

 The dashed vertical line in the bottom right-hand plot of Figure  6.31  is the usual
cut-off for declaring a point of high leverage (i.e.,  2 (
  ).
×
The  points  with  the  largest  leverage  correspond  to  the  cases  where  the  dummy
variable is 1.

0.067

6 / 89

1) /

=

+

=

p

n

The output from R associated with fitting model (6.18) shows that both predictor
variables  are  highly  statistically  significant.  Because  of  the  log  transformation
model (6.18) predicts:

 ■

 A  1.06%  increase  in  Sunday  Circulation  for  every  1%  increase  in  Weekday
Circulation

■  A  53.1%  decrease  in  Sunday  Circulation  if  the  newspaper  is  a  tabloid  with  a

serious competitor

188

6  Diagnostics and Transformations for Multiple Linear Regression

Regression output from R

 Call:

 lm(formula = log(Sunday) ~ log(Weekday) + Tabloid.with.a.Serious.
Competitor)

 Coefficients:

 Estimate  Std. Error t value  Pr(>|t|)
0.206
-0.44730
1.06133

0.35138  -1.273
0.02848  37.270  < 2e-16  ***

 (Intercept)
 log(Weekday)
 Tabloid.with.
a.Serious.
Competitor
 ---
 Residual standard error: 0.1392 on 86 degrees of freedom
 Multiple R-Squared: 0.9427,
Adjusted R-squared: 0.9413
 F-statistic: 706.8 on 2 and 86 DF, p-value: < 2.2e-16 ---
Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

0.06800  -7.814  1.26e-11  ***

-0.53137

 Figure  6.32  contains the added-variable plots associated with model (6.18). The
fact that both predictor variables are highly statistically significant is evident from
the added variable plots.

 Finally, we are now able to predict the Sunday circulation of a newspaper with
a weekday circulation of 210,000. There are the following two cases to consider
corresponding to whether the newspaper is a tabloid with a serious competitor or
not.  Given  below  are  the  prediction  intervals  obtained  from  R  for  log(Sunday
Circulation):

Output from R

 Tabloid.with.a.Serious.Competitor=1

upr
 [1,] 12.02778 11.72066  12.33489

 fit

lwr

 Tabloid.with.a.Serious.Competitor=0

upr
 [1,] 12.55915 12.28077  12.83753

 fit

lwr

 Back transforming these results by exponentiating them produces the numbers in
Table  6.2 .

 Can you think of a way of improving model (6.18)?

 Table 6.2

  Predictions of Sunday circulation

 Tabloid with a serious competitor

 Weekday circulation

 Prediction

 95% Prediction interval

 Yes
 No

 210000
 210000

 167340
 284668

 (123089, 227496)
 (215512, 376070)

6.3  Graphical Assessment of the Mean Function Using Marginal Model Plots

189

Added−Variable Plot

Added−Variable Plot

s
r
e
h
t
O

|

)
y
a
d
n
u
S
(
g
o

l

1.5

1.0

0.5

0.0

−0.5

−1.0

0.4

0.2

0.0

−0.2

−0.4

−0.6

s
r
e
h
t
O

|

)
y
a
d
n
u
S
(
g
o

l

−0.5

0.5

1.5

−0.2

0.2

0.6

log(Weekday) | Others

Tabloid.with.a.Serious.Competitor | o

  Figure 6.32

  Added-variable plots for model (6.18)

  6.3

 Graphical Assessment of the Mean
Function Using Marginal Model Plots

 We begin by briefly considering simple linear regression. In this case, we wish to
visually assess whether

Y

=

b

0

+

b
1

x

e
+

(6.19)

 models  E ( Y | x ) adequately. One way to assess this is to compare the fit from (6.19)
with a fit from a general or nonparametric regression model (6.20) where

Y

=

f x
( )

e
+

(6.20)

 There are many ways to estimate  f  nonparametrically. We shall use a popular esti-
mator  called  loess,  which  is  based  on  local  linear  or  locally  quadratic  regression
fits. Further details on nonparametric regression in general and loess in particular
can be found in Appendix A.2.
Y x
|

 while under model (6.20),

b

x

)

,

=

+

b
1

0

E (
1M

Thus, we shall decide that model (6.19) is an adequate model if

 Under model (6.19),
f x
)
( ).
=
 and  ˆ( )

Y x
|
ˆ x

b+
1

1FE (
ˆ
b

0

f x  agree well.

190

6  Diagnostics and Transformations for Multiple Linear Regression

  Example: Modeling salary from years of experience (cont.)

 Recall from Chapter 5 that we wanted to develop a regression equation to model
the relationship between  Y , salary (in thousands of $) and  x , the number of years of
experience. The 143 data points can be found on the book web site in the file prof-
salary.txt.

 For illustrative purposes we will start by considering the model

 and compare this with nonparametric regression model (6.22) where

Y

=

b

0

+

b
1

x

e
+

Y

=

f x
( )

e
+

(6.21)

(6.22)

 Figure  6.33  includes the least squares fit for model (6.21) and as a solid curve, the
    ) for model (6.22). The two fits differ markedly indicating that
loess fit (with

2 3

a =

model (6.21) is not an adequate model for the data.

 We next consider a quadratic regression model for the data

Y

=

b

0

+

b
1

x

+

b

2

2

x

e
+

(6.23)

 Figure  6.34  includes the least squares fit for model (6.23) and as a solid curve loess
fit (with
) for model (6.22). The two fits are virtually indistinguishable. This
implies that model (6.23) models  E ( Y | x ) adequately.

a =

2 3

y
r
a
a
S

l

70

60

50

40

0

5

10

15

20

25

30

35

Years of Experience

  Figure 6.33

  A plot of the professional salary data with straight line and loess fits

6.3  Graphical Assessment of the Mean Function Using Marginal Model Plots

191

y
r
a
a
S

l

70

60

50

40

0

5

10

15

20

25

30

35

Years of Experience

  Figure 6.34

  A plot of the professional salary data with quadratic and loess fits

    The challenge for the approach we have just taken is how to extend it to regres-
sion models based on more than one predictor. In what follows we shall describe
the approach proposed and developed by Cook and Weisberg (1997).

  Marginal Model Plots

 Consider the situation when there are just two predictors  x  1  and  x  2 . We wish to visu-
ally assess whether

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

e
+

 (M1)

 models  E ( Y | x ) adequately. Again we wish to compare the fit from (M1) with a fit
from a nonparametric regression model (F1) where

Y

=

f x x
(
1

,

2

)

e
+

 (F1)

 Under model (F1), we can estimate
plot of  Y  against  x  1 . We want to check that the estimate of
estimate of

Y x    by adding a nonparametric fit to the
Y x        is close to the

E (
1F

E (
1F

)

)

|

|

1

1

E (
1M

Y x   .
1

)

|

 Under model (M1)

E (
1M

Y x
|
1

) E(
=

b

0

+

b

x
1 1

+

b

x
2 2

+

e x
|
1

)

=

b

0

+

b

x
1 1

+

b

2

E(

x

2

|

x
1

)

192

6  Diagnostics and Transformations for Multiple Linear Regression

x    and that in general
 Notice that this last equation includes the unknown
1
there would be ( p  – 1) unknowns, where  p  is the number of predictor variables in model
(M1).  Cook  and  Weisberg  (1997)  overcome  this  problem  by  utilizing  the  following
result:

E (
1M

x

)

|

2

E (
M
1

Y x
|
1

⎡
) E E (
= ⎣

M
1

Y x
|

) |

x
1

⎤
⎦

 (6.24)

 The result follows from the well-known general result re conditional expectations.
However, it is easy and informative to demonstrate the result in this special case.
First, note that

E (
M
1

Y x
|

so that

) E (

=

M
1

b

0

+

b

x
1 1

+

b

x
2 2

+

e x
|

)

=

b

0

+

b

x
1 1

+

b

x
2 2

E E (

Y x
|

1M

⎡
⎣

) |

x
1

⎤ =
⎦

E(

b

0

+

b

x
1 1

+

b

x
2 2

|

x
1

)

=

b

0

+

b

x
1 1

+

b

2

E(

x

2

|

x
1

)

0

M
1

b

Y x
|

E (
1M

1ME (
b
=

x
.
2 2
x
) |
1

values
E (
M
1
of

 matching what we found on the previous page for
)

Y x   .
|
)
x
b
+
1 1
    Utilizing  (6.24)  we  can
⎤
) |
⎦    by estimating

 Under model (M1), we can estimate
ˆ
ˆ
ˆ
x
b
b
b
+
+
=
1 1
0
⎡
Y x
|
) E E (
= ⎣
⎤
.
⎦

ˆ
Y
Y x
|
1
ˆE
⎡
Y x
|
⎣
1
 In summary, we wish to compare estimates under models (F1) and (M1) by
comparing  nonparametric  estimates  of
    If  the  two
nonparametric estimates agree then we conclude that  x   1   is modelled correctly
by model (M1). If  not  then we conclude that  x   1   is  not  modelled correctly by
model (M1).

   by the fitted
+
therefore  estimate
⎤
x
⎦ with an estimate
1

ˆE
⎡
Y x
|
⎣
1

E E (

    and

Y x
|
1

Y x
|

x
2 2

E(

⎡
⎣

⎤
⎦

1M

)

.

  Example: Modelling defective rates (cont.)

 Recall from earlier in Chapter 6 that interest centres on developing a model for  Y ,
Defective, based on the predictors  x  1 , Temperature;  x  2 , Density and  x  3 , Rate. The
data can be found on the book web site in the file defects.txt.

 The first model we considered was the following:

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

e
+

 (6.25)

E(

Y x
|
1

 The  left-hand  plot  in  Figure   6.35   is  a  plot  of   Y   against   x  1 ,  Temperature  with  the
   included. The right-hand plot in Figure  6.35  is a plot of
loess estimate of
)
ˆE
   ˆY    against  x  1 , Temperature with the loess estimate of
⎡
Y x
|
⎣
1

   included.
.

 The  two  curves  in  Figure   6.35   do  not  agree  with  the  fit  in  the  left-hand  plot
showing distinct curvature, while the fit in the right-hand plot is close to a straight
line. Thus, we decide that  x  1  is  not  modelled correctly by model (6.25).

 In  general,  it  is  difficult  to  compare  curves  in  different  plots.  Thus,  following
Cook and Weisberg (1997) we shall from this point on include both nonparametric
curves on the plot of  Y  against  x  1 . The plot of  Y  against  x  1  with the loess fit for  Y
against  x  1  and the loess fit for    ˆY    against  x  1  both marked on it is called a  marginal
model plot  for  Y  and  x  1 .

⎤
⎦

6.3  Graphical Assessment of the Mean Function Using Marginal Model Plots

193

Y

,
e
v
i
t
c
e
f

e
D

60

50

40

30

20

10

0

Y^

50

40

30

20

10

0

−10

1.0

2.0

3.0

1.0

2.0

3.0

Temperature, x1

Temperature, x1

  Figure 6.35

  Plots of  Y  and   ˆY   against  x  1 , Temperature

e
v
i
t
c
e
f
e
D

60

50

40

30

20

10

0

1.0

1.5

2.0

2.5

3.0

Temperature

  Figure 6.36

  A marginal mean plot for Defective and Temperature

 Figure  6.36  contains a  marginal model plot  for  Y  and  x  1 . The solid curve is the
  while  the  dashed  curve  is  the  loess  estimate  of

loess  estimate  of
ˆE
⎤
⎡
Y x
    It is once again clear that these two curves do not agree well.
|
.
⎦
⎣
1
  It is recommended in practice that marginal model plots be drawn for each pre-
dictor (except dummy variables) and for   ˆY . Figure  6.37  contains these recommended

Y x
|
1

E(

)

194

6  Diagnostics and Transformations for Multiple Linear Regression

marginal model plots for model (6.25) in the current example. The two fits in
each  of  the  plots  in  Figure   6.37  differ markedly. In particular, each of the non-
parametric estimates in Figure  6.37  (marked as solid curves) show distinct curvature
which is not present in the smooths of the fitted values (marked as dashed curves).
Thus, we again conclude that (6.25) is not a valid model for the data.

 We found earlier that in this case, both the inverse response plot and the Box-
Cox transformation method point to using a square root transformation of  Y . Thus,
we next consider the following multiple linear regression model

0.5

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

e
+

 (6.26)

 Figure  6.38  contains the recommended marginal model plots for model (6.26) in
the current example. These plots again point to the conclusion that (6.26) is a valid
model for the data.

e
v
i
t
c
e
f
e
D

e
v
i
t
c
e
f
e
D

60

50

40

30

20

10

0

60

50

40

30

20

10

0

e
v
i
t
c
e
f
e
D

60

50

40

30

20

10

0

1.0

1.5

2.0
Temperature

2.5

3.0

20

22

24

26
Density

28

30

32

e
v
i
t
c
e
f
e
D

60

50

40

30

20

10

0

180

200

220

240

260

280

−10 0

Rate

10 20 30 40 50
Fitted values

  Figure 6.37

  Marginal model plots for model (6.25)

6.4  Multicollinearity

195

8

6

4

2

8

6

4

2

)
e
v
i
t
c
e

f

e
D

(
t
r
q
s

)
e
v
i
t
c
e
f
e
D

(
t
r
q
s

1.0

1.5

2.0

2.5

3.0

Temperature

8

6

4

2

8

6

4

2

)
e
v
i
t
c
e

f

e
D

(
t
r
q
s

)
e
v
i
t
c
e
f
e
D

(
t
r
q
s

20

22

24

26

28

30

32

Density

180

200

220

240

260

280

0

2

4

6

8

Rate

Fitted Values

  Figure 6.38

  Marginal model plots for model (6.26)

  6.4  Multicollinearity

 A number of important issues arise when strong correlations exist among the pre-
dictor variables (often referred to as multicollinearity). In particular, in this situa-
tion regression coefficients can have the wrong sign and/or many of the predictor
variables are not statistically significant when the overall F-test is highly signifi-
cant. We shall use the following example to illustrate these issues.

  Example: Bridge construction

 The following example is adapted from Tryfos (1998, pp. 130–1). According to Tryfos:

 Before  construction  begins,  a  bridge  project  goes  through  a  number  of  stages  of
production, one of which is the design stage. This phase is composed of various activities,

196

6  Diagnostics and Transformations for Multiple Linear Regression

each of which contributes directly to the overall design time. ….In short, predicting the
design  time  is  helpful  for  budgeting  and  internal  as  well  as  external  scheduling
purposes.

 Information from 45 bridge projects was compiled for use in this study. The data
are partially listed in Table  6.3  below and can be found on the book web site in the
file bridge.txt. The response and predictor variables are as follows:

  Y  = Time = design time in person-days
  x  1  = DArea = Deck area of bridge (000 sq ft)
  x  2  = CCost = Construction cost ($000)
  x  3  = Dwgs = Number of structural drawings
  x  4  = Length = Length of bridge (ft)
  x  5  = Spans = Number of spans

 We begin by plotting the data. Figure  6.39  contains a scatter plot matrix of response
variable and the five predictor variables. The response variable and a number of the
predictor variables are highly skewed. There is also evidence of nonconstant variance
in the top row of plots. Thus, we need to consider transformations of the response
and the five predictor variables.

 The multivariate version of the Box-Cox transformation method can be used to
transform all variables simultaneously. Given below is the output from R using the
bctrans command from alr3.

Output from R

 box.cox Transformations to Multinormality

 Time
 DArea
 CCost
 Dwgs
 Length
 Spans

      Est.Power   Std.Err.  Wald(Power=0)  Wald(Power=1)
-5.8951
-12.7069
-12.4817
-5.2075
-11.1653
-5.2991

-0.1795
-0.1346
-0.1762
-0.2507
 -0.1975
-0.3744

0.2001
0.0893
0.0942
0.2402
0.1073
0.2594

-0.8970
-1.5073
-1.8698
-1.0440
-1.8417
-1.4435
 LRT  df

 LR test, all lambda equal 0
8.121991
 LR test, all lambda equal 1  283.184024

p.value
6 0.2293015
6 0.0000000

 Using the Box-Cox method to transform the predictor and response variables simul-
taneously toward multivariate normality, results in values of each l close to 0. Thus,

 Table 6.3

  Partial listing of the data on bridge construction (bridge.txt)

 Case

 TIME

 DAREA

 CCOST

 DWGS

 LENGTH

 SPANS

   1
   2
   3
   .
 45

   78.8
 309.5
 184.5
.
   87.2

   3.6
 5.33
 6.29
.
 3.24

   82.4
 422.3
 179.8
        .
   70.2

   6
 12
   9
   .
   6

   90
 126
   78
     .
   90

 1
 2
 1
 .
 1

6.4  Multicollinearity

0

20 40

4 8 12

1 3 5 7

Time

DArea

CCost

Dwgs

40

20

0

12
8

4

7

5

3

1

Length

Spans

197

300

100

600

0

400

0

100 300

0

600

0

400

  Figure 6.39

  Scatter plot matrix of the response variable and each of the predictors

we shall transform each variable using the log transformation. Figure  6.40  shows a
scatter plot matrix of the log-transformed response and predictor variables. The pair-
wise relationships in Figure  6.40  are much more linear than those in Figure  6.39 .
There is no longer any evidence of nonconstant variance in the top row of plots.

 We next consider a multiple linear regression model based on the log-transformed

data, namely,

Y
log( )

=

b

0

+

+

b
1
b

5

log(

log(

x
1
x

)

+
)

+

b
2
e

5

log(

x

)

+

b

3

2

log(

x
3

)

+

b

4

log(

x

)

4

 (6.28)

 Figure  6.41  contains scatter plots of the standardized residuals against each predic-
tor and the fitted values for model (6.28). Each of the plots in Figure  6.41  shows a
random pattern. Thus, model (6.28) appears to be a valid model for the data.

198

6  Diagnostics and Transformations for Multiple Linear Regression

0

2

1.5

2.5

0.0 1.0

2.0

log(Time)

log(DArea)

log(CCost)

log(Dwgs)

6.0

5.0

4.0

6

4

5.5

3.5

log(Length)

log(Spans)

2

0

2.5

1.5

2.0

1.0

0.0

4.0 5.0 6.0

4

6

3.5

5.5

  Figure 6.40

  Scatter plot matrix of the log-transformed data

 Figure  6.42  contains a plot of log(Time) against the fitted values. The straight-
line  fit  to  this  plot  provides  a  reasonable  fit.  This  provides  further  evidence  that
model (6.28) is a valid model for the data.

 Figure  6.43  shows the diagnostic plots provided by R for model (6.28). These

plots further confirm that model (6.28) is a valid model for the data.

 The dashed vertical line in the bottom right-hand plot of Figure  6.43  is the
 (p + 1)/n = 12/45 = 0.267)  .
usual cut-off for declaring a point of high leverage (i.e.,  2 ´
Thus,  there  is  a  bad  leverage  point  (i.e.,  case  22)  that  requires  further
investigation.

 Figure  6.44  contains the recommended marginal model plots for model (6.28).
The  nonparametric  estimates  of  each  pair-wise  relationship  are  marked  as  solid
curves, while the smooths of the fitted values are marked as dashed curves. There
is some curvature present in the top three plots which is not present in the smooths
of the fitted values. However, at this stage we shall continue under the assumption
that (6.28) is a valid model.

6.4  Multicollinearity

199

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

0

1

2

3

log(DArea)

2

1

0

−1

−2

2

1

0

−1

−2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

2

1

0

−1

−2

4

5

6

7

log(CCost)

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

2

1

0

−1

−2

1.5 2.0 2.5

log(Dwgs)

3.5 4.5 5.5 6.5

0.0 0.5 1.0 1.5 2.0

4.0

5.0

6.0

log(Length)

log(Spans)

Fitted values

  Figure 6.41

  Plots of the standardized residuals from model (6.28)

6.0

5.5

5.0

4.5

4.0

i

)
e
m
T
(
g
o

l

4.0

4.5

5.0

5.5

6.0

Fitted Values

  Figure 6.42

  A plot of log(Time) against fitted values with a straight line added

200

6  Diagnostics and Transformations for Multiple Linear Regression

Residuals vs Fitted

17

40

22

4.0

4.5

5.0

5.5

6.0

Fitted Values

Scale−Location

22

17

40

0.5

0.0

-0.5

1.5

1.0

0.5

0.0

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

Normal Q−Q

17

40

22

-2

-1

0

1

2

Theoretical Quantiles

Residuals vs Leverage

17

0.5

39

Cook’s distance
22

0.5
1

2

1

0

-2

2

1

-1

-3

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

4.0

4.5

5.0

5.5

6.0

0.0

0.1

0.2

0.3

Fitted Values

Leverage

  Figure 6.43

  Diagnostic plots from R for model (6.28)

 Given below is the output from R associated with fitting model (6.28).

Regression output from R

 Call:
 lm(formula  =  log(Time)  ~  log(DArea)  +  log(CCost)  +  log(Dwgs)  +
log(Length) + log(Spans))

 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

2.28590
-0.04564
0.19609
0.85879
-0.03844
0.23119

 (Intercept)
 log(DArea)
 log(CCost)
 log(Dwgs)
 log(Length)
 log(Spans)
 ---
 Residual standard error: 0.3139 on 39 degrees of freedom
 Multiple R-Squared: 0.7762,  Adjusted R-squared: 0.7475
 F-statistic: 27.05 on 5 and 39 DF,  p-value: 1.043e-11

0.61926
0.12675
0.14445
0.22362
0.15487
0.14068

3.691
-0.360
1.358
3.840
-0.248
1.643

0.00068  ***
0.72071
0.18243
0.00044  ***
0.80530
0.10835

 Notice  that  while  the  overall  F-test  for  model  (6.28)  is  highly  statistically
significant (i.e., has a very small p-value), only one of the estimated regression

6.4  Multicollinearity

201

6.0

5.5

5.0

4.5

4.0

6.0

5.5

5.0

4.5

4.0

i

)
e
m
T
(
g
o

l

i

)
e
m
T
(
g
o

l

0

3
2
1
log(DArea)

6.0

5.5

5.0

4.5

4.0

6.0

5.5

5.0

4.5

4.0

i

)
e
m
T
(
g
o

l

i

)
e
m
T
(
g
o

l

4

5

6
log(CCost)

7

6.0

5.5

5.0

4.5

4.0

6.0

5.5

5.0

4.5

4.0

i

)
e
m
T
(
g
o

l

i

)
e
m
T
(
g
o

l

1.5

2.0
log(Dwgs)

2.5

3.5 4.5 5.5 6.5
log(Length)

0.0 0.5 1.0 1.5 2.0
log(Spans)

4.0 4.5 5.0 5.5 6.0
Fitted Values

  Figure 6.44

  Marginal model plots for model (6.28)

coefficients is statistically significant (i.e., log(Dwgs) with a p-value < 0.001).
Even  more  troubling  is  the  fact  that  the  estimated  regression  coefficients  for
log(DArea) and log(Length) are of the wrong sign (i.e., negative), since longer
bridges  or  bridges  with  larger  area  should  take  a  longer  rather  than  a  shorter
time to design.

 Finally, we show in Figure  6.45  the added-variable plots associated with model
(6.28).  The  lack  of  statistical  significance  of  the  predictor  variables  other  than
log(Dwgs) is evident from Figure  6.45 .

 When  two  or  more  highly  correlated  predictor  variables  are  included  in  a
regression model, they are effectively carrying very similar information about the
response variable. Thus, it is difficult for least squares to distinguish their sepa-
rate  effects  on  the  response  variable.  In  this  situation  the  overall  F-test  will  be
highly statistically significant but very few of the regression coefficients may

202

6  Diagnostics and Transformations for Multiple Linear Regression

be  statistically  significant.  Another  consequence  of  highly  correlated  predictor
variables is that some of the coefficients in the regression model are of the oppo-
site sign than expected.

 The output from R below gives the correlations between the predictors in model

(6.28). Notice how most of the correlations are greater than 0.8.

Output from R: Correlations between the predictors in (6.28)

 logDArea
 logCCost
 logDwgs
 logLength
 logSpans

  logDArea  logCCost  logDwgs  logLength  logSpans
0.782
0.801
0.775
0.831
0.630
1.000
0.858
0.752
1.000
0.630

0.884
0.890
0.752
1.000
0.858

0.909
1.000
0.831
0.890
0.775

1.000
0.909
0.801
0.884
0.782

Added−Variable Plot

Added−Variable Plot

Added−Variable Plot

s
r
e
h
t
O

|

i

)
e
m
T
(
g
o

l

0.6

0.2

-0.2

-0.6

s
r
e
h
t
O

|

i

)
e
m
T
(
g
o

l

0.6

0.2

-0.2

-0.6

s
r
e
h
t
O

|

i

)
e
m
T
(
g
o

l

0.5

0.0

-0.5

-1.0

-0.5

0.0 0.5

-0.4 0.0 0.4

-0.4

0.0

0.4

log(DArea) | Others

log(CCost) | Others

log(Dwgs) | Others

Added−Variable Plot

Added−Variable Plot

s
r
e
h
t
O

|

i

)
e
m
T
(
g
o

l

0.6

0.2

-0.2

-0.6

s
r
e
h
t
o

|

i

)
e
m
T
(
g
o

l

0.5

0.0

-0.5

-0.6

0.0

0.4 0.8

-1.0

0.0 0.5

log(Length) | Others

log(Spans) | Others

  Figure 6.45

  Added-variable plots for model (6.28)

6.5  Case Study: Effect of Wine Critics’ Ratings on Prices of Bordeaux Wines

203

  6.4.1  Multicollinearity and Variance Inflation Factors

 First, consider a multiple regression model with two predictors

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

e
+

 Let  r  12  denote the correlation between  x  1  and  x  2  and
tion of  x  j . Then it can be shown that
1
2
r
12

s
1)
−

ˆVar(
β

×

−

=

n

1

S

2
x

)

(

2

j

j

j

=

1,2

jxS    denote the standard devia-

 Notice  how  the  variance  of     ˆ
jb     gets  larger  as  the  absolute  value  of   r  12   increases.
Thus,  correlation amongst the predictors increases the variance of the estimated
regression  coefficients .  For  example,  when    2
r =
jb    is
12
1
2
1 r−
12

    times larger than it would be if    2
r =   . The term
12

     the  variance  of    ˆ

1
1 0.99

1
2
r
12

50.25

0.99

=

−

=

−

1

0

2

is called a variance inflation factor (VIF).

 Next consider the general multiple regression model

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

...
+ +

b

x

p

p

+

e

 Let   Rj 2       denote the value of   R 2   obtained from the regression of  x  j  on the other  x ’s (i.e.,
the amount of variability explained by this regression). Then it can be shown that

ˆVar(
β

)

=

j

1
R

−

2
j

1

×

(

n

2

s
1)
−

S

2
x

j

j

=

1,...,

p

 The term 1/(1–   Rj 2      ) is called the  j th  variance inflation factor (VIF) .

 The variance inflation factors for the bridge construction example are as follows:

  log(DArea)  log(CCost)  log(Dwgs)  log(Length)  log(Spans)
3.878397
   7.164619

8.483522  3.408900

8.014174

 A number of these variance inflation factors exceed 5, the cut-off often used, and so
the associated regression coefficients are poorly estimated due to multicollinearity.

 We shall return to this example in Chapter 7.

  6.5

 Case Study: Effect of Wine Critics’ Ratings on Prices
of Bordeaux Wines

 We next answer the questions in Section 1.1.4. In particular, we are interested in
the effects of an American wine critic, Robert Parker and an English wine critic,
Clive  Coates  on  the  London  auction  prices  of  Bordeaux  wines  from  the  2000
vintage.

204

  Part (a)

6  Diagnostics and Transformations for Multiple Linear Regression

 Since interest centres on estimating the percentage effect on price of a 1% increase in
ParkerPoints and a 1% increase in CoatesPoints we consider the following model

Y
log( )

=

b

0

+

+

 where

b
1
b

log(
x
6 6

+

x
1
b

)
+
x
7 7

b

log(
2
e
+

x

2

)

+

b

x
3 3

+

b

x

4

4

+

b

x
5 5

 (6.29)

  Y  = Price = the price (in pounds sterling) of 12 bottles of wine
  x   1   = ParkerPoints = Robert Parker’s rating of the wine (out of 100)
  x   2   = CoatesPoints = Clive Coates’ rating of the wine (out of 20)
  x   3   =  P95andAbove = 1 (0) if the wine scores 95 or above from Robert Parker

(otherwise)

  x   4   = FirstGrowth = 1 (0) if the wine is a First Growth (otherwise)
  x   5   = CultWine = 1 (0) if the wine is a cult wine (otherwise)
  x   6   = Pomerol = 1 (0) if the wine is from Pomerol (otherwise)
  x   7   = VintageSuperstar = 1 (0) if the wine is a vintage superstar (otherwise)
 Recall  from  Chapter  1  that  Figure  1.9  contains  a  matrix  plot  of  log(Price),
log(Parker’s ratings) and log(Coates ratings), while Figure 1.10 shows box plots of
log(Price) against each of the dummy variables.

 Figure  6.46  contains plots of the standardized residuals against each predictor
and the fitted values for model (6.29). The plots are in the form of scatter plots for
real valued predictors and box plots for predictors in the form of dummy variables.
Each of the scatter plots in Figure  6.46  shows a random pattern. In addition, the box
plots  show  that  the  variability  of  the  standardized  residuals  is  relatively  constant
across both values of each dummy predictor variable. Thus, model (6.29) appears
to be a valid model for the data.

 Figure  6.47  contains a plot of log(Price) against the fitted values. The straight-
line  fit  to  this  plot  provides  a  reasonable  fit.  This  provides  further  evidence  that
model (6.29) is a valid model for the data.

 Figure  6.48  shows the diagnostic plots provided by R for model (6.29). These
plots further confirm that model (6.29) is a valid model for the data. The dashed
vertical  line  in  the  bottom  right-hand  plot  of  Figure   6.48   is  the  usual  cut-off
for declaring a point of high leverage (i.e.,   2 × (p + 1)/n = 16/72 = 0.222  ). Case 67,
Le Pin is a bad leverage point.

 Figure  6.49  contains the recommended marginal model plots for model (6.29).
Notice that the nonparametric estimates of each pair-wise relationship are marked
as solid curves, while the smooths of the fitted values are marked as dashed curves.
The two curves in each plot match very well thus providing further evidence that
(6.29) is a valid model.

 Given below is the output from R associated with fitting model (6.29). Notice
that  the  overall  F-test  for  model  (6.29)  is  highly  statistically  significant  and
the  only  estimated  regression  coefficient  that  is  not  statistically  significant  is
P95andAbove.

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

2

0

−2

2

0

−2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

2.70 2.80 2.90

4.48

4.54

4.60

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

0

1

log(ParkerPoints)

log(CoatesPoints)

P95andAbove

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

2

0

−2

0

1

Pomerol

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

2

0

−2

0

1

CultWine

5 6

7

8

9

0

1

FirstGrowth

0

1

VintageSuperstar

Fitted values

  Figure 6.46

  Plots of the standardized residuals from model (M1)

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

5

6

7

8

9

Fitted Values

  Figure 6.47

  A plot of log(Price) against fitted values with a straight line added

206

6  Diagnostics and Transformations for Multiple Linear Regression

Residuals vs Fitted

58

67

61

5

6

7

8

9

Fitted Values

Scale−Location
61
67

58

0.5

0.0

−0.5

1.5

1.0

0.5

0.0

Normal Q−Q

67

58

61

−2

−1

0

1

2

Theoretical Quantiles

Residuals vs Leverage

67

Cook’s distance

41

7

1
0.5

0.5
1

3

2
1
0

−2

3

1

−1

−3

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

5

6

7

8

9

0.0

0.2

0.4

Fitted values

Leverage

  Figure 6.48

  Diagnostic plots from R for model (6.29)

Regression output from R

 Call:
 lm(formula  =  log(Price)  ~  log(ParkerPoints)  +  log(Coates
Points)  +  P95andAbove  +  FirstGrowth  +  CultWine  +  Pomerol  +
VintageSuperstar)
 Coefficients:

  Estimate  Std. Error  t value  Pr(>|t|)
 (Intercept)
-51.14156
 log(ParkerPoints)  11.58862
1.62053
 log(CoatesPoints)
0.10055
 P95andAbove
0.86970
 FirstGrowth
 1.35317
 CultWine
0.53644
 Pomerol
 VintageSuperstar
0.61590
 ---
 Residual standard error: 0.2883 on 64 degrees of freedom
 Multiple R-Squared: 0.9278,  Adjusted R-squared: 0.9199
 F-statistic: 117.5 on 7 and 64 DF,  p-value: < 2.2e-16

-5.692  3.39e-07  ***
5.605  4.74e-07  ***
2.650
0.734
6.944  2.33e-09  ***
9.288  1.78e-13  ***
5.727  2.95e-07  ***
2.791

8.98557
2.06763
0.61154
0.13697
0.12524
0.14569
0.09366
0.22067

0.01013  *
0.46556

0.00692  **

6.5  Case Study: Effect of Wine Critics' Ratings on Prices of Bordeaux Wines

207

 Figure  6.50  shows the added-variable plots associated with model (6.29). Case
53  (Pavie)  appears  to  be  highly  influential  in  the  added  variable  plot  for
log(CoatesPoints), and, as such, it should be investigated. Other outliers are evident
from the added variable plots in Figure  6.50 . We shall continue under the assump-
tion that (6.29) is a valid model.

 The variance inflation factors for the training data set are as follows:

 log(ParkerPoints)  log(CoatesPoints)  P95andAbove  FirstGrowth
1.625091
1.410011

 5.825135

4.012792

 CultWine
 1.188243  1.124300

Pomerol  VintageSuperstar
1.139201

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

4.48

4.52

4.56

4.60

2.70 2.75 2.80 2.85 2.90 2.95

log(ParkerPoints)

log(CoatesPoints)

)
e
c
i
r

P
(
g
o

l

9

8

7

6

5

5

6

7

8

9

Fitted Values

  Figure 6.49

  Marginal model plots for model (6.29)

208

6  Diagnostics and Transformations for Multiple Linear Regression

0.5

0.0

-0.5

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

44

61

0.6

0.2

-0.2

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

-0.6

53

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

0.6

0.2

-0.2

-0.6

1.0

0.5

0.0

-0.5

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

-0.04

0.02

-0.20

0.05

-0.4

0.2

-0.6

0.2

log(ParkerPoints) | Others

log(CoatesPoints) | Others

P95andAbove | Others

FirstGrowth | Others

1.5

1.0

0.5

0.0

-0.5

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

0.5

0.0

-0.5

s
r
e
h
t
O

|

)
e
c
i
r

P
(
g
o

l

0.5

0.0

-0.5

-0.2

0.6

-0.4 0.4

0.0

0.6

CultWine | Others

Pomerol | Others

VintageSuperstar | Others

  Figure 6.50

  Added-variable plots for model (6.29)

 Only one of the variance inflation factors exceeds 5 and so multicollinearity is only
a minor issue.

 Since (6.29) is a valid model and the only estimated regression coefficient that
is not statistically significant is  x  3 , P95andAbove we shall drop it from the model
and consider the reduced model

Y
log( )

=

b

0

+

b
1

log(
x
6 6

+

x
1
b

)
+
x
7 7

b

+

log(
2
e

x

2

)

+

b

x

4

4

+

b

x
5 5

 (6.30)

+

b

 Given below is the output from R associated with fitting model (6.30).

Regression output from R

 Call:
 lm(formula = log(Price) ~ log(ParkerPoints) + log(CoatesPoints) +

 FirstGrowth + CultWine + Pomerol + VintageSuperstar)

 Coefficients:

 (Intercept)
-56.47547
 log(ParkerPoints)  12.78432

 5.26798  -10.721  5.20e-16  ***
10.073  6.66e-15  ***
1.26915

 Estimate  Std. Error  t value  Pr(>|t|)

6.5  Case Study: Effect of Wine Critics' Ratings on Prices of Bordeaux Wines

209

1.60447
0.86149
1.33601
0.53619
0.59470

 log(CoatesPoints)
 FirstGrowth
 CultWine
 Pomerol
 VintageSuperstar
 ---
 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ‘ 1
 Residual standard error: 0.2873 on 65 degrees of freedom
 Multiple R-Squared: 0.9272,  Adjusted R-squared: 0.9205
 F-statistic: 138 on 6 and 65 DF,  p-value: < 2.2e-16

0.60898
 0.12430
 0.14330
 0.09333
0.21800

2.635
6.931  2.30e-09  ***
9.323  1.34e-13  ***
5.745  2.64e-07  ***
2.728

0.00819  **

0.01052  *

 Since  all  the  predictor  variables  have  statistically  significant   t -values,  there  is  no
redundancy in model (6.30) and as such we shall adopt it as our full model. Notice
how similar the estimated regression coefficients are in models (6.29) and (6.30).
Note that there is no real need to redo the diagnostic plots for model (6.30) since it
is so similar to model (6.29).

 Alternatively, we could consider a partial F-test to compare models (6.29) and

(6.30). The R output for such a test is given below:

 Analysis of Variance Table

 Model  1:  log(Price)  ~  log(ParkerPoints)  +  log(CoatesPoints)  +

FirstGrowth +     CultWine + Pomerol + VintageSuperstar

 Model  2:  log(Price)  ~  log(ParkerPoints)  +  log(CoatesPoints)  +
P95andAbove  +      FirstGrowth  +  CultWine  +  Pomerol  +
VintageSuperstar

RSS  Df  Sum of Sq

F  Pr(>F)

   Res.Df
 1
 2

65  5.3643
64  5.3195

1

0.0448  0.5389  0.4656

 The   p -value  from  the  partial  F-test  is  the  same  as  the   t -test   p -value  from  model
(6.29). This is due to the fact that only one predictor has been removed from (6.29)
to obtain (6.30).

  Part (b)

 Based on model (6.30) we find that

   1.     A 1% increase in Parker points is predicted to increase price by 12.8%
   2.     A 1% increase in Coates points is predicted to increase price by 1.6%

  Part (c)

 If we consider either the full model (6.29), which includes 95andAbove, or the
final model (6.30), which does not, then the predictor variable ParkerPoints has
the largest estimated effect on price, since it has the largest regression coeffi-
cient. This effect is also the most statistically significant, since the correspond-
ing   t -value  is  the  largest  in  magnitude  (or  alternatively,  the  corresponding
 p -value is the smallest).

210

6  Diagnostics and Transformations for Multiple Linear Regression

 Table 6.4
 Wine

  Unusually highly priced wines
 Standardized residuals

 Tertre-Roteboeuf
 Le Pin

 2.43
 2.55

 Table 6.5
 Wine
 La Fleur-Petrus

  Unusually lowly priced wines
 Standardized residuals
 –2.73

  Part (d)

 The claim that “in terms of commercial impact his (Coates’) influence is zero” is
not supported by the regression model developed in (a). In particular, Clive Coates
ratings have a statistically significant impact on price, even after adjusting for the
influence of Robert Parker.

  Part (e)

 Based on the regression model in (a), there is no evidence of a statistically signifi-
cant extra price premium paid for Bordeaux wines from the 2000 vintage that score
95 and above from Robert Parker since the coefficient of 95andAbove in the regres-
sion model is not statistically significant.

  Part (f)

    (i)      Wines which are unusually highly priced are those with standardized residuals

greater than + 2. These are given in Table  6.4 .

   (ii)      Wines which are unusually lowly priced are those with standardized residuals

less than –2. The only such wine is given in Table  6.5 .

  6.6  Pitfalls of Observational Studies Due to Omitted Variables

 In this section we consider some of the pitfalls of regression analysis based on data
from observational studies. An observational study is one in which outcomes are
observed and no attempt is made to control or influence the variables of interest. As
such  there  may  be  systematic  differences  that  are  not  included  in  the  regression
model, which we shall discover, raises the issue of omitted variables.

  6.6.1  Spurious Correlation Due to Omitted Variables

 We  begin  by  describing  a  well-known  weakness  of  regression  modeling  based  on
observational data, namely that the observed association between two variables may
be because both are related to a third variable that has been omitted from the regression
model. This phenomenon is commonly referred to as “spurious correlation.”

6.6  Pitfalls of Observational Studies Due to Omitted Variables

211

 The term spurious correlation dates back to at least Pearson (1897). According

to Stigler (2005, p. S89):

 … Pearson studied measurements of a large collection of skulls from the Paris Catacombs,
with the goal of understanding the interrelationships among the measurements. For each
skull, his assistant measured the length and the breadth, and computed … the correlation
coefficient  between  these  measures  …  The  correlation  …  turned  out  to  be  significantly
greater than zero … But … the discovery was deflated by his noticing that if the skulls were
divided into male and female, the correlation disappeared. Pearson recognized the general
nature of this phenomenon and brought it to the attention of the world. When two measure-
ments are correlated, this may be because they are both related to a third factor that has
been  omitted  from  the  analysis.  In  Pearson’s  case,  skull  length  and  skull  breadth  were
essentially uncorrelated if the factor “sex” were incorporated in the analysis.

 Neyman (1952, pp. 143–154) provides an example based on fictitious data which
dramatically illustrates spurious correlation. According to Kronmal (1993, p. 379),
a fictitious friend of Neyman was interested in empirically examining the theory
that storks bring babies and collected data on the number of women, babies born
and storks in each of 50 counties. This fictitious data set was reported in Kronmal
(1993, p. 383) and it can be found on the course web site in the file storks.txt.

 Figure  6.51  shows a scatter plot of the number of babies against the number of
storks along with the least squares fit. Fitting the following straight-line regression
model to these data produces the output shown below.

Babies

=

b

0

+

Storks
b
1

e
+

 (6.31)

i

s
e
b
a
B

f

o
r
e
b
m
u
N

45

40

35

30

25

20

15

10

2

4

6

8

10

Number of Storks

  Figure 6.51

  A plot of two variables from the fictitious data on storks

212

6  Diagnostics and Transformations for Multiple Linear Regression

 The regression output from R shows that there is very strong evidence of a posi-
tive linear association between the number of storks and the number of babies born
( p -value  <  0.0001).  However,  to  date  we  have  ignored  the  data  available  on  the
other potential predictor variable, namely, the number of women.

Regression output from R

 Coefficients:

 Estimate  Std. Error   t value  Pr(>|t|)

4.3293
3.6585

 (Intercept)
 Storks
 ---
 Residual standard error: 5.451 on 52 degrees of freedom
 Multiple R-Squared: 0.6807,  Adjusted R-squared: 0.6745
 F-statistic: 110.8 on 1 and 52 DF,  p-value: 1.707e-14

 2.3225
0.3475

1.864

10.528  1.71e-14  ***

0.068  .

 Figure   6.52   shows  scatter  plots  of  all  three  variables  from  the  stork  data  set
along with the least squares fits. It is apparent that there is a strong positive linear
association between each of the three variables. Thus, we consider the following
regression model:

 (6.32)

6

Babies

=

b

0

+

Storks Women e
+
b
1
2

b

+

i

s
e
b
a
B

f
o

r
e
b
m
u
N

40

30

20

10

i

s
e
b
a
B

f
o

r
e
b
m
u
N

40

30

20

10

2

4
8
6
Number of Storks

10

1

n
e
m
o
W

f

o

r
e
b
m
u
N

6

5

4

3

2

1

3

2
5
Number of Women

4

2

4

6

8

10

Number of Storks

  Figure 6.52

  A plot of all three variables from the fictitious data on storks

6.6  Pitfalls of Observational Studies Due to Omitted Variables

213

 Given below is the output from R for a regression model (6.32). Notice that the
estimated regression coefficient for the number of storks is zero to many decimal
places. Thus, correlation between the number of babies and the number of storks
calculated from (6.31) is said to be  spurious  as it is due to both variables being
associated with the number of women. In other words, a predictor (the number of
women) exists which is related to both the other predictor (the number of storks)
and the outcome variable (the number of babies), and which accounts for all of
the observed association between the latter two variables. The number of women
predictor variable is commonly called either an  omitted variable  or a  confound-
ing covariate .

Regression output from R

 Coefficients:

 Estimate
1.000e+01
5.000e+00
-6.203e-16

Std. Error
2.021e+00
8.272e-01
6.619e-01  -9.37e-16

 (Intercept)
 Women
 Storks
 ---
 Residual standard error: 4.201 on 51 degrees of freedom
 Multiple R-Squared: 0.814,  Adjusted R-squared: 0.8067
 F-statistic: 111.6 on 2 and 51 DF,  p-value: < 2.2e-16

t value  Pr(>|t|)

4.948  8.56e-06  ***
6.045  1.74e-07  ***

1

  6.6.2  The Mathematics of Omitted Variables

 In  this  section  we  shall  consider  the  situation  in  which  an  important  predictor  is
omitted from a regression model. We shall denote the omitted predictor variable by
 v  and the predictor variable included in the one-predictor regression model by  x . In
the fictitious stork data  x  corresponds to the number of storks and  v  corresponds to
the number of women.

 To make things as straightforward as possible we shall consider the situation in

which  Y  is related to two predictors  x  and  v  as follows:

Y

=

b

0

+

b
1

x

+

b

2

v

+

e
,Y x v
·

 Similarly, suppose that  v  is related to  x  as follows:

v

=

a

0

+

a

1

x

+

e
·v x

 (6.33)

 (6.34)

 Substituting (6.34) into (6.33) we will be able to discover what happens if omit  v
from the regression model. The result is as follows:

Y

=

(
b

0

+

b a
2

0

) (
b
+
1

+

b a
2

1

)

x

+

(
e
Y x v
·
,

+

b

e
v x
·

2

)

 (6.35)

214

6  Diagnostics and Transformations for Multiple Linear Regression

 +  b2  α1  . We next consider two distinct cases:

 Notice that the regression coefficient of  x  in (6.35) is the sum of two terms, namely,
  b1
   1.       a1 = 0 and/or b2 = 0 :  Then the omitted variable has no effect on the regression

model, which includes just  x  as a predictor.

   2.    a1  ≠  0  and  b2 ≠ 0     .  Then  the  omitted  variable  has  an  effect  on  the  regression
model, which includes just  x  as a predictor. For example,  Y  and  x  can be strongly
linearly associated (i.e., highly correlated) even when b1  = 0. (This is exactly the
situation in the fictitious stork data.) Alternatively,  Y  and  x  can be strongly nega-
tively associated even when b1  > 0  .

  6.6.3  Omitted Variables in Observational Studies

 Omitted variables are most problematic in observational studies. We next look at
two real examples, which exemplify the issues.

 The first example is based on a series of papers (Cochrane et al., 1978; Hinds,
1974;  Jayachandran  and  Jarvis,  1986)  that  model  the  relationship  between  the
prevalence of doctors and the infant mortality rate. The controversy was the subject
of  a  1978   Lancet   editorial  entitled  “The  anomaly  that  wouldn’t  go  away.”  In  the
words of one of the authors of the original paper, Selwyn St Leger (2001):

 When Archie Cochrane, Fred Moore and I conceived of trying to relate mortality in devel-
oped countries to measures of health service provision little did we imagine that it would
set a hare running 20 years into the future. … The hare was not that a statistical association
between health service provision and mortality was absent. Rather it was the marked posi-
tive correlation between the prevalence of doctors and infant mortality. Whatever way we
looked at our data we could not make that association disappear. Moreover, we could iden-
tify no plausible mechanism that would give rise to this association.

 Kronmal (1993, p. 624) reports that Sankrithi et al. (1991) found a significant nega-
tive  association  ( p   <  0.001)  between  infant  mortality  rate  and  the  prevalence  of
doctors after adjusting for population size. Thus, this spurious correlation was due
to an omitted variable.

 The second example involves a series of observational studies reported in Pettiti
(1998) which find evidence of beneficial effects of hormone replacement therapy
(HRT) and estrogen replacement therapy (ERT) on coronary heart disease (CHD).
On the other hand, Pettiti (1998), reports that “a randomized controlled trial of 2763
postmenopausal women with established coronary disease, treatment with estrogen
plus progestin did not reduce the rate of CHD events”. Pettiti (1998) points to the
existence  of  omitted  variables  in  the  following  discussion  of  the  limitations  of
observational studies in this situation:

 Reasons to view cautiously the observational results for CHD in users of ERT and HRT
have always existed. Women with healthy behaviors, such as those who follow a low-fat
diet and exercise regularly, may selectively use postmenopausal hormones. These differ-
ences in behavior may not be taken into account in the analysis of observational studies
because they are not measured, are poorly measured, or are unmeasurable.

6.7  Exercises

215

 In  summary,  the  possibility  of  omitted  variables  should  be  considered  when  the
temptation  arises  to  over  interpret  the  results  of  any  regression  analysis  based  on
observational data. Stigler (2005) advises that we “discipline this predisposition (to
accept the results of observational studies) by a heavy dose of skepticism.” We finish
this section by reproducing the following advice from Wasserman (2004, p. 259):

 Results from observational studies start to become believable when: (i) the results are repli-
cated in many studies; (ii) each of the studies controlled for possible confounding variables,
(iii) there is a plausible scientific explanation for the existence of a causal relationship.

  6.7  Exercises

    1.     The multiple linear regression model can be written as

Y X

b=

+

e

where    Var(e) = σ2I  and   I   is the   (n × n)   identity matrix so that   Var (Y | X) = s
The fitted or predicted values are given by

2 I  .

ˆ
Y X
=

ˆ
b

=

X(X X) X
′

-1

Y
=′

HY

where

H X(X X) X    Show that
¢

.

¢

=

Var

-1

(
ˆ
Y | X

)
s=

2

H   .

   2.     Chapter 5-2 of the award-winning book on baseball (Keri, 2006) makes exten-
sive  use  of  multiple  regression.  For  example,  since  the  30  “Major  League
Baseball  teams  play  eighty-one  home  games  during  the  regular  season  and
receive  the  largest  share  of  their  income  from  the  ticket  sales  associated  with
these games” the author develops a least squares regression model to predict  Y ,
yearly income (in 2005 US dollars) from ticket sales for each team from home
games each year. Ticket sales data for each team for each of the years from 1997
to 2004 are used to develop the mode1. Thus, there are 30 × 8   = 240   rows of
data. Twelve potential predictor variables are identified as follows: Six predictor
variables measure team quality, namely:

  x  1  = Number of games won in current season
  x  2  = Number of games won in previous season
  x  3  = Dummy variable for playoff appearance in current season
  x  4  = Dummy variable for playoff appearance in previous season
  x  5  = Number of winning seasons in the past 10 years
  x  6  = Number of playoff appearances in the past 10 years
 Three predictors measure stadium of quality, namely:

  x  7  = Seating capacity
  x  8  = Stadium quality rating
  x  9  = Honeymoon effect

216

6  Diagnostics and Transformations for Multiple Linear Regression

 Two predictors measure market quality, namely:
  x  10  = Market size
  x  11  = Per-capita income
 Finally,  x  12  = Year is included to allow for inflation. The author found that  “seven
of these (predictor) variables had a statistically significant impact on attendance
revenue”  (i.e., had a  t -statistic significant at least at the 10% level). Describe in
detail two major concerns that potentially threaten the validity of the model.

   3.     The analyst was so impressed with your answers to Exercise 5 in Section 3.4
that your advice has been sought regarding the next stage in the data analy-
sis, namely an analysis of the effects of different aspects of a car on its sug-
gested  retail  price.  Data  are  available  for  all  234  cars  on  the  following
variables:
  Y  = Suggested Retail Price;  x  1  = Engine size;  x  2  = Cylinders;
  x  3  = Horse power;  x  4  = Highway mpg;  x  5  = Weight          x  6  = Wheel Base;
and  x  7  = Hybrid, a dummy variable which is 1 for so-called hybrid cars. The first
model considered for these data was

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

+

b

x
5 5

+

b

x
6 6

+

b

x
7 7

e
+

  (6.36)

 Output from model (6.36) and associated plots (Figures 6.53 and 6.54) appear
on the following pages   .

   (a)     Decide whether (6.36) is a valid model. Give reasons to support your answer.
   (b)      The plot of residuals against fitted values produces a curved pattern. Describe

what, if anything can be learned about model (6.36) from this plot.

   (c)     Identify any bad leverage points for model (6.36).

 The multivariate version of the Box-Cox method was used to transform the pre-
dictors, while a log transformation was used for the response variable to improve
interpretability. This resulted in the following model

Y
log( )

=

b

0

+

0.25

b

x
1 1

+

b

2

log(

x

)

+

b

3

2

log(

x
3

)

(6.37)

+

b

4

⎛
⎝

1

⎞
⎠

x

4

+

b

x
5 5

+

b

6

log(

x
6

)

+

b

x
7 7

+

e

 Output  from  model  (6.37)  and  associated  plots  (Figures  6.55,  6.56  and  6.57)
appear on the following pages. In that output a “t” at the start of a variable name
means that the variable has been transformed according to model (6.37).

   (d)     Decide whether (6.37) is a valid model.
   (e)       To obtain a final model, the analyst wants to simply remove the two insig-
nificant predictors (1/x4) (i.e., tHighwayMPG) and   log (x6)   (i.e., tWheel-
Base)  from  (6.37).  Perform  a  partial  F-test  to  see  if  this  is  a  sensible
strategy.

6.7  Exercises

EngineSize

12

8

4

60

40

20

125

110

95

4

8

12

20 40 60

95 110 125

Cylinders

Horsepower

HighwayMPG

Weight

WheelBase

217

4

2

500

300

100

3500

2000

Hybrid

0.6

0.0

2

4

100 300 500

2000 3500

0.0

0.6

  Figure 6.53

  Matrix plot of the variables in model (6.36)

   (f)       The analyst’s boss has complained about model (6.37) saying that it fails to
take  account  of  the  manufacturer  of  the  vehicle  (e.g.,  BMW  vs  Toyota).
Describe how model (6.37) could be expanded in order to estimate the effect
of manufacturer on suggested retail price.

 Output from R output from model (6.36)

   Call:
 lm(formula
 Horsepower  + HighwayMPG
 Coefficients:

= SuggestedRetailPrice

+ Weight

~ EngineSize

+ Cylinders +
+ WheelBase  + Hybrid)

 (Intercept)
 EngineSize
 Cylinders
 Horsepower

Estimate  Std. Error  t value  Pr(>|t|)

-68965.793
-6957.457
3564.755
179.702

16180.381
1600.137
969.633
16.411

-4.262  2.97e-05  ***
-4.348  2.08e-05  ***
3.676  0.000296  ***
< 2e-16  ***

10.950

218

6  Diagnostics and Transformations for Multiple Linear Regression

 HighwayMPG
 Weight
 WheelBase
 Hybrid

637.939
11.911
47.607
431.759

202.724
2.658
178.070
6092.087

3.147  0.001873  **
4.481  1.18e-05  ***
0.267  0.789444
0.071  0.943562

 Residual standard error: 7533 on 226 degrees of freedom
 Multiple R-squared:0.7819,  Adjusted R-squared: 0.7751
 F-statistic: 115.7 on 7 and 226 DF,  p-value: < 2.2e-16

 box.cox Transformations to Multinormality

 EngineSize
 Cylinders
 Horsepower
 HighwayMPG
 Weight
 WheelBase

 Est.Power  Std.Err.  Wald(Power=0)  Wald(Power=1)
-5.7096
-5.7430
-8.5976
-12.0801
0.3057
-1.3946

1.9551
-0.0144
-0.1439
-6.9941
4.7259
0.1012

0.2551
-0.0025
-0.0170
-1.3752
1.0692
0.0677

0.1305
0.1746
0.1183
0.1966
0.2262
0.6685

LRT
 LR test, all lambda equal 0  78.4568
 LR test, all lambda equal 1 305.1733

df

p.value
6 7.438494e-15
6 0.000000e+00

Residuals vs Fitted

Normal Q−Q

222

229

223

20000

60000

Fitted Values

Scale−Location

222

229

223

20000

-20000

2.0

1.0

0.0

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

6

4

2

0

-2

6

4

2

0
-2

222

223

229

−3 −2 −1

0

1

2

3

Theoretical Quantiles

Residuals vs Leverage

222

223

67

1
0.5

0.5
1

Cook’s distance

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

20000

60000

Fitted Values

0.0

0.1

0.2

0.3

0.4

Leverage

    Figure 6.54    Diagnostic plots from model (6.36)

6.7  Exercises

219

  Output from R for model (6.37)

   Call:
lm(formula  =  tSuggestedRetailPrice  ~  tEngineSize  +  tCylinders  +
tHorsepower + tHighwayMPG + Weight + tWheelBase + Hybrid)
Coefficients:

Estimate
(Intercept)
6.119e+00
tEngineSize  -2.247e+00
3.950e-01
tCylinders
tHorsepower
8.951e-01
tHighwayMPG  -2.133e+00
5.608e-04
Weight
-1.894e+01
tWheelBase
1.330e+00
Hybrid

Std. Error
7.492e-01
3.352e-01
1.165e-01
8.542e-02
4.403e+00
6.071e-05
4.872e+01
1.866e-01

t value  Pr(>|t|)

8.168  2.22e-14  ***
-6.703  1.61e-10  ***
3.391  0.000823  ***
< 2e-16  ***

10.478
-0.484  0.628601

9.237

< 2e-16  ***

-0.389  0.697801

7.130  1.34e-11  ***

1.2 1.8 2.4

0.02 0.04

4.55 4.70

tEngineSize

tCylinders

tHorsepower

tHighwayMPG

Weight

tWheelBase

2.4

1.8

1.2

0.04

0.02

4.70

4.55

1.5

1.3

1.1

5.5

4.5

3500

2000

Hybrid

0.6

0.0

1.1 1.3 1.5

4.5 5.5

2000 3500

0.0

0.6

  Figure 6.55

  Matrix plot of the variables in model (6.37)

220

6  Diagnostics and Transformations for Multiple Linear Regression

Residuals vs Fitted

Normal Q−Q

0.8

0.4

0.0

-0.4

2.0

1.5

1.0

0.5

0.0

67

222

229

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
S

t

67

222

4

2

0

-2

88

9.5

10.0 10.5 11.0 11.5

−3 −2 −1

0

1

2

3

Fitted Values

Theoretical Quantiles

Scale−Location

Residuals vs Leverage

67

222

88

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

4

2

0

-2

67

66

88

1

0.5

0.5

1

Cook’s distance

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

9.5

10.0 10.5 11.0 11.5

0.0

0.1

0.2

0.3

0.4

Fitted Values

Leverage

  Figure 6.56

  Diagnostic plots from model (6.37)

Residual standard error: 0.1724 on 226 degrees of freedom
Multiple R-Squared: 0.872,  Adjusted R-squared: 0.868
F-statistic: 219.9 on 7 and 226 DF,  p-value: < 2.2e-16

 Output from R for model (6.37)

   vif(m2)
  tEngineSize
 8.67

 tWheelBase
 4.78

tCylinders
7.17

tHorsepower  tHighwayMPG
4.59

5.96

Weight

8.20

Hybrid
1.22

 Call:
 lm(formula = tSuggestedRetailPrice ~ tEngineSize
+ tCylinders + tHorsepower + Weight + Hybrid)
 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

 (Intercept)
5.422e+00
 tEngineSize  -1.591e+00
2.375e-01
 tCylinders

3.291e-01
3.157e-01
1.186e-01

16.474
<2e-16  ***
-5.041  9.45e-07  ***

2.003

0.0463  *

6.7  Exercises

221

9.049e-01
5.029e-04
6.340e-01

 tHorsepower
 Weight
 Hybrid
---
 Residual standard error: 0.1781 on 228 degrees of freedom
 Multiple R-squared: 0.862,  Adjusted R-squared: 0.859
 F-statistic: 284.9 on 5 and 228 DF,  p-value: < 2.2e-16

8.305e-02
5.203e-05
1.080e-01

<2e-16  ***
<2e-16  ***
5.87  1.53e-08  ***

10.896
9.666

   4.     A book on robust statistical methods published in June 2006 considers regres-
sion models for a data set taken from Jalali-Heravi and Knouz (2002). The aim
of this modeling is to predict a physical property of chemical compounds called
the Krafft point based on four potential predictor variables using a data set of
size  n  = 32. According to Maronna, Martin and Yohai (2006, p. 380)

 The Krafft point is an important physical characteristic of the compounds called surfactants,
establishing the minimum temperature at which a surfactant can be used.

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

1.1 1.2 1.3 1.4 1.5
tEngineSize

1.2

1.6
2.0
tCylinders

2.4

4.5

5.0

5.5

6.0

tHorsepower

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

0.02 0.03 0.04 0.05

2000

3000

4000

4.55

4.65

4.75

tHighwayMPG

Weight

tWheelBase

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

e
c
i
r

P

l
i

a
t
e
R
d
e
t
s
e
g
g
u
S

t

11.5

10.5

9.5

9.5

10.5

11.5

Fitted Values

  Figure 6.57

  Marginal model plots from model (6.37)

222

6  Diagnostics and Transformations for Multiple Linear Regression

 The authors of the original paper sought to find a regression model to predict:
  Y  = Krafft Point (KPOINT)
 from
  x  1  = Randic Index (RA)
  x  2  = Heat of formation (HEAT)
  x  3  = Reciprocal of volume of the tail of the molecule (VTINV)
  x  4  = Reciprocal of Dipole Moment (DIPINV)
 The first model considered by Jalali-Heravi and Knouz (2002) was

Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

e
+

 (6.38)

 Output  from  model  (6.38)  and  associated  plots  (Figures  6.58,  6.59  and  6.60)
appear on the following pages.

6

8

10

12

0.015

0.030

0.045

KPOINT

RA

VTINV

DIPINV

HEAT

12

10

8

6

0.045

0.030

0.015

60

40

20

0

0.0045

0.0025

−250

−350

−450

0

20

40

60

0.0025

0.0045

−450 −350 −250

  Figure 6.58

  Matrix plot of the variables in model (6.38)

l

s
a
u
d
s
e
R

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

5

0

-5

1.2

0.8

0.4

0.0

6.7  Exercises

Residuals vs Fitted

Normal Q−Q

223

29

6

29

6

23

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

2

1

0

-1

-2

23

0

10 20 30 40 50 60

−2

−1

0

1

2

Fitted Values

Theoretical Quantiles

Scale−Location

23 6

29

Residuals vs Leverage

12

1

0.5

Cook’s distance

23

32

0.5

1

2

1

0

-1

-2

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

0

10 20 30 40 50 60

0.0

0.1

0.2

0.3

0.4

0.5

Fitted Values

Leverage

  Figure 6.59

  Diagnostic plots from model (6.38)

   (a)      Decide whether (6.38) is a valid model.
   (b)      The plots of standardized residuals against RA and VTINV produce curved
patterns. Describe what, if anything can be learned about model (6.38) from
these plots. Give a reason to support your answer.

   (c)      Jalali-Heravi and Knouz (2002) give “four criteria of correlation coefficient
( r ),  standard  deviation  ( s ),  F  value  for  the  statistical  significance  of  the
model and the ratio of the number of observations to the number of descrip-
tors  in  the  equation”  for  choosing  between  competing  regression  models.
Provide a detailed critique of this suggestion.

 Output from R for model (6.38)

   Call:
 lm(formula = KPOINT ~ RA + VTINV + DIPINV + HEAT)
 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

 (Intercept)  7.031e+01
1.047e+01
 RA
9.038e+03
 VTINV

3.368e+01
2.418e+00
4.409e+03

2.088  0.046369  *
4.331  0.000184  ***
2.050  0.050217  .

224

6  Diagnostics and Transformations for Multiple Linear Regression

 DIPINV
 HEAT

-1.826e+03
3.550e-01

3.765e+02
2.176e-02

-4.850  4.56e-05  ***
16.312  1.66e-15  ***

 Residual standard error: 3.919 on 27 degrees of freedom
 Multiple R-Squared: 0.9446,  Adjusted R-squared: 0.9363
 F-statistic: 115 on 4 and 27 DF,  p-value: < 2.2e-16
vif(m1)

HEAT
 25.792770 22.834190 13.621363 2.389645

DIPINV

VTINV

 RA

   5.     An  avid  fan  of  the  PGA  tour  with  limited  background  in  statistics  has  sought
your help in answering one of the age-old questions in golf, namely,  what is the
relative importance of each different aspect of the game on average prize money
in professional golf ?

 The following data on the top 196 tour players in 2006 can be found on the book
web site in the file pgatour2006.csv:

  Y , PrizeMoney = average prize money per tournament
  x  1 , Driving Accuracy is the percent of time a player is able to hit the fairway with

his tee shot.

  x  2 , GIR, Greens in Regulation is the percent of time a player was able to hit the
green in regulation. A green is considered hit in regulation if any part of the

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

2

1

0

−1

−2

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

6

7

8

9

10 11 12

0.0025

0.0035

0.0045

0.0055

RA

VTINV

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

0.015

0.025

0.035

0.045

−450

−350

−250

DIPINV

HEAT

  Figure 6.60

  Plots of standardized residuals from model (6.38)

6.7  Exercises

225

ball is touching the putting surface and the number of strokes taken is two or
less than par.

  x  3 ,  Putting  Average  measures  putting  performance  on  those  holes  where  the
green is hit in regulation (GIR). By using greens hit in regulation the effects
of chipping close and one putting are eliminated.

  x  4 ,  Birdie  Conversion%  is  the  percent  of  time  a  player  makes  birdie  or  better

after hitting the green in regulation.

  x  5 , SandSaves% is the percent of time a player was able to get “up and down”

once in a greenside sand bunker.

  x  6 , Scrambling% is the percent of time that a player misses the green in regula-

tion, but still makes par or better.

  x  7 , PuttsPerRound is the average total number of putts per round.(  http://www.

pgatour.com/r/stats/;     accessed March 13, 2007)

   (a)      A statistician from Australia has recommended to the analyst that they not
transform any of the predictor variables but that they transform  Y  using the
log transformation. Do you agree with this recommendation? Give reasons
to support your answer.

   (b)      Develop a valid full regression model containing all seven potential predic-
tor  variables  listed  above.  Ensure  that  you  provide  justification  for  your
choice of full model, which includes scatter plots of the data, plots of stand-
ardized residuals, and any other relevant diagnostic plots.

   (c)      Identify any points that should be investigated. Give one or more reasons to

support each point chosen.

   (d)     Describe any weaknesses in your model.
   (e)      The golf fan wants to remove all predictors with insignificant  t -values from the
full  model  in  a  single  step.  Explain  why  you  would  not  recommend  this
approach.

 In  the  next  chapter,  we  will  consider  variable  selection  techniques  in  order  to
remove any redundancy from this regression model.

   Chapter 7
  Variable Selection

 In this chapter we consider methods for choosing the “best” model from a class of
multiple  regression  models  using  what  are  called  variable  selection  methods.
Interestingly, while there is little agreement on how to define “best,” there is general
agreement in the statistics literature on the consequences of variable selection on
subsequent inferential procedures, (i.e., tests and confidence intervals).

 We  begin  by  introducing  some  terminology.  The  full  model  is  the  following

multiple regression model containing all  m  potential predictor variables:

    Y = b0 + b1x1 + b2x2 + … + bm xm + e

(7.1)

 Throughout this chapter we shall assume that the full model is a valid regression
model.

 Variable  selection  methods  aim  to  choose  the  subset  of  the  predictors  that  is
“best” in a given sense. In general, the more predictor variables included in a valid
model the lower the bias of the predictions, but the higher the variance. Including
too many predictors in a regression model is commonly called over-fitting while the
opposite is called under-fitting. Hesterberg, Choi, Meier and Fraley (2008) make
the  following  important  point  about  the  different  goals  of  variable  selection  and
prediction accuracy.

 If the main interest is in finding an interpretable model or in identifying the ‘true’ underly-
ing model as closely as possible, prediction accuracy is of secondary importance (to vari-
able  selection).  …  On  the  other  hand,  if  prediction  is  the  focus  of  interest,  it  is  usually
acceptable  for  the  selected  model  to  contain  some  extra  variables,  as  long  as  the  coeffi-
cients of those variables are small.

 The two key aspects of variable selection methods are:

   1.     Evaluating each potential subset of  p  predictor variables
   2.     Deciding on the collection of potential subsets

 We begin by considering the first aspect.

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_7, © Springer Science + Business Media LLC 2009

227

228

7  Variable Selection

  7.1  Evaluating Potential Subsets of Predictor Variables

 We shall discuss four criteria for evaluating subsets of predictor variables.

  7.1.1  Criterion 1: R 2 -Adjusted

 Recall  from  Chapter  5  that   R  2 ,  the  coefficient  of  determination  of  the  regression
model, is defined as the proportion of the total sample variability in the  Y ’s explained
by the regression model, that is,

2
R =

SSreg
SST

1
= −

RSS
SST

 Adding irrelevant predictor variables to the regression equation often increases  R  2 .
To compensate for this one can define an adjusted coefficient of determination,   R2
adj

R

2
adj

1
= −

RSS

/ (
SST

n
/ (

p
− −
n
1)
−

1)

,

 where  p  is the number of predictors in the current model. In fact, it can be shown
that adding predictor variables to the current model only leads to an increase in   R2
adj
if the corresponding partial  F -test statistic exceeds 1.

 The usual practice is to choose the subset of the predictors that has the  highest
adj  . It can be shown that this is equivalent to choosing the subset of the

value of   R2

predictors with the  lowest  value of    2
S

in the subset.

=

RSS
p
− −

1

n

  , where  p  is the number of predictors

adj    =  0.692  for  a  subset  of   p   =  10  predictors,    R2

 We shall see that  choosing the subset of the predictors that has the highest value
adj    tends towards over-fitting . For example, suppose that the maximum value is
of    R2
adj    =  0.691  for  a  subset  of   p   =  9
  R2
predictors  and    R2
adj
increases when we go from 9 to 10 predictors there is very little improvement in fit
and so the nine-predictor subset is generally preferred.

adj    =  0.541  for  a  subset  of   p   =  8  predictors.  Even  though    R2

 The other three criteria are based on likelihood theory when both the predictors and

the response are normally distributed. As such we briefly review this theory next.

  Maximum Likelihood applied to Multiple Linear Regression

 Suppose  that    yi ,  x1i ,  …  xpi    are  the  observed  values  of  normal  random  variables.
y
Then,
   Thus, the conditional density
b
b
+
i
of  y   i   given   x1i , … xpi   is given by

)2
.

(
b

x
i
1 1

x
i
1

N

s

+

+

~

x

x

pi

pi

,

,

|

p

0

f y
(
i

|

x
i
1

,

x

pi

)

=

1

s

2
p

exp






−

(
y
i

−

{
b

0

+

b

x
i
1 1

+

+

b

p

x

pi

2

2
s

)2
}

.






…
…

…
…

7.1  Evaluating Potential Subsets of Predictor Variables

229

 Assuming the  n  observations are independent, then given  Y  the likelihood func-

tion is the function of the unknown parameters   b0 , b1 , … , bp , s 2   given by

L

(

,
b b
0
1

,

,
…

,
b s
p

2

|

Y

)

n

=

=

∏

i

=

1

n

∏

i

=

1

f y
(
i

|

x
i

)

1

s

2
p

exp






−

(
y
i

−

{
b

0

+

b

x
i
1 1

+ …+

b

p

x

pi

2

2
s

2

)
}






=





1

s

2
p

n





exp





−

1
2
s

2

n

∑

i

=

1

(
y
i

−

{
b

0

+

b

x
i
1 1

+

+

b

p

x

pi

2

)
}





 The log-likelihood function is given by

log

L

= −

n
2

log(2 )
p

−

n
2

log(

s

2

)

−

1

0

,

(
(
1
∑
2
2
s =
i

n

1

b b ,..., b s

,

p

2

|

Y

)

)

(
y
i

−

{
b

0

+

b

x
i
1 1

+

+

b

p

x

pi

2

)
}

 Notice that   b0 ,b1 , … , bp   are only included in the third term of this last equation.
Thus, the maximum likelihood estimates of   b0 ,b1 , … , bp   can be obtained by mini-
mizing this third term, that is, by minimizing the residual sum of squares. Thus, the
maximum  likelihood  estimates  of    b0 ,b1 , … ,  bp    are  the  same  as  the  least  squares
estimates. With   b0 ,b1 , … , bp   equal to their least squares estimates, the last equation
becomes

log

ˆ
ˆ
,
b b
0
1

(

,

(
L

ˆ
,
b s
p

,

2

|

Y

)

)

= −

n
2

log(2 )
p

−

n
2

log(

s

2

)

−

1
2
s

2

RSS

 where

n

RSS

=

∑

i

=

1

(

y
i

−

{
ˆ
b

0

ˆ
x
b
i
1 1

+

+

ˆ
b

+

x

p

pi

2

)
}

 Differentiating the last log-likelihood equation with respect to   s 2   and setting the
result to zero gives the maximum likelihood estimate of   s 2   as

ˆ
s

2
MLE

=

RSS
n

.

 Notice that this estimate differs slightly from our usual estimate of   s 2  , namely,

2

S

=

1
p
− −

1)

(

n

RSS
.

…

…

…

…

230

7  Variable Selection

 Substituting the result for the maximum likelihood estimate of   s 2   back into the
expression  for  the  log-likelihood  we  find  that  the  likelihood  associated  with  the
maximum likelihood estimates is given by

log

(
L

ˆ
ˆ
,
b b
0
1

(

,

…

,

ˆ
ˆ
,
b s
p

2

|

Y

)

)

= −

n
2

log(2 )
p

−

n
2

log(

RSS
n

)

−

n
2

  7.1.2  Criterion 2: AIC, Akaike’s Information Criterion

 Akaike’s  information  criterion  (AIC)  can  be  motivated  in  two  ways.  The  most
popular motivation seems to be based on balancing goodness of fit and a penalty
for  model  complexity.  AIC  is  defined  such  that   the  smaller  the  value  of AIC  the
better the model . A measure of goodness of fit such that the smaller the better is
minus one times the likelihood associated with the fitted model, while a measure of
complexity is  K , the number of estimated parameters in the fitted model. AIC is
defined to be

AIC

=

2

−

log




(
L

ˆ
ˆ
,
b b
0
1

(

,

…

,

ˆ
ˆ
,
b s
p

2

|

Y

)

)

+

K




(7.2)

 where    K  =  p  +  2,    since    b0 ,b1 , … ,  bp ,s 2    are  estimated  in  the  fitted  model.  The
measure of complexity is necessary since adding irrelevant predictor variables to
the regression equation can increase the log-likelihood. We shall soon discover the
reason for the 2 in (7.2).

 Akaike’s  original  motivation  for  AIC  is  based  on  the  Kullback-Leibler  (K-L)
information measure,  I ( f ,  g ), which is the amount of information lost when  g  (which
depends on   q  ) is used to model  f , defined as

I f g
( , )

=

∫

f y
( ) log





f y
( )
g y q
(
|





)

dy

 It can also be thought as a distance measure between  f  and  g . The following mate-
rial is based on Burnham and Anderson (2004).

 The Kullback-Leibler (K-L) information measure can be reexpressed as

f y
( ) log( ( ))

f y dy

f y
( ) log( (

g y

|

q

))

dy

∫
E

I f g
( , )

=

=

=

f

f y

]
[
log( ( ))
−
[
C E
g y
log( (
−

f

E

|

q

∫
−
[
log( (
]
))

f

g y

|

q

))

]

 where  C  is an unknown constant that does not depend on the model. Thus, to compare
the Kullback-Leibler (K-L) information measure across different models   g( y | q )   the
quantity    Ef  [log  (g( y | q )]    needs  to  be  estimated  for  each  model.  This  quantity  is
called the relative expected K-L information.

7.1  Evaluating Potential Subsets of Predictor Variables

231

 Akaike found a relationship between K-L information and likelihood theory. In
particular,  he  found  that  the  maximized  log-likelihood  was  a  biased  estimate  of
  Ef [log (g( y | q )]   with the bias approximately equal to  K , the number of estimable
parameters in the model   g( y | q )  . In symbols,

ˆ
fE

[
log( (

g y

|

q

))

]

=

log

ˆ
(
q

(
L

|

Y

)

)

−

K

 Akaike multiplied this last result by –2, reportedly, for “historical reasons,” and

this became Akaike’s information criterion:

AIC

= −


2 log


= −


2 log


(
L
(
L

ˆ
(
q

|

Y

)

ˆ
ˆ
,
b b
0
1

(

−

)
…
,

K



ˆ
ˆ
,
b s
p

,

2

|

Y

)

)
−

(

p

+

2)




 since  K  = ( p  + 2) parameters are estimated in the regression model.

 Using results found earlier for the maximized likelihood,

AIC

2
= − −





n
2

log(2 )
p

−

n
2

log





RSS
n





n
− −
2

(

p

+

2)





=

n

log





RSS
n





+

2

p

+

other terms

 where the other terms do not depend on RSS or  p  and thus are the same for every
model under consideration. In view of this last result, R calculates AIC using

AIC

=

n

log





RSS
n





+

2

p

  7.1.3  Criterion 3: AIC C  , Corrected AIC

 Hurvich and Tsai (1989) developed AIC C , a bias corrected version of AIC for use
when the sample size is small, or when the number of parameters estimated is a
moderate to large fraction of the sample size. Burnham and Anderson (2004) rec-
ommend that AIC C  be used instead of AIC unless  n / K  > 40. Furthermore they rec-
ommend that AIC C  be used in practice since as  n  gets large AIC C  converges to AIC.
AIC C  is given by

CAIC

= −

2 log

ˆ
(
q

(
L

|

Y

)

)

+

2

K

+

K K
2 (
n K
−

+
+

1)
1

=

AIC

+

K K
2 (
n K
−

+
+

1)
1

 In our case,  K  =  p  + 2 so that

CAIC

=

AIC

+

2(

p
2)(
+
n
p
− −

p
+
1

3)

232

7  Variable Selection

  When the sample size is small, or when the number of parameters estimated is a
moderate to large fraction of the sample size, it is well-known that AIC has a ten-
dency for over-fitting since the penalty for model complexity is not strong enough.
As such it is not surprising in these circumstances that the bias corrected version of
AIC has a larger penalty for model complexity.

  7.1.4  Criterion 4: BIC, Bayesian Information Criterion

 Schwarz (1978)  proposed the Bayesian information criterion as
(
L

ˆ
ˆ
,
b b
0
1

ˆ
ˆ
,
b s
p

)
+

2 log

BIC

…
,

= −

K

Y

n
log( )

(

)

,

|

2

(7.3)

 where    K  =  p  +  2,    the  number  of  parameters  estimated  in  the  model.  BIC  is
defined such that  the smaller the value of BIC the better the model . Comparing
(7.3) with (7.2), we see that BIC is similar to AIC except that the factor 2 in the
penalty term is replaced by log( n ). When   n ³
 8,     log (n) > 2   and so the penalty
term  in  BIC  is  greater  than  the  penalty  term  in  AIC.  Thus,  in  these  circum-
stances,  BIC  penalizes  complex  models  more  heavily  than  AIC,  thus  favoring
simpler models than AIC.

 The following discussion is based on Burnham and Anderson (2004). BIC is a
misnomer in the sense that it is not related to information theory. Define   D BICi   as
the difference between BIC for the  ith  model and the minimum BIC value. Then,
under the assumption that all R models under consideration have equal prior prob-
ability, it can be shown that the posterior probability of model  i  is given by

p
i

=

P

(model | data)
i

=

∑

exp
R

BIC

(
−∆
(
exp
−∆

i

2

)
BIC 2
r

r

=

1

)

 In practice, BIC is generally used in a frequentist sense, thus ignoring the concepts
of prior and posterior probabilities.

  7.1.5  Comparison of AIC, AIC C  and BIC

 There has been much written about the relative merits of AIC, AIC C  and BIC. Two
examples of this material are given next.

 Simonoff (2003, p. 46) concludes the following:

 AIC and AIC C  have the desirable property that they are efficient model selection criteria.
What this means is that as the sample gets larger, the error obtained in making predic-
tions  using  the  model  chosen  using  these  criteria  becomes  indistinguishable  from  the
error obtained using the best possible model among all candidate models. That is, in this
large-sample predictive sense, it is as if the best approximation was known to the data
analyst. Other criteria, such as the Bayesian Information Criterion, BIC … do not have
this property.

7.2  Deciding on the Collection of Potential Subsets of Predictor Variables

233

 Hastie, Tibshirani and Freedman (2001, p. 208) put forward the following dif-

ferent point of view:

 For model selection purposes, there is no clear choice between AIC and BIC. BIC is asymp-
totically consistent as a selection criterion. What this means is that given a family of models,
including the true model, the probability that BIC will select the correct model approaches
one as the sample size   N ® ¥  . This is not the case for AIC, which tends to choose models
which are too complex as   N ® ¥  . On the other hand, for finite samples, BIC often chooses
models that are too simple, because of the heavy penalty on complexity.

 A popular data analysis strategy which we shall adopt is to calculate   R2

adj  , AIC,
AIC C  and BIC and compare the models which minimize AIC, AIC C  and BIC with
the model that maximizes   R2

adj  .

  7.2

 Deciding on the Collection of Potential Subsets
of Predictor Variables

 There are two distinctly different approaches to choosing the potential subsets of
predictor variables, namely,

   1.     All possible subsets
   2.     Stepwise methods

 We shall begin by discussing the first approach.

  7.2.1  All Possible Subsets

 This approach is based on considering all 2  m   possible regression equations and iden-
tifying the subset of the predictors of a given size that maximizes a measure of fit or
minimizes an information criterion based on a monotone function of the residual sum
of squares. Furnival and Wilson (1974, p. 499) developed a “simple leap and bound
technique for finding the best subsets without examining all possible subsets.”

  With a fixed number of terms in the regression model , all four criteria for evaluat-
ing  a  subset  of  predictor  variables  (  R2
adj  ,  AIC,  AIC C   and  BIC)  agree  that  the  best
choice is the set of predictors with the smallest value of the residual sum of squares.
Thus, for example, if a subset with a fixed number of terms maximizes   R2
adj   (i.e.,
minimizes RSS) among all subsets of size  p , then this subset will also minimize
AIC,  AIC C   and  BIC  among  all  subsets  of  fixed  size   p .  Note  however,  when  the
comparison is across models with different numbers of predictors the four methods
(  R2

adj  , AIC, AIC C  and BIC) can give quite different results.

  Example: Bridge construction (cont.)

 Recall from Chapter 6 that our aim is to model

  Y  = Time = design time in person-days

based on the following potential predictor variables

234

7  Variable Selection

  x  1  = DArea = Deck area of bridge (000 sq ft)
  x  2  = CCost = Construction cost ($000)
  x  3  = Dwgs = Number of structural drawings
  x  4  = Length = Length of bridge (ft)
  x  5  = Spans = Number of spans
 Recall further that we found that the following full model

Y
log( )

=

b

0

+

+

b
1
b

5

log(

log(

x
1
x

)

+
)

+

5

b

2
e

log(

x

)

+

b

3

2

log(

x
3

)

+

b

4

log(

x

)

4

(7.4)

 is a valid model for the data. Given below again is the output from R associated
with fitting model (7.4).

  Regression output from R

 Call:
 lm(formula = log(Time) ~ log(DArea) + log(CCost) + log(Dwgs) +

  log(Length) + log(Spans))

 Coefficients:

Std. Error   t value  Pr(>|t|)

 Estimate
 (Intercept)  2.28590
 log(DArea)  -0.04564
0.19609
 log(CCost)
 log(Dwgs)
0.85879
 log(Length)  -0.03844
 log(Spans)
0.23119
 ---
 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ‘ 1

0.61926
0.12675
0.14445
0.22362
0.15487
0.14068

3.691
-0.360
1.358
3.840
-0.248
1.643

0.00068  ***
0.72071
0.18243
0.00044  ***
0.80530
0.10835

 Residual standard error: 0.3139  on 39 degrees of freedom
 Multiple R-Squared: 0.7762, Adjusted R-squared: 0.7475
 F-statistic: 27.05 on 5 and 39 DF, p-value: 1.043e-11

 Notice that while the overall F-test for model (7.4) is highly statistically signifi-
cant,  only  one  of  the  estimated  regression  coefficients  is  statistically  significant
(i.e., log(Dwgs) with a  p -value < 0.001). Thus, we wish to choose a subset of the
predictors using variable selection.

 We begin our discussion of variable selection in this example by identifying
the subset of the predictors of a given size that maximizes adjusted R-squared
(i.e.,  minimizes  RSS).  Figure   7.1   shows  plots  of  adjusted  R-squared  against
the number of predictors in the model for the optimal subsets of predictors. For
example, the optimal subset of predictors of size 2 consists of the predictors
log(Dwgs)  and  log(Spans).  In  addition,  the  model  with  the  three  predictors
log(CCost), log(Dwgs) and log(Spans) maximizes adjusted R-squared.

 Table  7.1  gives the values of   R2

adj  , AIC, AIC C  and BIC for the best subset of each
size. Highlighted in bold are the minimum values of AIC, AIC C  and BIC along with
the  maximum  value  of  R2
adj.  Notice  from  Table   7.1   that  AIC  judges  the  predictor
subset of size 3 to be “best” while AIC C  and BIC judge the subset of size 2 to be

7.2  Deciding on the Collection of Potential Subsets of Predictor Variables

235

0.76

0.75

0.74

0.73

0.72

0.71

d
e
r
a
u
q
s
-
R
d
e
t
s
u
d
A

j

lC−lgD−lS

lgD−lS lDA−lC−lgD−lS

lDA−lC−lgD−lL−lS

lDA: logDArea
lC: logCCost
lgD: logDwgs
lL: logLength
lS: logSpans

0.76

0.75

0.74

0.73

0.72

0.71

2
r
j
d
a

:
c
i
t
s
i
t
a
t
S

lgD

1

2

3

4

5

1

2

3

4

5

Subset Size

Subset Size

  Figure 7.1

  Plots of   R2

adj   against subset size for the best subset of each size

 Table 7.1

  Values of   R2

adj   , AIC, AIC C  and BIC for the best subset of each size

 Subset
size

 Predictors

 1
 2
 3
 4

 5

 log(Dwgs)
 log(Dwgs), log(Spans)
 log(Dwgs), log(Spans), log(CCost)
 log(Dwgs), log(Spans), log(CCost),

log(DArea)

   R2

adj
 0.702
 0.753
  0.758
 0.753

 AIC

 –94.90
 –102.37
  –102.41
 –100.64

 AIC C
 –94.31
  –101.37
 –100.87
 –98.43

 BIC

 –91.28
  –96.95
 –95.19
 –91.61

 log(Dwgs), log(Spans), log(CCost),

 0.748

 –98.71

 –95.68

 –87.87

log(DArea), log(Length)

“best.” While the maximum value of R2
adj corresponds to the predictor subset of size
3, using the argument described earlier we could choose the subset of size 2 to be
“best” in terms of   R2

adj  .

 Regression output from R

Call:
lm(formula = log(Time) ~ log(Dwgs) + log(Spans))

Coefficients:

236

7  Variable Selection

t value  Pr(>|t|)

Estimate  Std. Error
0.26871
0.15420
0.09095

(Intercept)  2.66173
1.04163
log(Dwgs)
log(Spans)
0.28530
---
Residual standard error: 0.3105 on 42 degrees of freedom
Multiple R-Squared: 0.7642,     Adjusted R-squared: 0.753
F-statistic: 68.08 on 2 and 42 DF,  p-value: 6.632e-14

9.905  1.49e-12  ***
6.755  3.26e-08  ***
3.137

0.00312  *

Call:
lm(formula = log(Time) ~ log(Dwgs) + log(Spans) + log(CCost))

Coefficients:

t value  Pr(>|t|)

2.3317
0.8356
0.1963
0.1483

Estimate  Std. Error
0.3577
0.2135
0.1107
0.1075

(Intercept)
log(Dwgs)
log(Spans)
log(CCost)
---
Residual standard error: 0.3072 on 41 degrees of freedom
Multiple R-Squared: 0.7747,     Adjusted R-squared: 0.7582
F-statistic: 46.99 on 3 and 41 DF,  p-value: 2.484e-13

7.9e-08  ***
6.519
3.914  0.000336  ***
1.773  0.083710  .
1.380  0.175212

 Given above is the output from R associated with fitting the best models with 2
and 3 predictor variables. Notice that both predictor variables are judged to be sta-
tistically significant in the two-variable model, while just one variable is judged to
be statistically significant in the three-variable model. Later in this chapter we shall
see that the  p -values obtained after variable selection are much smaller than their
true values. In view of this, it seems that the three-variable model over-fits the data
and as such  the two-variable model is to be preferred.

  7.2.2  Stepwise Subsets

 This  approach  is  based  on  examining  just  a  sequential  subset  of  the  2  m    possible
regression models. Arguably, the two most popular variations on this approach are
 backward elimination  and  forward selection .

  Backward elimination  starts with all potential predictor variables in the regres-
sion model. Then, at each step, it deletes the predictor variable such that the result-
ing  model  has  the  lowest  value  of  an  information  criterion.  (This  amounts  to
deleting the predictor with the  largest    p -value each time.) This process is contin-
ued until all variables have been deleted from the model or the information criterion
increases.

  Forward selection  starts with no potential predictor variables in the regression
equation. Then, at each step, it adds the predictor such that the resulting model has
the lowest value of an information criterion. (This amounts to adding the predictor
with the  smallest   p -value each time.) This process is continued until all variables
have been added to the model or the information criterion increases.

7.2  Deciding on the Collection of Potential Subsets of Predictor Variables

237

+

2)

1) 2

m m
(

... 1
+ + =

 Backward  elimination  and  forward  selection  consider  at  most     +

1)
− +
m
of  the  2  m    possible  predictor  subsets.  Thus,  backward
(
   −
elimination and forward selection do not necessarily find the model that minimizes the
information criteria across all 2  m   possible predictor subsets. In addition, there is no guar-
antee  that  backward  elimination  and  forward  selection  will  produce  the  same  final
model. However, in practice they produce the same model in many different situations.

m m
(

  Example: Bridge construction (cont.)

 We  wish  to  perform  variable  selection  using  backward  elimination  and  forward
selection based on AIC and BIC. Given below is the output from R associated with
backward elimination based on AIC.

  Output from R: Backward Elimination based on AIC

 Start: AIC= -98.71
 log(Time) ~ log(DArea) + log(CCost) + log(Dwgs) + log(Length) + log

(Spans)

 - log(Length)
 - log(DArea)
 <none>
 - log(CCost)
 - log(Spans)
 - log(Dwgs)

 Df
1
1

1
1
1

Sum of Sq
0.006
0.013

0.182
0.266
1.454

RSS
3.850
3.856
3.844
4.025
4.110
5.297

AIC
-100.640
-100.562
-98.711
-98.634
-97.698
-86.277

 Step: AIC= -100.64
 log(Time) ~  log(DArea) + log(CCost) + log(Dwgs) + log(Spans)

 - log(DArea)
 <none>
 - log(CCost)
 - log(Spans)
 - log(Dwgs)

 Df
1

1
1
1

Sum of Sq
0.020

0.181
0.315
1.449

RSS
3.869
3.850
4.030
4.165
5.299

AIC
-102.412
-100.640
-100.577
-99.101
-88.260

 Step: AIC= -102.41
 log(Time) ~ log(CCost) + log(Dwgs) + log(Spans)

 <none>
 - log(CCost)
 - log(Spans)
 - log(Dwgs)

 Df

Sum of Sq

1
1
1

0.180
0.297
1.445

RSS
3.869
4.049
4.166
5.315

AIC
-102.412
-102.370
-101.089
-90.128

 Thus,  backward  elimination  based  on  AIC  chooses  the  model  with  the  three
predictors log(CCost), log(Dwgs) and log(Spans). It can be shown that backward
elimination based on BIC chooses the model with the two predictors log(Dwgs) and
log(Spans).

 Forward  selection  based  on  AIC  (shown  below)  arrives  at  the  same  model  as
backward elimination based on AIC. It can be shown that forward selection based
on BIC arrives at the same model as backward elimination based on BIC. We are
again  faced  with  a  choice  between  the  two-predictor  and  three-predictor  models
discussed earlier.

238

7  Variable Selection

  Output from R: Forward selection based on AIC

 Start: AIC= -41.35
 log(Time) ~ 1

 + log(Dwgs)
 + log(CCost)
 + log(DArea)
 + log(Length)
 + log(Spans)
 <none>
 Step: AIC= -94.9
 log(Time) ~ log(Dwgs)

 Df  Sum of Sq
12.176
11.615
10.294
10.012
8.726

1
1
1
1
1

RSS

AIC
4.998  -94.898
5.559  -90.104
6.880  -80.514
7.162  -78.704
8.448  -71.274
  17.174  -41.347

 Df  Sum of Sq
0.949
0.832
0.669
0.476

 + log(Spans)
 + log(CCost)
 + log(Length)
 + log(DArea)
 <none>
 Step: AIC= -102.37
 log(Time) ~ log(Dwgs) + log(Spans)

1
1
1
1

RSS

AIC
4.049  -102.370
4.166  -101.089
4.328  -99.366
4.522  -97.399
4.998  -94.898

 Df  Sum of Sq
0.180

1

 + log(CCost)
 <none>
 + log(DArea)
 + log(Length)
 Step: AIC= -102.41
 log(Time) ~ log(Dwgs) + log(Spans) + log(CCost)

0.019
0.017

1
1

RSS

AIC
3.869  -102.412
4.049  -102.370
4.030  -100.577
4.032  -100.559

 <none>
 + log(DArea)
 + log(Length)

 Df  Sum of Sq

1
1

0.020
0.013

RSS

AIC
3.869  -102.412
3.850  -100.640
3.856  -100.562

  7.2.3  Inference After Variable Selection

 An important caution associated with variable selection (or model selection as it is
also referred to) is that the selection process changes the properties of the estima-
tors  as  well  as  the  standard  inferential  procedures  such  as  tests  and  confidence
intervals. The regression coefficients obtained after variable selection are biased. In
addition, the  p -values obtained after variable selection from F- and  t -statistics are
generally much smaller than their true values. These issues are well summarized in
the following quote from Leeb and Potscher (2005, page 22):

 The aim of this paper is to point to some intricate aspects of data-driven model selection that
do not seem to have been widely appreciated in the literature or that seem to be viewed too
optimistically. In particular, we demonstrate innate difficulties of data-driven model selection.
Despite occasional claims to the contrary, no model selection procedure—implemented on a
machine or not—is immune to these difficulties. The main points we want to make and that
will be elaborated upon subsequently can be summarized as follows:

7.3  Assessing the Predictive Ability of Regression Models

239

   1.     Regardless of sample size, the model selection step typically has a dramatic effect on
the sampling properties of the estimators that can not be ignored. In particular, the
sampling properties of post-model-selection estimators are typically significantly differ-
ent from the nominal distributions that arise if a fixed model is supposed.

   2.     As a consequence, naive use of inference procedures that do not take into account the
model selection step (e.g., using standard t-intervals as if the selected model had been
given prior to the statistical analysis) can be highly misleading.

  7.3  Assessing the Predictive Ability of Regression Models

 Given that the model selection process changes the properties of the standard infer-
ential procedures, a standard approach to assessing the predictive ability of differ-
ent regression models is to evaluate their performance on a new data set (i.e., one
not used in the development of the models). In practice, this is often achieved by
randomly splitting the data into:

   1.     A training data set
   2.     A test data set

 The training data set is used to develop a number of regression models, while the
test data set is used to evaluate the performance of these models. We illustrate these
steps using the following example.

  Example: Prostate cancer

 Hastie,  Tibshirani  and  Friedman  (2001)  analyze  data  taken  from  Stamey  et  al.
(1989). According to Hastie, Tibshirani and Friedman:

 The  goal  is  to  predict  the  log-cancer  volume  (lacavol)  from  a  number  of  measurements
including  log  prostate  weight  (lweight),  age,  log  of  benign  prostatic  hyperplasia  (lpbh),
seminal vesicle invasion (svi), log of capsular penetration (lcp), Gleason score (gleason),
and percent of Gleason scores 4 or 5 (pgg45).

 Hastie, Tibshirani and Friedman (2001, p. 48) “randomly split the dataset into a
training set of size 67 and a test set of size 30.” These data sets can be found on the
book web site in the files prostateTraining.txt and postateTest.txt. We first consider
the training set.

  7.3.1  Stage 1: Model Building Using the Training Data Set

 We begin by plotting the training data. Figure  7.2  contains a scatter plot matrix of
response variable and the eight predictor variables.

Looking at Figure  7.2 , we see that the relationship between the response variable
(lpsa) and each of the predictor variables appears to be linear. There is also no evi-
dence of nonlinearity amongst the eight predictor variables. Thus we shall consider

240

lpsa

2

−1

70

40

0.8

0.0

8.0

6.0

−1

2

40

70

0.0

0.8

6.0 8.0

7  Variable Selection

lcavol

lweight

age

lbph

3

0

4.5

2.5

1

−1

1

−1

60

0

svi

lcp

gleason

pgg45

0

3

2.5

4.5

−1 1

−1 1

0

60

  Figure 7.2

  Scatter plot matrix of the response variable and each of the predictors

the following full model with all eight potential predictor variables for the training
data set:

lpsa

=

b

0

+

b
1

lcavol

lweight

2

b

+
gleason

+

b

3

b

+

age

+
pgg45 e

+

lbph

+

b

5

svi

4

(7.5)

b

8

+

b

6

lcp

+

b

7

 Figure  7.3  contains scatter plots of the standardized residuals against each pre-
dictor and the fitted values for model (7.5). Each of the plots in Figure  7.3  shows a
random pattern. Thus, model (7.5) appears to be a valid model for the data.

 Figure  7.4  contains a plot of lpsa against the fitted values. The straight-line fit to
this plot provides a reasonable fit. This provides further evidence that model (7.5)
is a valid model for the data.

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

2

0

−2

2

0

−2

40

50

60

70

80

age

−1

0

1

2

lcp

1

2

3

4

Fitted Values

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

2

0

−2

2

0

−2

−1 0

1

2

3

4

lcavol

−1

0

1

2

lbph

6.0

7.0

8.0

9.0

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

0

−2

2

0

−2

2

0

−2

2.5

3.5

4.5

lweight

0.0

0.4

0.8

svi

0

20 40 60 80

Gleason

pgg45

  Figure 7.3

  Plots of the standardized residuals from model (7.5)

a
s
p

l

5

4

3

2

1

0

1

2

3

4

Fitted Values

  Figure 7.4

  A plot of lpsa against fitted values from (7.5) with a straight line added

242

7  Variable Selection

Residuals vs Fitted

Normal Q−Q

l

s
a
u
d
s
e
R

i

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

1

0

−1

−2

1.5

1.0

0.5

0.0

45

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

2834

45

2

1

0

−2

34 28

1

2

3

4

−2

−1

0

1

2

Fitted values

Theoretical Quantiles

Scale−Location

45

3428

Residuals vs Leverage

45

Cook’s distance

34

28

0.5

0.5

2

1

0

−1

−3

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
t
S

1

2

3

4

0.00

0.10

0.20

0.30

Fitted values

Leverage

  Figure 7.5

  Diagnostic plots from R for model (7.5)

 Figure  7.5  shows the diagnostic plots provided by R for model (7.5). Apart from
a hint of decreasing error variance, these plots further confirm that model (7.5) is a
valid model for the data.

 The dashed vertical line in the bottom right-hand plot of Figure  7.5  is the usual
cut-off for declaring a point of high leverage (i.e.,   2 × ( p+1)/n = 18/67 = 0.269  ).
Thus, there are no bad leverage points.

 Figure  7.6  contains the recommended marginal model plots for model (7.5). The
nonparametric  estimates  of  each  pair-wise  relationship  are  marked  as  solid  curves,
while the smooths of the fitted values are marked as dashed curves. The two curves in
each plot match quite well thus providing further evidence that (7.5) is a valid model.

 Below is the output from R associated with fitting model (7.5).

  Regression output from R

 Call:
 lm(formula = lpsa ~ lcavol + lweight + age + lbph + svi + lcp +
gleason + pgg45)
 Coefficients:

7.3  Assessing the Predictive Ability of Regression Models

243

 Estimate
 (Intercept)  0.429170
0.576543
 lcavol
0.614020
 lweight
-0.019001
 age
0.144848
 lbph
0.737209
 svi
-0.206324
 lcp
-0.029503
 gleason
0.009465
 pgg45
 ---

Std. Error  t value
0.276
5.366
2.751
-1.396
2.056
2.469
-1.867
-0.147
1.738

1.553588
0.107438
0.223216
0.013612
0.070457
0.298555
0.110516
0.201136
0.005447

Pr(>|t|)
0.78334

1.47e-06  ***
0.00792  **
0.16806
0.04431  *
0.01651  *
0.06697  .
0.88389
0.08755  .

 Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ‘ 1
 Residual standard error: 0.7123 on 58 degrees of  freedom
 Multiple R-Squared: 0.6944, Adjusted R-squared: 0.6522
 F-statistic: 16.47 on 8 and 58 DF, p-value: 2.042e-12

2.5 3.0 3.5 4.0 4.5
lWeight

a
s
p

l

a
s
p

l

5

4

3

2

1

0

5

4

3

2

1

0

40

50

70

80

60
Age

−1

0

1

2

6.0

7.0

8.0

9.0

lcp

Gleason

a
s
p

l

a
s
p

l

a
s
p

l

5

4

3

2

1

0

5

4

3

2

1

0

5

4

3

2

1

0

−1

0

2

1
lcavol

3

4

−1

0

1

2

lbph

a
s
p

l

a
s
p

l

a
s
p

l

5

4

3

2

1

0

5

4

3

2

1

0

5

4

3

2

1

0

0

20 40 60 80
pgg45

1

2

3

4

Fitted Values

  Figure 7.6

  Marginal model plots for model (7.5)

244

7  Variable Selection

 Notice that the overall F-test for model (7.5) is highly statistically significant and
four of the estimated regression coefficients are statistically significant (i.e., lcavol,
lweight, lbph and svi).

 Finally, we show in Figure  7.7  the added-variable plots associated with model
(7.5). Case 45 appears to be highly influential in the added-variable plot for lweight,
and, as such, it should be investigated. We shall return to this issue later. For now
we shall continue under the assumption that (7.5) is a valid model.

 The variance inflation factors for the training data set are as follows:

   lcavol  lweight
lcp  gleason   pgg45
  2.318496  1.472295 1.356604 1.383429  2.045313  3.117451  2.644480 3.313288

lbph

age

svi

 None of these exceed 5 and so multicollinearity is not a serious issue.

 We next consider variable selection in this example by identifying the subset of
the  predictors  of  a  given  size  that  maximizes  adjusted  R-squared  (i.e.,  minimizes
RSS). Figure  7.8  shows plots of adjusted R-squared against the number of predictors
in the model for the optimal subsets of predictors. Table  7.2  gives the values of   R2
adj  ,
AIC, AIC C  and BIC for the best subset of each size. Highlighted in bold are the
minimum values of AIC, AIC C  and BIC along with the maximum value of   R2

adj  .

s
r
e
h
t
O

|

a
s
p

l

2

1

0

−1

−2

1.5

1.0

0.5

0.0

−1.0

s
r
e
h
O

t

|

a
s
p

l

2

1

0

−1

s
r
e
h
t
O

|

a
s
p

l

45

s
r
e
h
t
O

|

a
s
p

l

1.0

0.5

−0.5

−1.5

−2

0

2

−0.5

0.5

−20 −5

10

lcavol | Others

lweight | Others

age | Others

1.5

1.0

0.5

−0.5

−1.5

s
r
e
h
o

t

|

a
s
p

l

1.5

1.0

0.5

−0.5

−1.5

s
r
e
h
o

t

|

a
s
p

l

s
r
e
h
t
O

|

a
s
p

l

s
r
e
h
o

t

|

a
s
p

l

1.5

1.0

0.5

−0.5

−1.5

1.5

1.0

0.5

−0.5

−1.5

−2

0

2

lbph | Others

−0.5

0.5

−2

0

2

−0.5 0.5

−40 0

40

svi | Others

lcp | Others

Gleason | Others

pgg45 | Others

  Figure 7.7

  Added-variable plots for model (7.5)

7.3  Assessing the Predictive Ability of Regression Models

245

0.64

0.62

0.60

0.58

0.56

0.54

2
r
j
d
a

:
c
i
t
s
i
t

a
t
S

lcv−lw−lb−s

lcv−lw−a−lb−s−lcp−p

lcv−lw−a−lb−s−lcp−g−p

lcv−lw−lb−s−lcp−p

lcv−lw−s

0.655

lcv−lw

lcv: lcavol
lw: lweight
a: age
lb: lbph
s: svi
lcp: lcp
g: gleason
p: pgg45

2
r
j
d
a

:
c
i
t
s
i
t

a
t
S

0.650

0.645

lcv

0.640

lcv−lw−lb−s−p

1.0

2.0

3.0

4.0

5.0

6.0

7.0

8.0

Subset Size

Subset Size

  Figure 7.8

  Plots of   R2

adj   against subset size for the best subset of each size

 Table 7.2

  Values of   R2

adj  , AIC, AIC C  and BIC for the best subset of each size

 Subset
size

 Predictors

 1
 2
 3
 4
 5
 6
 7

 8

 lcavol
 lcavol, lweight
 lcavol, lweight, svi
 lcavol, lweight, svi, lbph
 lcavol, lweight, svi, lbph, pgg45
 lcavol, lweight, svi, lbph, pgg45, lcp
 lcavol, lweight, svi, lbph, pgg45, lcp,

age

R2
adj
 0.530
 0.603
 0.620
 0.637
 0.640
 0.651
  0.658

 AIC

 –23.374
 –33.617
 –35.683
 –37.825
 –37.365
 –38.64
  –39.10

 AICC
 –22.99
 –32.97
 –34.70
  –36.43
 –35.47
 –36.16
 –35.94

 BIC

 –18.96
  –27.00
 –26.86
 –26.80
 –24.14
 –23.21
 –21.47

 lcavol, lweight, svi, lbph, pgg45, lcp,

 0.652

 –37.13

 –33.20

 –17.29

age, gleason

 Notice from Table  7.2  that AIC judges the predictor subset of size 7 to be “best”
while AIC C  judges the subset of size 4 to be “best”and BIC judge the subset of size
2 to be “best.” While the maximum value of corresponds to the predictor subset of
size 7, using the argument described earlier in this chapter, one could choose the
subset of size 4 to be “best” in terms of  R2

adj.
 Given below is the output from R associated with fitting the best models with

two-, four- and seven-predictor variables to the training data.

246

7  Variable Selection

  Regression output from R

 Call:
 lm(formula = lpsa ~ lcavol + lweight)
 Coefficients:

 Estimate
 (Intercept)  -1.04944
0.62761
 lcavol
 lweight
0.73838
 ---
 Residual standard error: 0.7613 on 64 degrees of freedom
 Multiple R-Squared: 0.6148, Adjusted R-squared: 0.6027
 F-statistic: 51.06 on 2 and 64 DF, p-value: 5.54e-14

Std. Error
0.72904
0.07906
0.20613

t value  Pr(>|t|)
-1.439  0.154885

7.938  4.14e-11  ***
3.582  0.000658  ***

 Call:
 lm(formula = lpsa ~ lcavol + lweight + svi + lbph)

 Coefficients:

 Estimate
 (Intercept)  -0.32592
0.50552
 lcavol
0.53883
 lweight
0.67185
 svi
 lbph
0.14001
 ---
 Residual standard error: 0.7275 on 62 degrees of freedom
 Multiple R-Squared: 0.6592, Adjusted R-squared: 0.6372
 F-statistic: 29.98 on 4 and 62 DF, p-value: 6.911e-14

Std. Error  t value
-0.418
5.461
2.441
2.459
1.988

0.77998
0.09256
0.22071
0.27323
0.07041

Pr(>|t|)
0.6775

8.85e-07  ***
0.0175  *
0.0167  *
0.0512  .

 Call:
 lm(formula = lpsa ~ lcavol + lweight + svi + lbph + pgg45 + lcp  + age)

 Coefficients:

Pr(>|t|)
0.8014

 Estimate
 (Intercept)  0.259062
0.573930
 lcavol
0.619209
 lweight
0.741781
 svi
0.144426
 lbph
0.008945
 pgg45
-0.205417
 lcp
 age
-0.019480
 ---
 Residual standard error: 0.7064 on 59 degrees of freedom
 Multiple R-Squared: 0.6943, Adjusted R-squared: 0.658
 F-statistic: 19.14 on 7 and 59 DF, p-value: 4.496e-13

Std. Error  t value
0.253
5.462
2.833
2.519
2.069
2.182
-1.877
-1.486

1.025170
0.105069
0.218560
0.294451
0.069812
0.004099
0.109424
0.013105

9.88e-07  ***
0.0063  **
0.0145  *
0.0430  *
0.0331  *
0.0654  .
0.1425

 Notice that both predictor variables are judged to be “statistically significant” in the two-
variable  model,  three  variables  are  judged  to  be  “statistically  significant”  in  the
four-variable model and five variables are judged to be “statistically significant” in
the seven-variable model. However, the  p -values obtained after variable selection are
much smaller than their true values. In view of this, it seems that the four- and seven-
variable  models  over-fit  the  data  and  as  such   the  two-variable  model  seems  to  be
preferred.

7.3  Assessing the Predictive Ability of Regression Models

247

  7.3.2  Stage 2: Model Comparison Using the Test Data Set

 We can now use the test data to compare the two-, four- and seven-variable models
we identified above.

 Given below is the output from R associated with fitting the best models with

two-, four and seven-predictor variables to the 30 cases in the test data.

  Regression output from R

 Call:
 lm(formula = lpsa ~ lcavol + lweight)

 Coefficients:

 Estimate
0.7354
0.7478
0.1968

Std. Error  t value
0.768
5.778
0.796

 (Intercept)
 lcavol
 lweight
 ---
 Residual standard error: 0.721 on 27 degrees of freedom
 Multiple R-Squared: 0.5542, Adjusted R-squared: 0.5212
 F-statistic: 16.78 on 2 and 27 DF, p-value: 1.833e-05

0.9572
0.1294
0.2473

Pr(>|t|)
0.449

3.81e-06  ***

0.433

 Call:
 lm(formula = lpsa ~ lcavol + lweight + svi + lbph)

 Coefficients:

 Estimate
0.52957
0.59555
0.26215
0.95051
-0.05337

Std. Error  t value
0.569
4.706
1.070
2.951
-0.578

 (Intercept)
 lcavol
 lweight
 svi
 lbph
 ---
 Residual standard error: 0.6445 on 25 degrees of freedom
 Multiple R-Squared: 0.6703, Adjusted R-squared: 0.6175
 F-statistic: 12.7 on 4 and 25 DF, p-value: 8.894e-06

0.93066
0.12655
0.24492
0.32214
0.09237

Pr(>|t|)
0.5744

7.98e-05  ***

0.2947
0.0068  **
0.5686

 Call:
 lm(formula = lpsa ~ lcavol + lweight + svi + lbph + pgg45 + lcp + age)

 Coefficients:

 Estimate
 (Intercept)  0.873329
0.481237
 lcavol
0.313601
 lweight
0.619278
 svi
-0.090696
 lbph
0.001316
 pgg45
0.180850
 lcp
-0.004958
 age
 ---
 Residual standard error: 0.6589 on 22 degrees of  freedom
 Multiple R-Squared: 0.6967, Adjusted R-squared:  0.6001
 F-statistic: 7.218 on 7 and 22 DF, p-value: 0.0001546

Std. Error  t value
0.586
2.901
1.220
1.464
-0.747
0.207
1.083
-0.223

1.490194
0.165881
0.257112
0.423109
0.121368
0.006370
0.166970
0.022220

Pr(>|t|)
0.56381
0.00828  **
0.23549
0.15744
0.46281
0.83819
0.29048
0.82550

248

7  Variable Selection

 Notice that in the test data just one-predictor variable is judged to be “statisti-
cally significant” in the two-variable model, two variables are judged to be “sta-
tistically significant” in the four-variable model and just one variable is judged to
be “statistically significant” in the seven-variable model. Thus, based on the test
data none of these models is very convincing.

  7.3.2.1  What Has Happened?

 Put briefly, this situation is due to

  (cid:129)

 (cid:129)

 Case 45 in the training set accounts for most of the statistical significance of the
predictor variable lweight
 Splitting the data into a training set and a test set by randomly assigning cases
does not always work well in small data sets.

 We discuss each of these issues in turn.

  7.3.2.2  Case 45 in the Training Set

 We reconsider variable selection in this example by identifying the subset of the
predictors  of  a  given  size  that  maximizes  adjusted  R-squared  (i.e.,  minimizes
RSS) for the training data set with and without case 45. Figure  7.9  shows plots
of adjusted R-squared (for models with up to 5 predictors) against the number
of predictors in the model for the optimal subsets of predictors for the training
data set with and without case 45. Notice how the optimal  two-, three- and five-
variable models change with the omission of just case 45. Thus, case 45 has a
dramatic effect on variable selection. It goes without saying that case 45 in the
training set should be thoroughly investigated.

  7.3.2.3  Splitting the Data into a Training Set and a Test Set

 Snee (1977, p. 421) demonstrated the advantages of splitting the data into a training
set and a test set such that “the two sets cover approximately the same region and
have the same statistical properties.” Random splits, especially in small samples do
not always have these desirable properties. In addition, Snee (1977) described the
DUPLEX algorithm for data splitting which has the desired properties. For details
on the algorithm see Montgomery, Peck and Vining (2001, pp. 536–537).

 Figure  7.10  provides an illustration of the difference between the training and
test data sets. It shows a scatter plot of lpsa against lweight with different symbols
used for the training and test data sets. The least squares regression line for each
data set is also marked on Figure  7.10 . While case 45 in the training data set does
not stand out in Figure  7.10 , case 9 in the test data set stands out due to its very high
value of lweight.

7.3  Assessing the Predictive Ability of Regression Models

249

With Case 45

Without Case 45

lcv−lb−s−lcp−p

lcv−lw−lb−s

lcv−lb−s

lcv−lb

0.64

lcv−lw−lb−s−p
lcv−lw−lb−s

0.62

lcv−lw−s

0.60

lcv−lw

lcv: lcavol
lw: lweight
a: age
lb: lbph
s: svi
lcp: lcp
g: gleason
p: pgg45

0.58

0.56

0.54

2
r
j
d
a

:
c
i
t
s
i
t
a
t
S

0.66

0.64

0.62

0.60

0.58

2
r
j
d
a

:
c
i
t
s
i
t
a
t
S

lcv

lcv

0.56

1

2

3

4

5

1

2

3

4

5

Subset Size

Subset Size

  Figure 7.9

  Plots of   R2

adj   for the best subset of sizes 1 to 5 with and without case 45

a
s
p

l

6

5

4

3

2

1

0

−1

Data Set

Training
Test

2

3

4

5

6

lWeight

  Figure 7.10

  Plot of lpsa against lweight for both the training and test data sets

250

7  Variable Selection

1.0

0.5

0.0

−0.5

−1.0

s
r
e
h
t
O

|

a
s
p

l

9

−0.5

0.0

0.5

1.0

1.5

2.0

lWeight | Others

  Figure 7.11

  Added-variable plot for the predictor lweight for the test data

 To further illustrate the dramatic effect due to case 9 in the test data set, Figure
 7.11  shows an added-variable plot for the predictor lweight based on the full model
for the test data.

 In summary, case 45 in the training data and case 9 in the test data need to be
thoroughly investigated before any further statistical analyses are performed. This
example once again illustrates the importance of carefully examining any regres-
sion fit in order to determine outliers and influential points. If cases 9 and 45 are
found to be valid data points and not associated with special cases, then a possible
way forward is to use variable selection techniques based on robust regression – see
Maronna, Martin and Yohai (2006, Chapter 5) for further details.

  7.4  Recent Developments in Variable Selection – LASSO

 In  this  section  we  briefly  discuss  LASSO,  least  absolute  shrinkage  and  selection
operator  (Tibshirani,  1996),  which  we  shall  discover  is  a  method  that  effectively
performs  variable  selection  and  regression  coefficient  estimation  simultaneously.
There has been much interest in LASSO as evidenced by the fact that according to
the Web of Science, Tibshirani’s 1996 LASSO paper has been cited more than 400
times as of June, 2008.

7.4  Recent Developments in Variable Selection – LASSO

251

 The LASSO estimates of the regression coefficients from the full model (7.1) are

obtained from the following constrained version of least squares:

min

n

∑

i

=

1

(
y
i

−

{
b

0

+

b

x
i
1 1

+ …+

b

p

x

pi

2

)
}

subject to

p

∑

j

=

1

b

j

≤

s

(7.6)

for some number   s ³ 0  . Using a Lagrange multiplier argument, it can be shown that
(7.6) is equivalent to minimizing the residual sum of squares plus a penalty term on
the absolute value of the regression coefficients, that is,

min

n

∑

i

=

1

(
y
i

−

{
b

0

+

b

x
i
1 1

+ …+

b

p

x

pi

2

)
}

+

l

p

∑

j

=

1

b

j

(7.7)

 for some number   l ³ 0  . When the value of  s  in (7.6) is very large (or equivalently
in   l = 0   (7.7)), the constraint in (7.6) (or equivalently the penalty term in (7.7)) has
no effect and the solution is just the set of least squares estimates for model (7.1).
Alternatively, for small values of  s  (or equivalently large values of   l  ) some of the
resulting  estimated  regression  coefficients  are  exactly  zero,  effectively  omitting
predictor variables from the fitted model. Thus, LASSO performs variable selection
and regression coefficient estimation simultaneously.

 Zhou,  Hastie  and  Tibshirani  (2007)  develop  versions  of  AIC  and  BIC  for
LASSO that can be used to find an “optimal” value or   l   or equivalently  s . They
suggest using BIC to find the “optimal” LASSO model when sparsity of the model
is of primary concern.

 LARS, least angle regression (Efron et al., 2004) provides a clever and hence
very efficient way of computing the complete Lasso sequence of solutions as  s  is
varied from 0 to infinity. In fact, Zhou, Hastie and Tibshirani (2007) show that it is
possible  to  find  the  optimal  lasso  fit  with  the  computational  effort  equivalent  to
obtaining a single least squares fit. Thus, the LASSO has the potential to revolu-
tionize  variable  selection.  A  more  detailed  discussion  of  LASSO  is  beyond  the
scope of this book.

 Finally, Figure  7.12  contains a flow chart which summarizes the steps in devel-

oping a multiple linear regression model.

252

7  Variable Selection

Draw scatter plots of the data

Fit a model based on subject matter expertise
and/or observation of the scatter plots

Assess the adequacy of the model in particular:
     Is the functional form of the model correct?
     Do the errors have constant variance?

YES

NO

Do outliers and/or leverage
points exist?

NO

YES

Add new terms to the model
and/or transform x variables
and/or Y

Is the sample size large?

YES

NO

Are the outliers and leverage
points valid?

Based on Analysis of
Variance decide if
there is a significant
association between  Y
and any of the x’s?

YES

NO

YES

Are the errors
normally dis-
tributed?

NO

YES

Remove them
and refit the
model

NO

Use the boot-
strap for in-
ference

Consider
modifications
to the model

Is there a great
deal of redundancy
in the full model?

YES

NO

Stop!

Use variable se-
lection to obtain a
final model

Use a partial F-test
to obtain the final
model

  Figure 7.12

  Flow chart for multiple linear regression

  7.5  Exercises

    1.     The generated data set in this question is taken from Mantel (1970). The data are
given in Table  7.3 and can be found on the book web site in the file Mantel.txt .
 Interest centers on using variable selection to choose a subset of the predictors
to model  Y . The data were generated such that the full model

Y

=

b

0

+

b
1

X
1

+

b

2

X

2

+

b

3

X

3

e
+

  (7.8)

 is a valid model for the data.

 Output from R associated with different variable selection procedures based on
model (7.8) appears below.

7.5  Exercises

253

 Table 7.3

  Mantel’s generated data

 Case

 Y

 X1

 X2

 1
 2
 3
 4
 5

 5
 6
 8
 9
 11

 1
 200
 –50
 909
 506

 1004
 806
 1058
 100
 505

 X3

 6
 7.3
 11
 13
 13.1

  (a)    Identify the optimal model or models based on   R2

adj  , AIC and BIC from the

approach based on all possible subsets.

 (b)    Identify  the  optimal  model  or  models  based  on  AIC  and  BIC  from  the

approach based on forward selection.

 (c)   Carefully explain why different models are chosen in (a) and (b).
 (d)    Decide which model you would recommend. Give detailed reasons to sup-

port your choice.

  Output from R: Correlations between the predictors in model (7.8)

X1
1.0000000
-0.9999887
0.6858141

 X1
 X2
 X3

X2
-0.9999887
1.0000000
-0.6826107

X3
0.6858141
-0.6826107
1.0000000

  Approach 1: All Possible Subsets

 Figure  7.13  shows a plot of adjusted R-squared against the number of predictors in
the model for the optimal subsets of predictors.
 Table  7.4  gives the values of   R2

adj  , AIC and BIC for the best subset of each size.

  Approach 2: Stepwise Subsets

  Forward Selection Based on AIC

 Start: AIC= 9.59
 Y ~ 1

 Df
1
1
1

 + X3
 + X1
 + X2
 <none>
 Step: AIC= -0.31
 Y ~ X3

Sum of Sq
20.6879
8.6112
8.5064

RSS
2.1121
14.1888
14.2936
22.8000

AIC
-0.3087
9.2151
9.2519
9.5866

 <none>
 + X2
 + X1

  Df

Sum of Sq

1
1

0.06633
0.06452

RSS
2.11211
2.04578
2.04759

AIC
-0.30875
1.53172
1.53613

254

7  Variable Selection

2
r
j
d
a

:
c
i
t
s
i
t
a
t
S

1.00

0.98

0.96

0.94

0.92

0.90

0.88

X3

1.0

X1−X2

X1−X2−X3

1.5

2.0

2.5

3.0

Subset Size

  Figure 7.13

  Plots of   R2

adj   for the best subset of each size

 Table 7.4

  Values of   R2

adj  , AIC and BIC for the best subset of each size

 Subset size

 Predictors

R2
adj

 AIC

 BIC

 1
 2
 3

 X3
 X1, X2
 X1, X2, X3

 0.8765
 1.0000
 1.0000

 –0.3087
 –316.2008
 –314.7671

 –1.0899
 –317.3725
 –316.3294

  Forward Selection Based on BIC*

 Start: AIC= 9.2
 Y ~ 1

 Df

1
1
1

 + X3
 + X1
 + X2
 <none>
 Step: AIC= -1.09
 Y ~ X3

Sum of Sq
20.6879
8.6112
8.5064

RSS
2.1121
14.1888
14.2936
22.8000

AIC
-1.0899
8.4339
8.4707
9.1961

 <none>
 + X2
 + X1

 Df

Sum of Sq

1
1

0.06633
0.06452

RSS

AIC
2.11211   -1.08987
0.36003
2.04578
0.36444
2.04759

 * The R command step which was used here labels the output as AIC even when the BIC penalty
term is used.

7.5  Exercises

  Output from R

 Call:
 lm(formula = Y ~ X3)

 Coefficients:

255

 (Intercept)
 X3
 ---

 Estimate
0.7975
0.6947

Std. Error  t value
0.593
5.421

1.3452
0.1282

Pr(>|t|)
0.5950
0.0123  *

 Residual standard error: 0.8391 on 3 degrees of freedom
 Multiple R-Squared: 0.9074, Adjusted R-squared: 0.8765
 F-statistic: 29.38 on 1 and 3 DF, p-value: 0.01232

 Call:
 lm(formula = Y ~ X1 + X2)

 Coefficients:

 Estimate  Std. Error

t value  Pr(>|t|)

 (Intercept) -1.000e+03
1.000e+00
 X1
 X2
1.000e+00
 ---
 Residual standard error: 1.607e-14 on 2 degrees of freedom
 Multiple R-Squared: 1, Adjusted R-squared: 1
 F-statistic: 4.415e+28 on 2 and 2 DF, p-value: < 2.2e-16

4.294e-12  -2.329e+14
4.250e-15  2.353e+14
4.266e-15  2.344e+14

<2e-16  ***
<2e-16  ***
<2e-16  ***

 Call:
 lm(formula = Y ~ X1 + X2 + X3)

 Coefficients:

 Estimate  Std. Error

t value  Pr(>|t|)

 (Intercept) -1.000e+03
1.000e+00
 X1
1.000e+00
 X2
4.108e-15
 X3
 ---
 Residual standard error: 2.147e-14 on 1 degrees of freedom
 Multiple R-Squared:
 F-statistic: 1.648e+28 on 3 and 1 DF, p-value: 5.726e-15

1.501e-11  -6.660e+13  9.56e-15  ***
1.501e-14  6.661e+13  9.56e-15  ***
1.501e-14  6.664e+13  9.55e-15  ***
1.186e-14  3.460e-01

1,   Adjusted R-squared:

0.788

1

2.    The  real  data  set  in  this  question  first  appeared  in  Hald  (1952).  The  data  are
given in Table  7.5 and can be found on the book web site in the file Haldcement.
txt .         Interest centers on using variable selection to choose a subset of the predic-
tors to model  Y . Throughout this question we shall assume that the full model
below is a valid model for the data

Y

=

b

0

+

b
1

X
1

+

b

2

X

2

+

b

3

X

3

+

b

4

X

4

e
+

(7.9)

 Output from R associated with different variable selection procedures based on
model (7.9) appears on the following pages:

256

7  Variable Selection

 Table 7.5

 Y

 78.5
 74.3
 104.3
 87.6
 95.9
 109.2
 102.7
 72.5
 93.1
 115.9
 83.8
 113.3
 109.4

   Hald’s real data
 x 3
 x 2
 x 1
 6
 26
 7
 15
 29
 1
 8
 56
 11
 8
 31
 11
 6
 52
 7
 9
 55
 11
 17
 71
 3
 22
 31
 1
 18
 54
 2
 4
 47
 21
 23
 40
 1
 9
 66
 11
 8
 68
 10

 x 4
 60
 52
 20
 47
 33
 22
 6
 44
 22
 26
 34
 12
 12

   (a)      Identify the optimal model or models based on   R2

adj  , AIC, AICC, BIC from

the approach based on all possible subsets.

   (b)      Identify  the  optimal  model  or  models  based  on  AIC  and  BIC  from  the

approach based on forward selection.

   (c)      Identify  the  optimal  model  or  models  based  on  AIC  and  BIC  from

the approach based on backward elimination.

   (d)      Carefully  explain  why  the  models  chosen  in  (a),  (b)  &  (c)  are  not  all  the

same.

   (e)      Recommend a final model. Give detailed reasons to support your choice.

  Output from R: Correlations between the predictors in model (7.9)

x1

x4
 x1  1.0000000   0.2285795  -0.82413376  -0.24544511
 x2  0.2285795   1.0000000  -0.13924238  -0.97295500
 x3  -0.8241338  -0.1392424   1.00000000   0.02953700
 x4  -0.2454451  -0.9729550   0.02953700   1.00000000

x3

x2

  Approach 1: All Possible Subsets

 Figure  7.14  shows a plot of adjusted R-squared against the number of predictors in
the model for the optimal subsets of predictors.      Table  7.6  shows the best subset of
each size.

7.5  Exercises

257

x1−x2

x1−x2−x4 x1−x2−x3−x4

0.95

0.90

0.85

0.80

0.75

0.70

2
r
j
d
a

:
c
i
t
s
i
t
a
t
S

0.65

x4

1.0

1.5

2.0

2.5

3.0

3.5

4.0

Subset Size

  Figure 7.14

  Plots of

adjR    for the best subset of each size

2

 Table 7.6

  Values of   R2

adj   , AIC, AIC C  and BIC for the best subset of each size

 Subset
size

 Predictors

 1
 2
 3
 4

 X4
 X1, X2
 X1, X2, X4
 X1, X2, X3, X4

R2
adj

 0.6450
 0.9744
 0.9764
 0.9736

 AIC

 58.8516
 25.4200
 24.9739
 26.9443

 AIC C

 61.5183
 30.4200
 33.5453
 40.9443

 BIC

 59.9815
 27.1148
 27.2337
 29.7690

  Approach 2: Stepwise Subsets

  Backward elimination based on AIC

 Start: AIC= 26.94
 Y ~ x1 + x2 + x3 + x4

 - x3
 - x4
 - x2
 <none>
 - x1

 DF
1
1
1

1

Sum of Sq
0.109
0.247
2.972

25.951

 Step: AIC= 24.97
 Y ~ x1 + x2 + x4

 <none>
 - x4
 - x2
 - x1

 Df

Sum of Sq

1
1
1

9.93
26.79
820.91

RSS
47.973
48.111
50.836
47.864
73.815

RSS
47.97
57.90
74.76
868.88

AIC
24.974
25.011
25.728
26.944
30.576

AIC
24.97
25.42
28.74
60.63

258

7  Variable Selection

  Backward elimination based on BIC

 Start: AIC= 29.77
 Y ~ x1 + x2 + x3 + x4

 - x3
 - x4
 - x2
 <none>
 - x1

 Df
1
1
1

1

Sum of Sq
0.109
0.247
2.972

25.951

 Step: AIC= 27.23
 Y ~ x1 + x2 + x4

 - x4
 <none>
 - x2
 - x1

 Df
1

1
1

Sum of Sq
9.93

26.79
820.91

 Step: AIC= 27.11
 Y ~ x1 + x2

RSS
47.973
48.111
50.836
47.864
73.815

RSS
57.90
47.97
74.76
868.88

 <none>
 - x1
 - x2

 Df

Sum of Sq

1
1

848.43
1207.78

RSS
57.90
906.34
1265.69

  Forward selection based on AIC

 Start: AIC= 71.44
 Y ~ 1

 + x4
 + x2
 + x1
 + x3
 <none>

 Df
1
1
1
1

Sum of Sq
1831.90
1809.43
1450.08
776.36

RSS
883.87
906.34
1265.69
1939.40
2715.76

 Step: AIC= 58.85
 Y ~ x4

 + x1
 + x3
 <none>
 + x2

 Df
1
1

1

Sum of Sq
809.10
708.13

14.99

RSS
74.76
175.74
883.87
868.88

AIC
27.234
27.271
27.987
29.769
32.836

AIC
27.11
27.23
30.44
62.32

AIC
27.11
60.31
64.65

AIC
58.85
59.18
63.52
69.07
71.44

AIC
28.74
39.85
58.85
60.63

 Step: AIC= 28.74
 Y ~ x4 + x1

 + x2
 + x3
 <none>

 Df
1
1

Sum of Sq
26.789
23.926

RSS
47.973
50.836
74.762

AIC
24.974
25.728
28.742

259

7.5  Exercises

 Step: AIC= 24.97
 Y ~ x4 + x1 + x2

 <none>
 + x3

 Df

Sum of Sq

1

0.109

RSS
47.973
47.864

AIC
24.974
26.944

  Forward selection based on BIC

 Start: AIC= 72.01
 Y ~ 1

 + x4
 + x2
 + x1
 + x3
 <none>

 Df
1
1
1
1

Sum of Sq
1831.90
1809.43
1450.08
776.36

RSS
883.87
906.34
1265.69
1939.40
2715.76

 Step: AIC= 59.98
 Y ~ x4

 + x1
 + x3
 <none>
 + x2

 Df
1
1

1

Sum of Sq
809.10
708.13

14.99

RSS
74.76
175.74
883.87
868.88

AIC
59.98
60.31
64.65
70.20
72.01

AIC
30.44
41.55
59.98
62.32

 Step: AIC= 30.44
 Y ~ x4 + x1

 + x2
 + x3
 <none>

 Df
1
1

Sum of Sq
26.789
23.926

RSS
47.973
50.836
74.762

AIC
27.234
27.987
30.437

 Step: AIC= 27.23
 Y ~ x4 + x1 + x2

 <none>
 + x3

 Df

Sum of Sq

1

0.109

RSS
47.973
47.864

AIC
27.234
29.769

  Output from R

 Call:
 lm(formula = Y ~ x4)

 Coefficients:

 Estimate  Std. Error
5.2622
0.1546

 (Intercept)  117.5679
 x4
-0.7382
 ---
 Residual standard error: 8.964 on 11 degrees of freedom
 Multiple R-Squared: 0.6745, Adjusted R-squared: 0.645
 F-statistic: 22.8 on 1 and 11 DF, p-value: 0.0005762

t value  Pr(>|t|)

22.342  1.62e-10  ***
-4.775  0.000576  ***

260

7  Variable Selection

 Call:
 lm(formula = Y ~ x1 + x2)

 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

 (Intercept)  52.57735
1.46831
 x1
 x2
0.66225
 ---
 Residual standard error: 2.406 on 10 degrees of freedom
 Multiple R-Squared: 0.9787, Adjusted R-squared: 0.9744
 F-statistic: 229.5 on 2 and 10 DF, p-value: 4.407e-09

2.28617
0.12130
0.04585

23.00  5.46e-10  ***
12.11  2.69e-07  ***
14.44  5.03e-08  ***

 vif(om2)
 x1
  1.055129

x2
1.055129

 Call:
 lm(formula = Y ~ x1 + x2 + x4)

 Coefficients:

 Estimate  Std. Error  t value  Pr(>|t|)

71.6483
1.4519
0.4161
-0.2365

 (Intercept)
 x1
 x2
 x4
 ---
 Residual standard error: 2.309 on 9 degrees of freedom
 Multiple R-Squared: 0.9823, Adjusted R-squared: 0.9764
 F-statistic: 166.8 on 3 and 9 DF, p-value: 3.323e-08

14.1424
0.1170
0.1856
0.1733

5.066  0.000675  ***
12.410  5.78e-07  ***
2.242  0.051687  .

-1.365  0.205395

 vif(om3)
 x1
   1.066330

x2
18.780309

x4
18.940077

    Call:
 lm(formula = Y ~ x1 + x2 + x3 + x4)
 Coefficients:

 (Intercept)
 x1
 x2
 x3
 x4
 ---

 Estimate  Std. Error  t value  Pr(>|t|)
0.3991
0.0708  .
0.5009
0.8959
0.8441

62.4054
1.5511
0.5102
0.1019
-0.1441

70.0710
0.7448
0.7238
0.7547
0.7091

0.891
2.083
0.705
0.135
-0.203

 Residual standard error: 2.446 on 8 degrees of freedom
 Multiple R-Squared: 0.9824, Adjusted R-squared: 0.9736
 F-statistic: 111.5 on 4 and 8 DF, p-value: 4.756e-07

 vif(om4)
 x1
   38.49621

x2
254.42317

x3
46.86839

x4
282.51286

7.5  Exercises

261

   3.     This is a continuation of Exercise 5 in Chapter 6. The golf fan was so impressed
with your answers to part 1 that your advice has been sought re the next stage in
the data analysis, namely using model selection to remove the redundancy in full
the model developed in part 1.

log( )Y

=

b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

+

b

x
5 5

+

b

x
6 6

+

b

x
7 7

e
+

  (7.10)

 where
  Y  =  PrizeMoney ;   x  1  =  Driving  Accuracy ;   x  2  =  GIR ;   x  3  =  PuttingAverage ;   x  4  =
BirdieConversion ;  x  5  = SandSaves ; x  6   = Scrambling ; and  x  7  = PuttsPerRound.

 Interest centers on using variable selection to choose a subset of the predic-
tors to model the transformed version of  Y . Throughout this question we shall
assume that model (7.10) is a valid model for the data.

   (a)     Identify the optimal model or models based on
the approach based on all possible subsets.

2

adjR   , AIC, AICC, BIC from

   (b)     Identify  the  optimal  model  or  models  based  on  AIC  and  BIC  from  the

approach based on backward selection.

   (c)     Identify  the  optimal  model  or  models  based  on  AIC  and  BIC  from  the

approach based on forward selection.

   (d)     Carefully explain why the models chosen in (a) & (c) are not the same while

those in (a) and (b) are the same.

   (e)     Recommend a final model. Give detailed reasons to support your choice.
   (f)     Interpret the regression coefficients in the final model. Is it necessary to be

cautious about taking these results to literally?

   Chapter 8
  Logistic Regression

 Thus far in this book we have been concerned with developing models where the
response variable is numeric and ideally follows a normal distribution. In this chapter,
we  consider  the  situation  in  which  the  response  variable  is  based  on  a  series  of
“yes”/“no” responses, such as whether a particular restaurant is recommended by
being  included  in  a  prestigious  guide.  Ideally  such  responses  follow  a  binomial
distribution in which case the appropriate model is a logistic regression model.

  8.1  Logistic Regression Based on a Single Predictor

 We begin this chapter by considering the case of predicting a binomial random vari-
able  Y  based on a single predictor variable  x  via logistic regression. Before consid-
ering  logistic  regression  we  briefly  review  some  facts  about  the  binomial
distribution.

  The binomial distribution

 A binomial process is one that possesses the following properties:

    1.    There are  m  identical trials
    2.    Each trial results in one of two outcomes, either a “success,”  S  or a “failure,”  F
    3.      θ  , the probability of “success” is the same for all trials
    4.    Trials are independent

 The trials of a binomial process are called Bernoulli trials.

 Let  Y  = number of successes in  m  trials of a binomial process. Then  Y  is said to
have a binomial distribution with parameters  m    and q  . The short-hand notation for
this is as follows:

The  probability that  Y  takes the integer value  j  ( j  = 0, 1, …,  m ) is given by

  Y~Bin(m, q)

P Y
(

=

j

)

=

m
j

( ) (
q
1

j

−

q

m j
−

)

=

m
j m j
!(

!
−

)!

j

q

(
1

−

q

m j
−

)

j

=

1,...,

m

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_8, © Springer Science + Business Media LLC 2009

263

264

8  Logistic Regression

 The mean and variance of  Y  are given by

E Y
( )

=

m Var Y
( )

q

,

=

m
q

(1

−

q
)

 In the logistic regression setting, we wish to model   q   and hence  Y  on the basis of
predictors  x  1 ,  x  2 , …,  x  p .

 We  shall  begin  by  considering  the  case  of  a  single  predictor  variable   x .  In

this case

(
Y x
|
i

)

~

Bin(

m
i

,

q

(

x
i

))

i

=

1,...,

n

 The sample proportion of “successes” at each  i  is given by    yi / mi.   Notice that

E(yi  / mi|xi) = q(xi) and Var(yi / mi | xi) = q (xi) (1– q (xi )) / mi

 We shall consider the sample proportion of “successes,” yi / mi     as the response since:
   1.       yi /mi   is an unbiased estimate of   q (xi)
   2.       yi /mi   varies between 0 and 1
 Notice that the variance of the response   yi / mi  , depends on   q (xi)   and as such it is not
constant. In addition, this variance is also therefore unknown. Thus, least squares
regression is an inappropriate technique for analyzing Binomial responses.

  Example: Michelin and Zagat guides to New York City restaurants

 In November 2005, Michelin published its first ever guide to hotels and restaurants
in  New  York  City  (Anonymous,  2005).  According  to  the  guide,  inclusion  in  the
guide is based on Michelin’s “meticulous and highly confidential evaluation process
(in which) Michelin inspectors – American and European – conducted anonymous
visits to New York City restaurants and hotels. … Inside the premier edition of the
 Michelin  Guide  New York  City   you’ll  find  a  selection  of  restaurants  by  level  of
comfort;  those  with  the  best  cuisine  have  been  awarded  our  renowned  Michelin
stars. … From the best casual, neighborhood eateries to the city’s most impressive
gourmet restaurants, the  Michelin Guide New York City  provides trusted advice for
an unbeatable experience, every time.”

 On the other hand, the  Zagat Survey 2006: New York City Restaurants  (Gathje
and Diuguid, 2005) is purely based on views submitted by customers using mail-in
or online surveys.

 We shall restrict our comparison of the two restaurant guides to the 164 French
restaurants that are included in the  Zagat Survey 2006: New York City Restaurants .
We want to be able to model   q  , the probability that a French restaurant is included
in  the   2006  Michelin  Guide  New York  City ,  based  on  customer  views  from  the
 Zagat Survey 2006: New York City Restaurants . We begin looking at the effect of
 x ,  customer  ratings  of  food  on    q  .  Table   8.1   classifies  the  164  French  restaurants
included  in  the   Zagat  Survey  2006:  New  York  City  Restaurants   according  to
whether they were included in the  Michelin Guide New York City  for each value of

8.1  Logistic Regression Based on a Single Predictor

265

  Table 8.1
ratings

  French restaurants in the Michelin guide broken down by food

 Food rating,  x   i
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28

 InMichelin,  y   i
 0
 0
 0
 2
 5
 8
 15
 4
 12
 6
 11
 1
 6
 4

 NotInMichelin,
 m   i  - y   i
 1
 1
 8
 13
 13
 25
 11
 8
 6
 1
 1
 1
 1
 0

  m   i
 1
 1
 8
 15
 18
 33
 26
 12
 18
 7
 12
 2
 7
 4

  y   i  / m   i
 0.00
 0.00
 0.00
 0.13
 0.28
 0.24
 0.58
 0.33
 0.67
 0.86
 0.92
 0.50
 0.86
 1.00

the food rating. For example,  m   i   = 33 French restaurants in the  Zagat Survey 2006:
New York City Restaurants  received a food rating of  x   i   = 20 (out of 30). Of these
33,  y   i   = 8 were included in the  Michelin Guide New York City  and  m   i  –  y   i   = 25 were
not.  In  this  case,  the  observed  proportion  of  “successes”  at   x   =  20  is  given  by
y
i

  . The data in Table  8.1  can be found on the book web site in the file

0.24

8

=

m =

i

33

 MichelinFood.txt. Figure  8.1  contains a plot of the sample proportions of “success”
against Zagat food ratings.

 It is clear from Figure  8.1  that the shape of the underlying function,   q (x)   is not a
straight line. Instead it appears S-shaped, with very low values of the  x -variable resulting
in zero probability of “success” and very high values of the  x -variable resulting in a prob-
ability of “success” equal to one.

  8.1.1  The Logistic Function and Odds

 A  popular  choice  for  the  S-shaped  function  evident  in  Figure   8.1   is  the  logistic
function, that is,

q

x
( )

=

b
exp(
0
b
1 exp(
+

+

0

x
b
1
b
1

+

)
x

=

)

1 exp(

+

−

1
{
b

+

b
1

}
x
)

0

 Solving this last equation for   b 0 + b1x  gives

266

8  Logistic Regression

n
o
i
t
r
o
p
o
r
P
e
p
m
a
S

l

1.0

0.8

0.6

0.4

0.2

0.0

16

18

20

22

24

26

28

Zagat Food Rating

  Figure 8.1

  Plot of the sample proportion of “successes” against food ratings

b

0

+

b
1

x

=

log

q
⎛
⎜
1
⎝ −

x
( )
x
q
( )

⎞
⎟
⎠

log

q
⎛
⎜
1
⎝ −

x
( )
x
q
( )
   is called a  logit .

⎞
⎟
⎠

 Thus,  if  the  chosen  function  is  correct,  a  plot  of

    against   x   will

q
⎛
produce a straight line. The quantity log
⎜
1
⎝ −

x
( )
x
q
( )

⎞
⎟
⎠

 The quantity
1

q
−

x
( )
x
q
( )

   is known as  odds . The concept of odds has two forms,

namely, the  odds in favor  of “success” and the  odds against  “success.” The odds in
favor  of  “success”  are  defined  as  the  ratio  of  the  probability  that  “success”  will
occur, to the probability that “success” will not occur. In symbols, let   q = P(success)
then,

Odds in favor of success

=

P

1

−

(success)
P

(success)

=

q
−

1

q

.

 Thus,   the  odds  in  logistic  regression  are  in  the  form  of  odds  in  favor  of  a
“success.”

 The  odds  against  “success”  are  defined  as  the  ratio  of  the  probability  that
“success” will not occur, to the probability that “success” will occur. In symbols,

Odds against success

=

1

−
P

(success)

P
(success)

=

q

.

1

−
q

8.1  Logistic Regression Based on a Single Predictor

267

 Bookmakers quote odds as odds against “success” (i.e., winning). A horse quoted
at the fixed odds of 20 to 1 (often written as the ratio 20/1) is expected to lose 20
and win just 1 out of every 21 races.

 Let  x  denote the Zagat food rating for a given French restaurant and q (x)     denote
the  probability  that  this  restaurant  is  included  in  the  Michelin  guide.  Then  our
logistic regression model for the response,   q (x)   based on the predictor variable  x  is
given by

q

x
( )

=

1 exp(

+

−

1
{
b

+

b
1

}
x
)

0

   (8.1)

 Given below is the output from R for model (8.1).

  Logistic regression output from R

 Call:
 glm(formula  =  cbind(InMichelin,  NotInMichelin)  ~  Food,  family  =
binomial)
 Coefficients:

 Estimate
 (Intercept)  -10.84154
 Food
0.50124
 ---
 (Dispersion parameter for binomial family taken to be 1)

Std. Error  z value
-5.821
5.717

1.86236
0.08768

Pr(>|z|)
5.84e-09
1.08e-08

***
***

   Null deviance: 61.427 on 13 degrees of freedom

 Residual deviance: 11.368 on 12 degrees of freedom
AIC: 41.491

 The fitted model is

ˆ( )
x
q

=

1 exp(

+

−

1
{
ˆ
b

=

+

0

ˆ
b
1

}
x
)

1

1 exp(

+

{
− −

}
x
10.842+0.501 )

 Figure  8.2  shows a plot of the of the sample proportions of “success” (i.e., inclusion
in the Michelin guide) against  x , Zagat food rating. The fitted logistic regression
model is marked on this plot as a smooth curve.

 Rearranging the fitted model equation gives the log(odds) or logit

log

⎛
⎜
1
−⎝

ˆ( )
x
q
ˆ
x
q
( )

⎞
⎟
⎠

=

ˆ
b

0

ˆ
b
1

+

x

= −

10.842+0.501

x

 Notice that the log(odds) or logit is a linear function of  x . The estimated odds for
being included in the Michelin guide are given by

⎛
⎜
1
−⎝

ˆ( )
x
q
ˆ
x
q
( )

⎞
⎟
⎠

=

exp(

ˆ
b

0

ˆ
b
1

+

x

)

=

x
exp( 10.842+0.501 )

−

268

8  Logistic Regression

i

e
d
u
G
n

i
l

i

e
h
c
M
e
h
t

n
I

i

n
o
s
u
c
n

l

i

f
o

y
t
i
l
i

b
a
b
o
r
P

1.0

0.8

0.6

0.4

0.2

0.0

16

18

20

22

24

26

28

Zagat Food Rating

  Figure 8.2

  Logistic regression fit to the data in Fig        ure 8.1

 For example, if  x , Zagat food rating is increased by

  (cid:129)

 (cid:129)

 One  unit  then  the  odds  for  being  included  in  the  Michelin  guide  increases  by
  exp(0.501) = 1.7
 Five units then the odds for being included in the Michelin guide increases by
exp (5 × 0.501) = 12.2

 Table   8.2   gives  the  estimated  probabilities  and  odds  obtained  from  the  logistic
model (8.1). Taking the ratio of successive entries in the last column of Table  8.2
(i.e., 0.060/0.036 = 0.098/0.060 = … = 24.364/14.759 = 1.7) reproduces the result
that  increasing   x   (Zagat  food  rating)  by  one  unit  increases  the  odds  of  being
included in the Michelin guide by 1.7.

 Notice from Table  8.2  that the odds are greater than 1 when the probability is
greater than 0.5. In these circumstances the probability of “success” is greater than
the probability of “failure.”

  8.1.2  Likelihood for Logistic Regression with a Single Predictor

 We next look at how likelihood can be used to estimate the parameters in logistic
regression.

 8.1  Logistic Regression Based on a Single Predictor

269

  Table 8.2

  Estimated probabilities and odds obtained from the logistic model

  x , Zagat food rating

   qˆ (x)  , estimated probability
of inclusion in the
Michelin guide

    qˆ (x) / (1–qˆ (x))  estimated
odds

 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28

 0.035
 0.056
 0.089
 0.14 0
 0.211
 0.306
 0.422
 0.546
 0.665
 0.766
 0.844
 0.899
 0.937
 0.961

 0.036
 0.060
 0.098
 0.162
 0.268
 0.442
 0.729
 1.204
 1.988
 3.281
 5.416
 8.941
 14.759
 24.364

 Let  y   i  = number of successes in  m   i   trials of a binomial process where  i  = 1,…,  n .

Then

y
i

|

x
i

~

 Bin(

m
i

, (
q

x
i

))

 So that

P Y
(
i

=

y
i

|

x
i

)

=

Assume further that

m
i
y

( )
q

i

(

x
i

(
y
) 1
i

−

q

(

x
i

)

m y
−
i
i

)

So that

q

(

x
i

)

=

1 exp(

+

−

1
{
b

+

b
1

x
i

0

}
)

log

q
⎛
⎜
1
−⎝

x
(
i
(
q

)
x
i

⎞
⎟
⎠

)

=

b

0

+

b
1

x
i

Assuming the  n  observations are independent, then the likelihood function is the
function of the unknown probability of success q ( xi)  given by

L

=

n

∏

i

=

1

R

(
Y
i

y x
= |
i
i

)

=

n

∏

i

=

1

( )

m
i
y
i

y
i

q

(

x
i

)

(
1

−

q

(

x
i

)

m y
−
i
i

)

270

8  Logistic Regression

  The log-likelihood function is given by

log

( )
L

=

=

=

=

n

∑

i

=

1

n

∑

i

=

1

n

∑

i

=

1

n

∑

i

=

1

log

( )

m
i
y
i

+

log

(
q

y
i

(

x
i

)

)

+

(
(
log 1

−

q

(

x
i

)

m y
−
i
i

)

)
⎤
⎦

y
i

log

(
q

(

x
i

)

) (
+

m y
−
i
i

)

(
log 1

−

q

(

x

i

)

)

+

log

( )
⎤
⎦

m
i
y
i

y
i

log

q
⎛
⎜
1
−⎝

x
(
i
(
q

)
x
i

⎞
⎟
⎠

)

+

m
i

(
log 1

−

q

(

x
i

)

)

+

log

m
i
y
i

⎤
( )
⎥
⎥
⎦

y
i

(

b

0

+

b
1

x
i

)

−

m
i

log 1 exp(
+

(

b

0

+

b
1

x
i

)

)

+

log

( )
⎤
⎦

m
i
y
i

⎡
⎣

⎡
⎣

⎡
⎢
⎢
⎣

⎡
⎣

  since

(
log 1

−

q

(

x
i

)

)

=

⎛
log 1
⎜
⎝

−

exp (
b
0
1 exp (
b

+

+

0

x
b
1
b
1

+

)
x

⎞
⎟
⎠

)

=

log

⎛
⎜
⎝

1 exp (

+

1
b

+

b
1

x

)

0

⎞
⎟
⎠

The parameters b0 and b1 can be estimated by maximizing the log-likelihood. This
has  to  be  done  using  an  iterative  method  such  as  Newton-Raphson  or  iteratively
reweighted least squares.

 The standard approach to testing

 is to use what is called a Wald test statistic

H0 : b1 = 0

Z

=

ˆ
b
1

estimated se

( )
ˆ
b
1

 where  the  estimated  standard  error  is  calculated  based  on  the  iteratively
reweighted least squares approximation to the maximum likelihood estimate.
The  Wald  test  statistic  is  then  compared  to  a  standard  normal  distribution  to
test for statistical significance. Confidence intervals based on the Wald statistic
are of the form

ˆ
b
1

z a
−±
1

/ 2

estimated se

( )
ˆ
b
1

 8.1  Logistic Regression Based on a Single Predictor

271

  8.1.3  Explanation of Deviance

 In logistic regression the concept of the residual sum of squares is replaced by a
concept known as the  deviance . In the case of logistic regression the deviance is
defined to be

2

G

=

2

 where

n

∑

i

=

1

y
i

log

⎛
⎜
⎝

y
i
ˆ
y
i

⎞
⎟
⎠

⎡
⎢
⎢
⎣

+

(

m y
−
i
i

) log

⎛
⎜
⎝

m y
⎞−
i
i
⎟−
ˆ
m y
⎠
i
i

⎤
⎥
⎥
⎦

ˆ
y m xq
(
i
i

=

i

ˆ

).

 The degrees of freedom (df) associated with the deviance are given by

  df = n – (number of b ′s estimated)

 The  deviance  associated  with  a  given  logistic  regression  model  (M)  is  based  on
comparing the maximized log-likelihood under (M) with the maximized log-likeli-
hood under (S), the so-called saturated model that has a parameter for each observa-
tion. In fact, the deviance is given by twice the difference between these maximized
log-likelihoods.

 The saturated model, (S) estimates q (xi ) by the observed proportion of “succ-
ˆ (
esses” at  x   i  , i.e., by
x
y m . In symbols,  S
. In the current example, these
)i
q
=
i
ˆ (
  denote  the  estimate  of    q  (xi)
estimates  can  be  found  in  Table  8.1.  Let
q
obtained from the logistic regression model. In the current example, these estimates
can be found in Table  8.2 . Let ŷ1 denote the predicted value of yi obtained from the

y m
i
i
)ix

M

i

logistic regression model then

ˆ
y m
=
i
i

ˆ
qΜ

(

x
i

)

ˆ (
 or                M
q

x
i

)

=

ˆ
y
i
m
i

   .

 Recall that the log-likelihood function is given by

log

( )
L

=

n

∑

i

=

1

y
i

⎡
⎣

log

(
q

(

x
i

)

)

+

(
m y
−
i
i

)

(
log 1

−

q

(

x
i

)

)

+

log

( )
⎤
⎦

m
i
y
i

272

8  Logistic Regression

 Thus, the deviance is given by

2

G

=

2 log
⎡
⎣
n

( )
L
S

−

log

(
L

M

)
⎤
⎦

=

2

∑

i

1
=

2
−

n

∑

i

1
=

n

=

2

∑

i

1
=

y
i

log

⎡
⎢
⎣

y
i

log

y
i

log

⎡
⎢
⎣

⎡
⎢
⎣

⎛
⎜
⎝

⎛
⎜
⎝

⎛
⎜
⎝

y
i
m
i

ˆ
y
i
m
i

⎞
⎟
⎠

⎞
⎟
⎠

y
i
ˆ
y
i

⎞
⎟
⎠

+

(
m y
−
i
i

)

+

(
m y
−
i
i

)

⎛
log 1
⎜
⎝

−

y
i
m
i

⎞
⎟
⎠

⎛
log 1
⎜
⎝

−

ˆ
y
i
m
i

⎞
⎟
⎠

+

(

m y
−
i
i

) log

⎛
⎜
⎝

m y
⎞−
i
i
⎟−
ˆ
m y
⎠
i
i

⎤
⎥
⎦

⎤
⎥
⎦

⎤
⎥
⎦

 When each  m   i  , the number of trials at  x   i  , is  large enough  the deviance can be used
to as a goodness-of-fit test for the logistic regression model as we explain next.

 We wish to test

    H   0  : logistic regression model (8.1) is appropriate

 against

    H   A  : logistic model is inappropriate so a saturated model is needed
 Under  the  null  hypothesis  and  when  each   m   i    is   large  enough ,  the  deviance   G  2   is
n pc − −   , where  n  = the number of binomial samples,
approximately distributed as
 p  = the of predictors in the model (i.e.,  p  + 1 = number of parameters estimated).
In this case,  n  = 14,  p  = 1, and so we have 12 df. In R, the deviance associated with
model  (8.1)  is  referred  to  as  the  Residual  deviance  while  the  null  deviance  is
based on model (8.1) with b1     set to zero.

2

1

  Logistic regression output from R

  Null deviance: 61.427 on 13 degrees of freedom
 Residual deviance: 11.368 on 12 degrees of freedom

 So that the  p -value is

  P(G2 > 11.368) = 0.498

 Thus, we are unable to reject  H  0 . In other words, the deviance goodness-of-fit test
finds  that  the  logistic  regression  model  (8.1)  is  an  adequate  fit  overall  for  the
Michelin guide data.

  8.1.4  Using Differences in Deviance Values to Compare Models

 The difference in deviance can be used to compare nested models. For example, we
can compare the null and residual deviances to test

 8.1  Logistic Regression Based on a Single Predictor

273

H

0

:

xq
( )

=

1
1 exp(

+

−

b

0

)

(i.e.,

b
1

=

0)

 against

AH

:

q

x
( )

=

1 exp(

+

−

1
{
b

+

b
1

x

0

}
)

(i.e.,

b
1

≠

0)

 The difference in these two deviances is given by

G

2
H

0

−

G

2 = 61.427 11.368
H

-

A

=

50.059

 This difference is to be compared to   c 2   a distribution with
degree of freedom. The resulting  p -value is given by

df

df
H−

A

H

0

=

=
13 12 1

−

P G
(

2
H

0

G−

2
H

A

>

50.059) 1.49e-12
=

 Earlier,  we  found  that  the  corresponding   p -value  based  on  the  Wald  test  equals
1.08e-08. We shall see that Wald tests and tests based on the difference in deviances
can result in quite different  p -values.

  8.1.5  R 2  for Logistic Regression

 Recall that for linear regression

2

R = −

1

RSS
SST

.

)
(
L
⎦    in logistic regression is a generali-
 Since the deviance,
⎤
zation  of  the  residual  sum  of  squares  in  linear  regression,  one  version  of   R  2   for
logistic regression model is given by

2 log
⎡
⎣

( )
L
S

log

G

=

−

M

2

R

2
dev

1
= −

G

G

2
AH
2
H

0

 For the single predictor logistic regression model (8.1) for the Michelin guide data,

R = −

1

2
dev

11.368
61.427

=

0.815

  .

 There are other ways to define  R  2  for logistic regression. Menard (2000) provides

a review and critique of these, and ultimately recommends

2

devR   .

274

8  Logistic Regression

  Pearson goodness-of-fit statistic

 An alternative measure of the goodness-of-fit of a logistic regression model is the
Pearson  X  2  statistic which is given by

2

X

n

= ∑

i

=

1

(
y m
i
i

ˆ
Var

2

ˆ
- q
(
y m
i
i

)
( )
x
i
)

=

n

∑

i

=

1

(
y m
i
i
(
( )
x
1
i

ˆ
q

ˆ
- q

ˆ
q

−

2

i

)
( )
x
)
( )
m
x
i
i

 The degrees of freedom associated with this statistic are the same as those associ-
ated with the deviance, namely,

Degrees of freedom = n – p – 1,

 where   n   =  the  number  of  binomial  samples,   p   =  the  number  of  predictors  in  the
model (i.e.,  p  + 1 = number of parameters estimated). In this case,  n  = 14,  p  = 1, and
so  we  have  12  df.  The  Pearson   X   2   statistic  is  also  approximately  distributed  as
n pc − −    when each  m   i   is  large enough . In this situation, the Pearson  X  2  statistic and
the deviance  G  2  generally produce similar values, as they do in the current example.

1,

2

Logistic   regression output from R

 Pearson’s X^2 = 11.999

 We  next  look  at  diagnostic  procedures  for  logistic  regression.  We  begin  by

considering the concept of residuals in logistic regression.

  8.1.6  Residuals for Logistic Regression

 There are at least three types of residuals for logistic regression, namely,

  (cid:129)
 (cid:129)
 (cid:129)

 Response residuals
 Pearson residuals and standardized Pearson residuals
 Deviance residuals and standardized deviance residuals

  Response residuals  are defined as the response minus the fitted values, that is,

r
i
   response,

=

y m
i
i

ˆ(
xq
i

)

−

)ixq

 where    ˆ(
since the variance of    i
interpret in practice.

  is  the   i th  fitted  value  from  the  logistic  regression  model.  However,
y m    is not constant, response residuals can be difficult to

i

 The problem of nonconstant variance of    i

i

y m   is overcome by  Pearson residu-

als , which are defined to be

 8.1  Logistic Regression Based on a Single Predictor

275

r
i
Pearson,

=

(
y m
i
i

ˆ
- q

ˆ
Var

(
y
i

i

)
( )
x
)
m
i

=

(
y m
i
i
(
( )
x
1

i

ˆ
q

ˆ
- q

ˆ
q

−

i

)
( )
x
)
( )
m
x
i
i

.

 Notice that

n

∑

i

2
r
i
Pearso ,
n

=

n

∑

i

1
=

(
y m
i
i
(
( )
x
1

i

ˆ
q

ˆ
- q

ˆ
q

−

2

i

)
( )
x
)
( )
m
x
i
i

=

X

2

.

 This is commonly cited as the reason for the name Pearson residuals.

ˆ
 Pearson residuals do not account for the variance of  ( )
ixq
come by  standardized Pearson residuals , which are defined to be

    . This issue is over-

sr

i
Pearson,

=

=

i

ˆ
- q

)
(
( )
x
y m
i
i
)
(
ˆ
ˆVar
( )
x
y m
- q
i
i
)
(
ˆ
( )
x
y m
- q
i
i
)
(
ˆ
ˆ
) ( )
( )
x
x
1
- q
q

(
1

h
i

−

i

i

i

i

i

=

m
i

r
i
Pearson,
(
1

h
i

−

i

)

 where  h   ii   is the  i th diagonal element of the hat matrix obtained from the weighted
least squares approximation to the MLE.

 Deviance residuals are defined in an analogous manner to Pearson residuals with

the Pearson goodness-of-fit statistic replaced by the deviance  G  2 , that is,

n

∑

i

2
r
Deviance

,

i

2

G=

 Thus,  deviance residuals  are defined by

r
i
Deviance,

=

sign

(
y m
i
i

ˆ
q

−

(

x
i

)

)

g
i

n

2

G

 where
to be

= ∑   .  Furthermore,   standardized  deviance  residuals   are  defined

2
g
i

i

=

1

sr

Deviance

=

,

i

r
Deviance

,

i

1

−

h
ii

276

8  Logistic Regression

 Table  8.3  gives the values of the response residuals, Pearson residuals and the
deviance residuals for the Michelin guide data in Table  8.1 . The Pearson residuals
and deviance residuals are quite similar, since most of the  m   i   are somewhat larger
than  1.  Figure   8.3   shows  plots  of  standardized  Pearson  and  deviance  residuals
against  Food  Rating.  Both  plots  produce  very  similar  nonrandom  patterns.  Thus,
model (8.1) is a valid model.

 Table 8.3
 Food rating,
 x   i
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28

  Three types of residuals for the Michelin guide data in Table  8.1

 Response,
  y mi
i
 0.000
 0.000
 0.000
 0.133
 0.176
 0.229
 0.519
 0.250
 0.667
 0.857
 0.909
 0.500
 0.857
 1.000

ˆ(
)xiq
 0.025
 0.042
 0.069
 0.111
 0.175
 0.265
 0.38
 0.509
 0.638
 0.75
 0.836
 0.896
 0.936
 0.961

 Response
residuals

 Pearson
residuals

 Deviance
residuals

 –0.035
 –0.056
 –0.089
 –0.006
 0.067
 –0.064
 0.155
 –0.213
 0.001
 0.091
 0.073
 –0.399
 –0.079
 0.039

 –0.190
 –0.244
 –0.886
 –0.069
 0.693
 –0.798
 1.602
 –1.482
 0.012
 0.567
 0.693
 –1.878
 –0.862
 0.405

  X  2  = 11.999

 –0.266
 –0.340
 –1.224
 –0.070
   0.670
 –0.815
   1.589
 –1.485
   0.012
   0.599
   0.749
 –1.426
 –0.748
   0.567
  G  2  = 11.368

i

l

i

s
a
u
d
s
e
R
e
c
n
a
v
e
D
d
e
z
d
r
a
d
n
a
S

t

i

2

1

0

−1

−2

i

l

s
a
u
d
s
e
R
n
o
s
r
a
e
P
d
e
z
d
r
a
d
n
a
S

t

i

2

1

0

−1

−2

16

20

24

28

16

20

24

28

Food Rating

Food Rating

  Figure 8.3

  Plots of standardized residuals against Food Rating

 8.2  Binary Logistic Regression

277

 According to Simonoff (2003, p. 133) :

 The Pearson residuals are probably the most commonly used residuals, but the deviance
residuals (or standardized deviance residuals) are actually preferred, since their distribution
is closer to that of least squares residuals.

  8.2  Binary Logistic Regression

 A very important special case of logistic regression occurs when all the  m   i   equal 1.
Such data are called binary data. As we shall see below, in this situation the good-
ness-of-fit measures  X  2  and  G  2  are problematic and plots of residuals can be diffi-
cult to interpret. To illustrate these points we shall reconsider the Michelin guide
example, this time using the data in its binary form.

  Example: Michelin and Zagat guides to New York City restaurants (cont.)

 We again consider the 164 French restaurants included in the  Zagat Survey 2006:
New York City Restaurants . This time we shall consider each restaurant separately
and  classify  each  one  according  to  whether  they  were  included  in  the  in  the
 Michelin Guide New York City . As such we define the following binary response
variable:

  yi = 1 if the restuarant is included in the Michelin guide
yi = 0 if the restuarant is NOT included in the Michelin guide

 We shall consider the following potential predictor variables:

    x   1  = Food = customer rating of the food (out of 30)
   x   2  = Décor = customer rating of the decor (out of 30)
   x   3  = Service = customer rating of the service (out of 30)
   x   4  = Price = the price (in $US) of dinner (including one drink and a tip)

 The data can be found on the book web site in the file   MichelinNY.csv. The first

six rows of the data are given in Table  8.4 .

 Table 8.4

  Partial listing of the Michelin Guide data with a binary response

 InMichelin, y i
 0
 0
 0
 1
 0
 0

 Restaurant
name

 Food

 Decor

 Service

 Price

 14 Wall Street
 212
 26 Seats
 44
 A
 A.O.C.

 19
 17
 23
 19
 23
 18

 20
 17
 17
 23
 12
 17

 19
 16
 21
 16
 19
 17

 50
 43
 35
 52
 24
 36

278

8  Logistic Regression

 Let   q(x1)   denote the probability that a French restaurant with Zagat food rating
 x  1  is included in the Michelin guide. We shall first consider the logistic regression
model with the single predictor  x  1  given by (8.1). In this case the response variable,
 y   i   is binary (i.e., takes values 0 or 1) and so each  m   i   equals 1.

 Figure  8.4  shows a plot of  y   i   against  x  1 , food rating. The points in this figure have
been jittered in both the vertical and horizontal directions to avoid over plotting. It
is evident from Figure  8.4  that the proportion of  y   i   equalling one increase as Food
Rating increases.

 Figure   8.5   shows  separate  box  plots  of  Food  Rating  for  French  restaurants
included in the Michelin Guide and those that are not. It is clear from Figure  8.5
that the distribution of food ratings for French restaurants included in the Michelin
Guide has a larger mean than the distribution of food ratings for French restaurants
not included in the Michelin Guide. On the other hand the variability in food ratings
is similar in the two groups. Later we see that comparisons of means and variances
of predictor variables across the two values of the binary outcome variable is an
important step in model building.

 Given  below  is  the  output  from  R  for  model  (8.1)  using  the  binary  data  in

Table  8.4 .

)
s
e
Y
=
1

,

o
N
=
0
(

i

?
e
d
u
G
n

i
l

i

e
h
c
M
n

I

1.0

0.8

0.6

0.4

0.2

0.0

16

18

20

22

24

26

28

Food Rating

  Figure 8.4

  Plot of  y   i   versus food rating

 8.2  Binary Logistic Regression

279

28

26

24

22

20

18

16

g
n
i
t
a
R
d
o
o
F

0

1

In Michelin Guide? (0 = No, 1 = Yes)

  Figure 8.5

  Box plots of Food Ratings

  Logistic regression output from R

 Call:
 glm(formula = y ~ Food, family = binomial(), data = MichelinNY)
 Coefficients:

 Estimate  Std. Error
1.86234
0.08767

 (Intercept)  -10.84154
 Food
0.50124
 ---
 (Dispersion parameter for binomial family taken to be 1)

z value
-5.821
5.717

Pr(>|z|)
5.83e-09 ***
1.08e-08 ***

      Null deviance: 225.79 on 163 degrees of freedom
 Residual deviance: 175.73 on 162 degrees of freedom
 AIC: 179.73

 Number of Fisher Scoring iterations: 4

 For comparison purposes, given below is the output from R for model (8.1) using the cross-

tabulated data in Table  8.1 .

 Call:
 glm(formula  =  cbind(InMichelin,  NotInMichelin)  ~  Food,  family  =
binomial)

 Coefficients:

 (Intercept)  -10.84154
 Food
0.50124
 ---

 Estimate  Std. Error
1.86236
0.08768

z value
-5.821
5.717

Pr(>|z|)
5.84e-09 ***
1.08e-08 ***

 (Dispersion parameter for binomial family taken to be 1)

280

8  Logistic Regression

      Null deviance: 61.427 on 13 degrees of freedom
 Residual deviance: 11.368 on 12 degrees of freedom
 AIC: 41.491

 Notice that while the  model coefficients  (and standard errors etc.,)  are the same ,
the  deviance and AIC values differ  in the two sets of output. Why? We consider this
issue next.

  8.2.1  Deviance for the Case of Binary Data

)

x

=

ˆ
   . Let     M
q

 For binary data all the  m   i   are equal to one. Thus, the saturated model,  S  estimates
  q (xi)    by  the  observed  proportion  of  “successes”  at   x   i  ,  i.e.,  by      yi  .  In  symbols
ˆ (
   denote the estimate of   q (xi)   obtained from the logistic
q
s
regression model. Let    ˆiy    denote the predicted value of  y   i   obtained from the logistic
  .  Since    mi  =  1    the  log-likelihood  function  is
regression  model  then
given by

ˆ
xq
(
= M
i

y
i

ˆ
y
i

x

)

(

)

i

i

log

( )
L

=

n

∑

i

=

1

y
i

⎡
⎣

log

(
q

(

x
i

)

) (
1
+

−

y
i

)

(
log 1

−

q

(

x
i

)

)

+

log

( )
⎤
⎦

1
y
i

 Thus, the deviance is given by

2

G

=

2 log
⎡
⎣
n

( )
L
S

−

log

(
L

M

)
⎤
⎦

y
i

⎡
⎣

log

( ) (
y
1
+
i

−

y
i

)

(
log 1

−

y
i

)
⎤
⎦

=

2

∑

i

=

1

n

−

2

∑

i

=

1

y
i

⎡
⎣

log

( ) (
ˆ
y
1
+
i

−

y
i

)

(
log 1

−

ˆ
y
i

)
⎤
⎦

n

2
= −

∑

i

=

1

y
i

⎡
⎣

log

( ) (
ˆ
y
1
+
i

−

y
i

)

(
log 1

−

ˆ
y
i

)
⎤
⎦

 since using L’Hopital’s rule with   f(y) = – log (y)  and g(y)  = 1/y

f y
lim ( )
y
   →

0

 so that

= ∞

g y
, lim ( )
y
0

→

= ∞

lim
y
0
→

(
−

y

y
log( )

)

=

lim
y
0
→

f y
( )
g y
( )

=

lim
y
0
→

f y
'( )
g y
'( )

=

lim
y
0
→

1
−

2
−

−
−

y
y

=

lim
y
0
→

y

=

0

 Notice that the two terms in log  (LS)   above are zero for each  i , thus the deviance only
depends on   log(LM)  . As such  the deviance does not provide an assessment of the

 8.2  Binary Logistic Regression

281

goodness-of-fit  of  model  (M)  when  all  the  m   i     are  equal  to  one .  Furthermore,  the
distribution of the deviance is not   c2  , even in any approximate sense.

 However,  even when all the m   i    are equal to one, the distribution of the difference

in deviances is approximately    c2  .

  8.2.2  Residuals for Binary Data

 Figure  8.6  shows plots of standardized Pearson residuals and standardized deviance
residuals against the predictor variable, Food Rating for model (8.1) based on the
binary data in Table  8.4 .

 Both plots in Figure  8.6  produce very similar highly nonrandom patterns. In each
plot the standardized residuals fall on two smooth curves, the one for which all the
standardized residuals are positive corresponds to the cases for which  y   i   equals one,
while the one for which all the standardized residuals are negative corresponds to the
cases for which  y   i   equals zero. Such a phenomenon can exist irrespective of whether
the fitted model is valid or not.  In summary, residual plots are problematic when the
data are binary . Thus, we need to find another method other than residual plots to
check the validity of logistic regression models based on binary data.

 In the current example with just one predictor we can aggregate the binary data
in Table  8.4  across values of the food rating to produce the data in Table  8.1 . Most
of the values of  m   i   are somewhat greater than 1 and so in this situation, residual
plots  are  interpretable  in  the  usual  manner.  Unfortunately,  however,  aggregating
binary data does not work well when there are a number of predictor variables.

i

l

i

s
a
u
d
s
e
R
e
c
n
a
v
e
D
d
e
z
d
r
a
d
n
a
S

t

i

4

2

0

−2

−4

l

i

s
a
u
d
s
e
R
n
o
s
r
a
e
P
d
e
z
d
r
a
d
n
a
S

t

i

4

2

0

−2

−4

16

20

24

28

16

20

24

28

Food Rating

Food Rating

  Figure 8.6

  Plots of standardized residuals for the binary data in Table 8.4

282

8  Logistic Regression

)
s
e
Y
=
1

,
o
N
=
0
(

i

?
e
d
u
G
n

i
l

i

e
h
c
M
n
I

1.0

0.8

0.6

0.4

0.2

0.0

16

18

20

22

24

26

28

Food Rating

  Figure 8.7

  Plot of  y   i   versus food rating with the logistic and loess fits added

 Figure  8.7  shows a plot of  y   i   against  x  1 , Food Rating. The points in this figure
have been jittered in both the vertical and horizontal directions to avoid over-plot-
ting. Figure  8.7  also includes the logistic fit for model (8.1) and as a solid curve and
the loess fit (with    a = 2/3)  . The two fits agree reasonably (except possibly at the
bottom) indicating that model (8.1) is an adequate model for the data.

 We  shall  return  to  model  checking  plots  with  nonparametric  fits  later.  In  the

meantime, we shall discuss transforming predictor variables.

  8.2.3

 Transforming Predictors in Logistic Regression
for Binary Data

 In this section we consider the circumstances under which the logistic regression
model is appropriate for binary data and when it is necessary to transform predictor
variables. The material in this section is based on Kay and Little (1987) and Cook
and Weisberg (1999b , pp. 499–501).

 Suppose that  Y  is a binary random variable (i.e., takes values 0 and 1) and that

 X  is a single predictor variable. Then

q

x
( )

=

(

=

E Y X x
|
P Y
(

1
= ×
P Y
(

=

=
1 |

=

)
X x
1 |
=
X x
)
=

) 0
+ ×

P Y
(

=

0 |

X x
=

)

 8.2  Binary Logistic Regression

283

 First suppose that  X  is a discrete random variable (e.g., a dummy variable), then

q
−

x
( )
x
( )
q

1

=

=

=

=
=

1 |
0 |

P Y
(
P Y
(
P Y
(
= ∩ =
P Y
(
= ∩ =
P X x Y
|
(
=
=
P X x Y
|
(
=
=

X x
)
=
X x
)
=
X x
)
X x
)
P Y
(
1)
P Y
(
0)

1
0

=
=

1)
0)

 Taking logs of both sides of this last equation gives

log

⎛
⎜
⎝

1

q
−

x
( )
x
( )
q

⎞
⎟
⎠

=

log

⎛
⎜
⎝

P Y
(
P Y
(

=
=

1)
0)

⎞
⎟
⎠

+

log

⎛
⎜
⎝

P X x Y
=
P X x Y
=

(
(

|
|

=
=

1)
0)

⎞
⎟
⎠

 when   X   is  a  discrete  random  variable.  Similarly  when   X   is  a  continuous  random
variable, it can be shown that

log

⎛
⎜
⎝

1

q
−

x
( )
x
( )
q

⎞
⎟
⎠

=

log

⎛
⎜
⎝

P Y
(
P Y
(

=
=

1)
0)

⎞
⎟
⎠

+

log

⎛
⎜
⎝

f x Y
|
(
f x Y
|
(

=
=

1)
0)

⎞
⎟
⎠

 where  f ( x | Y  =  j ),  j  = 0,1, is the conditional density function of the predictor given
the value of the response.

 Thus,  the  log  odds  equal  the  sum  of  two  terms,  the  first  of  which  does  not
depend  on   X   and  thus  can  be  ignored  when  discussing  transformations  of   X .  We
next look at the second term for a specific density.

 Suppose that  f  ( x | Y  =  j ),  j  = 0,1, is a normal density, with mean   mj   and variance
2 ,
js
j

   Then

0,1.

=

f x y
(
|

=

j

)

=

1

s

j

2
p

exp

(
x

−

)2

−

m

j

2
s

2
j

⎧
⎪
⎨
⎪
⎩

,

⎫
⎪
⎬
⎪
⎭

j

=

0,1

 So that,

log

⎛
⎜
⎝

f x Y
(
|
f x Y
(
|

−

(
x

−
2
s

m
1
2
1

2

)

(
x

+

−
2
s

m
0
2
0

=
=
)2

1)
0)

⎞
⎟
⎠

⎤
⎥
⎥
⎦

2
m
0
2
s

2
0

−

2
m
1
2
s

2
1

⎞
⎟
⎠

+

⎛
⎜
⎝

m
1
2
s
1

−

m
s

0
2
0

⎞
⎟
⎠

x

+

1
2

⎛
⎜
⎝

1
2
s
0

−

1
2
s
1

⎞
⎟
⎠

2

x

=

log

=

log

⎛
⎜
⎝

⎛
⎜
⎝

s
s

0

1

s
s

0

1

⎞
⎟
⎠

⎞
⎟
⎠

+

+

⎡
⎢
⎢
⎣

⎛
⎜
⎝

284

 Thus,

 where

8  Logistic Regression

log

⎛
⎜
⎝

1

q
−

x
( )
x
( )
q

⎞
⎟
⎠

=

log

⎛
⎜
⎝

P Y
(
P Y
(

=
=

1)
0)

⎞
⎟
⎠

+

log

⎛
⎜
⎝

f x Y
|
(
f x Y
|
(

=
=

1)
0)

⎞
⎟
⎠

=

b

0

+

b
1

x

+

b

2

2

x

b

0

=

log

⎛
⎜
⎝

P Y
(
P Y
(

=
=

1)
0)

⎞
⎟
⎠

+

log

⎛
⎜
⎝

s
s

0

1

⎞
⎟
⎠

+

⎛
⎜
⎝

2
m
0
2
s

2
0

−

2
m
1
2
s

2
1

⎞
⎟
⎠

,

b
1

=

⎛
⎜
⎝

m
1
2
s
1

−

m
s

0
2
0

⎞
⎟
⎠

,

b

2

=

1
2

⎛
⎜
⎝

1
2
s
0

−

1
2
s
1

⎞
⎟
⎠

 Thus,  when the predictor variable X is normally distributed with a different vari-
ance for the two values of Y, the log odds are a quadratic function of x.

 When
s

2
1

=

s

2
0

2

=

s

  , the log odds simplifies to

 where

log

⎛
⎜
⎝

1

q
−

x
( )
x
( )
q

⎞
⎟
⎠

=

b

0

+

b
1

x

b
1

m

0

⎛
= ⎜
⎝

m
−
1
2
s

⎞
⎟
⎠

 Thus,  when the predictor variable X is normally distributed with the same vari-
ance for the two values of Y, the log odds are a linear function of x, with the slope,
   b1    equal to the difference in the mean of X across the two groups divided by the
common variance of X in each group.

 The last result can be extended to the case where we have  p predictor variables
which have multivariate normal conditional distributions. If the variance–covari-
ance matrix of the predictors differs across the two groups then the log odds are a
function of

≠
 If the densities  f ( x | Y  =  j ),  j  = 0,1 are skewed the log odds can depend on both  x
and log( x ). It does, for example, for the gamma distribution. Cook and Weisberg
(1999b , p. 501) give the following advice:

x x and x x i j
i

1,...,

p i
;

( ,

j
)

=

2
i

,

i

j

 When conducting a binary regression with a skewed predictor, it is often easiest to assess the
need for  x  and log( x ) by including them both in the model so that their relative contributions
can be assessed directly.

 Alternatively, if the skewed predictor can be transformed to have a normal distri-
bution conditional on  Y , then just the transformed version of  X  should be included
in the logistic regression model.

 8.2  Binary Logistic Regression

285

 Next,  suppose  that  the  conditional  distribution  of   X   is  Poisson  with  mean    lj  .

Then

P X x y
=

(

|

 So that,

log

⎛
⎜
⎝

P X x Y
=
P X x Y
=

(
(

|
|

=

j

)

=

x

j

e

j

l l−
x
!

,

j

=

0,1

=
=

1)
0)

⎞
⎟
⎠

=

x

log

⎛
⎜
⎝

l
1
l

0

⎞
⎟
⎠

+

(
l

0

−

l
1

)

 Thus,

 where

log

⎛
⎜
⎝

1

q
−

x
( )
x
( )
q

⎞
⎟
⎠

=

log

⎛
⎜
⎝

P Y
(
P Y
(

=
=

1)
0)

⎞
⎟
⎠

+

log

⎛
⎜
⎝

P X x Y
=
P X x Y
=

(
(

|
|

=
=

1)
0)

⎞
⎟
⎠

=

b

0

+

b
1

x

b

0

=

log

⎛
⎜
⎝

P Y
(
P Y
(

=
=

1)
0)

⎞
⎟
⎠

+

(
l

0

−

l
1

)
,

b
1

=

log

⎛
⎜
⎝

l
1
l

0

⎞
⎟
⎠

 Thus,  when the predictor variable X has a Poisson distribution, the log odds are
a linear function of x. When X is a dummy variable, it can be shown that the log
odds are also a linear function of x .

 Figure   8.8   shows  separate  box  plots  of  each  of  the  four  potential  predictors,
namely,  Food  Rating,  Décor  Rating,  Service  Rating  and  Price  for  French  restau-
rants  included  in  the  Michelin  Guide  and  those  that  are  not.  It  is  evident  from
Figure  8.8  that while the distributions of the first three predictors are reasonably
symmetric  the  distribution  of  Price  is  quite  skewed.  Thus,  we  shall  include  both
Price and log(Price) as potential predictors in our logistic regression model.

 Examining Figure  8.8  further, we see that for each predictor the distribution of
results for French restaurants included in the Michelin Guide has a larger mean than
the  distribution  of  results  for  French  restaurants  not  included  in  the  Michelin
Guide.
q
 Let

   denote the probability that a French restau-

q=x
( )

x x x x
,
1
2
rant with the following predictor variables:

, log(

))

x

(

,

,

4

4

3

  x  1   =  Food  rating,   x  2   =  Décor  rating,   x  3   =  Service  rating,   x  4   =  Price,  log( x  4 )  =
log(Price). We next consider the following logistic regression model with these four
predictor variables:

q

x
( )

=

1 exp

+

(
−

{
b

0

+

b

x
1 1

+

b

x
2 2

+

b

x
3 3

+

b

x

4

4

+

b

5

log(

x

)
}
)

4

1

 (8.2)

286

g
n

i
t

a
R
d
o
o
F

28

24

20

16

8  Logistic Regression

g
n

i
t

a
R

r
o
c
e
D

25

20

15

0

1

0

1

In Michelin Guide? (0 = No, 1 = Yes)

In Michelin Guide? (0 = No, 1 = Yes)

g
n
i
t
a
R
e
c
v
r
e
S

i

25

20

15

200

100

50

e
c
i
r

P

0

1

0

1

In Michelin Guide? (0 = No, 1 = Yes)

In Michelin Guide? (0 = No, 1 = Yes)

  Figure 8.8

  Box plots of the four predictor variables

 Given that residual plots are difficult to interpret for binary data, we shall exam-

ine marginal model plots instead.

  8.2.4  Marginal Model Plots for Binary Data

 Consider the situation when there are just two predictors  x  1  and  x  2 . We wish to visu-
ally assess whether

q

x
( )

=

1

1 exp

+

(
−

{
b

0

+

b

x
1 1

+

b

x
2 2

)
}

  (M1)

q

=

E Y
(

X x    adequately. Again we wish to com-
x
 models     ( )
=
pare  the  fit  from  (M1)  with  a  fit  from  a  nonparametric  regression  model  (F1)
where

X x
=

P Y
(

1 |

=

=

)

)

|

q

=x
( )

f x x
(
1

,

2

)

 (F1)

 8.2  Binary Logistic Regression

287

 Under model (F1), we can estimate

the plot of  Y  against  x  1 . We want to check that the estimate of    F1
E (
to the estimate of    M1
E (

Y x
|
1

  .

)

 Under model (M1), Cook and Weisberg (1997) utilized the following result:

E (
1F

|

)

Y x   by adding a nonparametric fit to
Y x    is close

)

|

1

1

   M
E (

Y x
|
1

1

) E E (
= ⎣

M⎡

1

Y x
|

) |

x
1

⎤
⎦

 (8.3)

 The result follows from the well-known general result re conditional expectations.

 Under model (M1), we can estimate

E (
M
1

Y x
|

)

=

q

x
( )

=

1

1 exp

+

(
−

{
b

0

+

b

x
1 1

+

b

x
2 2

)
}

 by the fitted values

ˆ
Y

ˆ
q

=

x
( )

=

1

1 exp

+

(

−

{
ˆ
b

0

ˆ
x
b
1 1

ˆ
b

x
2 2

+

+

.

)
}

 Utilizing (8.3) we can therefore estimate

E (
   M

1

Y x
|
1

) E E (
= ⎣

M⎡

1

Y x
|

) |

x
1

⎤
⎦

 by estimating

M⎡
E E (
⎣

1

Y x
|

) |

x
1

⎤
⎦

ˆE
  with an estimate of    ⎡
|Y x
⎣

⎤
⎦1

   .

 In  summary,  we  wish  to  compare  estimates  under  models  (F1)  and  (M1)  by
E(
comparing  nonparametric  estimates  of
  .  If  the  two  non-
parametric estimates agree then we conclude that  x  1  is modelled correctly by model
(M1). If  not  then we conclude that  x  1  is  not  modelled correctly by model (M1).

ˆE
    and     ⎡
|Y x
⎣

Y x
|
1

 The left-hand plot in Figure  8.9  is a plot of  Y  and against  x  1 , Food Rating with the
  included. The right-hand plot in Figure  8.9  is a plot of   Ŷ   from

loess estimate of
ˆE
model (8.2) against  x  1 , Food Rating with the loess estimate of    ⎡
|Y x
⎣

   included.

Y x
|
1

⎤
⎦1

⎤
⎦1

E(

)

)

 In  general,  it  is  difficult  to  compare  curves  in  different  plots.  Thus,  following
Cook and Weisberg (1997) we shall from this point on include both nonparametric
curves on the plot of  Y  against  x  1 . The plot of  Y  against  x  1  with the loess fit for   Ŷ
against  x  1  and the loess fit for Y against  x  1  both marked on it is called a  marginal
model plot  for  Y  and  x  1 .

 Figure  8.10  contains  marginal model plots  for  Y  and each predictor in model
(8.2). The solid curve is the loess estimate of   E(Y| Predictor)   while the dashed curve
is the loess estimate of   E[Ŷ|Predictor]   where the fitted values are from model (8.2).
The bottom right-hand plot uses these fitted values, that is,

ˆ
   0
b

ˆ
x
b
1 1

ˆ
b

+

+

x
2 2

+

ˆ
b

x
3 3

+

ˆ
b

x

4

4

+

ˆ log(
b

5

x

4

)

as the horizontal axis.

)
s
e
Y
=
1
,
o
N
=
0
(

i

?
e
d
u
G
n

i
l

i

e
h
c
M
n
I

,

Y

1.0

0.8

0.6

0.4

0.2

0.0

Y^

1.0

0.8

0.6

0.4

0.2

0.0

16

20

24

28

16

20

24

28

Food Rating, x1

Food Rating, x1

  Figure 8.9

  Plots of  Y  and against Yˆ   x  1 , Food Rating

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

16

20

24

28

Food

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

15

20
Decor

25

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

15

20
Service

25

50

100 150 200

2.5

3.5

4.5

−6

−2 0

2

4

Price

log(Price)

Linear Predictor

  Figure 8.10

  Marginal model plots for model (8.2)

 8.2  Binary Logistic Regression

289

In Michelin Guide?
No
Yes

g
n
i
t
a
R
e
c
v
r
e
S

i

25

20

15

15

20

25

Decor Rating

  Figure 8.11

  Plots of Décor and Service ratings with different slopes for each value of  y

 There  is  reasonable  agreement  between  the  two  fits  in  each  of  the  marginal
model plots in Figure 8.10 except for the plots involving Décor and Service and to
a lesser extent Price. At this point, one possible approach is to consider adding extra
predictor terms involving Décor and Service to model (8.2).

 Recall that when we have  p predictor variables which have multivariate normal
conditional distributions, if the variance–covariance matrix of the predictors dif-
fers across the two groups then the log odds are a function of    xi, xi
2 and xi xj (i,j =
1,…, p; i ¹
 j)  . A quadratic term in  x   i   is needed as a predictor if the variance of  x   i
differs across the two values of  y . The product term   xi xj   is needed as a predictor if
the covariance of  x   i   and  x   j   differs across the two values of  y  (i.e., if the regression
of  x   i   on  x   j   (or vice versa) has a different slope for the two values of  y .)

 Next we investigate the covariances between the predictors Décor and Service.
Figure  8.11  contains a plot of Décor and Service with different estimated slopes for
each value of  y . It is evident from Figure  8.11   that the slopes in this plot differ. In
view of this we shall expand model (8.2) to include a two-way interaction terms
between  x  2  = Décor rating and  x  3  = Service rating. Thus we shall consider the fol-
lowing model:

q

x
( )

=

1 exp

+

1
(
−

)
{ }
x
b¢

 where

=x
¢

(
x x x x
,
1
2

,

,

3

, log(

x

),

x x
2 3

4

4

)
¢

   and

b¢

=

(
)
,
b b b b b b ¢

,

,

,

,

4

2

5

3

6

1

(8.4)

  .

 Figure  8.12  contains  marginal model plots  for  Y  and the first five predictors in
model  (8.4).  The  solid  curve  is  the  loess  estimate  of    E(Y | predictor)    while  the

290

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

y

1.0

0.8

0.6

0.4

0.2

0.0

16

20

24

28

Food

15

20
Decor

25

y

1.0

0.8

0.6

0.4

0.2

0.0

8  Logistic Regression

15

20
Service

25

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

50

100 150 200

2.5

3.5

4.5

−8

−4

0 2 4

Price

log(Price)

Linear Predictor

  Figure 8.12

  Marginal model plots for model (8.4)

dashed  curve  is  the  loess  estimate  of    E[ Yˆ | predictor]  .  The  bottom  right-hand  plot
uses   bˆ   ¢ x as the horizontal axis.

 Comparing the plots in Figure  8.12  with those in Figure  8.10 , we see that there
is better agreement between the two sets of fits in Figure.  8.12 , especially for the
variables, Décor and Service. There is still somewhat of an issue with the marginal
model plot for Price, especially at high values.

  Regression output from R

 Analysis of Deviance Table
 Model 1:  y ~  Food +  Decor  +  Service +  Price  +  log(Price)
 Model 2:  y ~  Food +  Decor  +  Service +  Price  +  log(Price)

 + Service:Decor

   Resid. Df
158
 1
157
 2

Resid. Dev
136.431
129.820

Df

Deviance

P(>|Chi|)

1

6.611

0.010

 8.2  Binary Logistic Regression

291

i

i

l

s
a
u
d
s
e
R
e
c
n
a
v
e
D
d
e
z
d
r
a
d
n
a
t
S

i

3

2

1

0

−1

−2

−3

Alain Ducasse

per se

Arabelle

0.0

0.2

0.4

0.6

Leverage Values

  Figure 8.13

  A plot of leverage against standardized deviance residuals for (8.4)

 Recall that the difference in deviance can be used to compare nested models. For
example,  we  can  compare  models  (8.2)  and  (8.4)  in  this  way.  The  output  above
from R shows that the addition of the interaction term for Décor and Service has
significantly reduced the deviance ( p -value = 0.010).

 We next examine leverage values and standardized deviance residuals for model
(8.4) (see Figure  8.13 ). The leverage values are obtained from the weighted least
squares  approximation  to  the  maximum  likelihood  estimates.  According  to
Pregibon (1981, p. 173) the average leverage is equal to   (p + 1)/n = 7/164 = 0.0427  .
We shall use the usual cut-off of twice the average, which in this case equals 0.085.
The three points with the largest leverage values evident in Figure  8.13  correspond
to the restaurants Arabelle, Alain Ducasse and per se. The price of dinner at each
of these restaurants is $71, $179 and $201, respectively. Looking back at the box
plots of Price in Figure  8.8  we see that these last two values are the highest values
of Price. Thus, for at least two of these points their high leverage values are mainly
due to their extreme values of Price.

 We next look at the output from R for model (8.4).

  Output from R

 Call:
 glm(formula = y ~ Food + Decor + Service + Price + log(Price) +
Service:Decor, family = binomial(), data = MichelinNY)

292

 Coefficients:

8  Logistic Regression

 (Intercept)
 Food
 Decor
 Service
 Price
 log(Price)
 Decor:Service
 ---
 (Dispersion parameter for binomial family taken to be 1)

 Estimate  Std. Error  z value
-4.584
3.666
2.633
1.884
-1.688
3.396
-2.608

-70.85308
0.66996
1.29788
0.91971
-0.07456
10.96400
-0.06551

15.45786
0.18276
0.49299
0.48829
0.04416
3.22845
0.02512

Pr(>|z|)
4.57e-06  ***
0.000247  ***
0.008471  **
0.059632  .
0.091347  .
0.000684  ***
0.009119  **

      Null deviance: 225.79 on 163 degrees of freedom
 Residual deviance: 129.82 on 157 degrees of freedom
 AIC: 143.82
 Number of Fisher Scoring iterations: 6

 Given  that  the  variable  Price  is  only  marginally  statistically  significant  (Wald
 p -value = 0.091), we shall momentarily remove it from the model. Thus, we shall
consider the following model:

 where

=′x

 against

q

x
( )

=

1 exp

+

1
)
(
{ }
x
b¢
−
b b b b b ′
(
)
,

,

,

,

3

7

2

5

1

(8.5)

  . We next test

(
x x x
1
2
3

,

,

, log(

x

),

4

x x ′
)

2 3

  ,

b¢

=

  H0 : b4 = 0 (i.e., model (8.5))

  HA : b4

¹ 0 (i.e., model (8.4))

 using the difference in deviance between the two models. The output from R for
this test is given next.

  Output from R

 Analysis of Deviance Table
 Model 1: y ~ Food + Decor + Service + log(Price)
                        + Service:Decor
 Model 2: y ~ Food + Decor + Service + Price + log(Price)
                       + Service:Decor
   Resid. Df  Resid. Dev
131.229
 1
129.820
 2

Deviance  P(>|Chi|)

158
157

1.409

0.235

Df

1

 The  p -value from the difference in deviances ( p -value = 0.235) is higher than the
corresponding Wald  p -value for the coefficient of Price ( p -value = 0.091). As fore-
shadowed  earlier,  this  example  illustrates  that  Wald  tests  and  tests  based  on  the
difference in deviances can result in quite different  p -values. Additionally, in view of
the leverage problems associated with the variable Price (which may lead to under
estimation of the standard error of its regression coefficient), it seems that model (8.5)
is to be preferred over model (8.4). The output from R for model (8.5) is given next.

 8.2  Binary Logistic Regression

293

  Output from R

 Call:
 glm(formula = y ~ Food + Decor + Service + log(Price)
 + Service:Decor, family = binomial(), data = MichelinNY)
 Coefficients:

 (Intercept)
 Food
 Decor
 Service
 log(Price)
 Decor:Service
 (Dispersion parameter for binomial family taken to be 1)

 Estimate  Std. Error  z value
-4.523
3.606
3.145
2.393
4.031
-3.110

-63.76436
0.64274
1.50597
1.12633
7.29827
-0.07613

14.09848
0.17825
0.47883
0.47068
1.81062
0.02448

Pr(>|z|)
6.10e-06  ***
0.000311  ***
0.001660  **
0.016711  *
5.56e-05  ***
0.001873  **

      Null deviance: 225.79 on 163 degrees of freedom
 Residual deviance: 131.23 on 158 degrees of freedom
 AIC: 143.23
 Number of Fisher Scoring iterations: 6

 All of the regression coefficients in model (8.5) are highly significant at the 5%
level.  Interestingly,  the  coefficients  of  the  predictors  Food,  Service,  Décor  and
log(Price) are positive implying that (all other things equal) higher Food, Service
and Décor ratings and higher log(Price) in the Zagat guide increases the chance of
a French restaurant being included in the Michelin Guide, as one would expect. The
coefficient of the interaction term between Service and Décor is negative moderat-
ing the main effects of Service and Décor.

 We  next  check  the  validity  of  model  (8.5)  using  marginal  model  plots  (see
Figure   8.14 ).  These  marginal  model  plots  show  reasonable  agreement  across  the
two sets of fits indicating that (8.5) is a valid model.

 As a final validity check we examine leverage values and standardized deviance
residuals for model (8.5) (see Figure  8.15 ). We shall again use the usual cut-off of
0.073,  equal  to  twice  the  average  leverage  value.  A  number  of  points  are  high-
lighted in Figure  8.15  that are worthy of further investigation. After that removing
the variable Price, the expensive restaurants Alain Ducasse and per se are no longer
points of high leverage.

 Table  8.5  provides a list of the points highlighted as outliers in Figure  8.14 . As
one would expect, the restaurants either have a low estimated probability of being
included in the Michelin Guide and are actually included (i.e.,  y  = 1) or have a high
estimated probability of being included in the Michelin Guide and are not included
(i.e.,  y  = 0). The former group of “lucky” restaurants consists of

  Gavroche, Odeon, Paradou and Park Terrace Bistro

 The latter group of “unlucky” restaurants consists of
  Atelier, Café du Soleil and Terrace in the Sky .
 Finally, we shall examine just one of the restaurants listed in Table  8.5 , namely,
Atelier. Zagat’s 2006 review of Atelier (Gathje and Diuguid, 2005) reads as follows:

 “Dignified”  dining  “for  adults”  is  the  métier  at  the  Ritz-Carlton  Central  Park’s  “plush”
New French, although the food rating is in question following the departure of chef Alain
Allegretti; offering a “stately environment” where the “charming” servers “have ESP”, it
caters to a necessarily well-heeled clientele.

8  Logistic Regression

y

1.0

0.8

0.6

0.4

0.2

0.0

15

25

20
Decor

15

25

20
Service

294

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

16

24

20
Food

28

y

y

1.0

0.8

0.6

0.4

0.2

0.0

1.0

0.8

0.6

0.4

0.2

0.0

2.5

3.5

4.5

log(Price)

−5

0

5

Linear Predictor

  Figure 8.14

  Marginal model plots for model (8.5)

 One plausible explanation for the exclusion of Atelier from the Michelin Guide
is  that  the  Michelin  inspectors  rated  Atelier  after  the  departure  of  chef  Alain
Allegretti. Interestingly, Atelier is listed as “Closed” in the 2007 Zagat Guide.

  8.3  Exercises

    1.     Chapter 6 of Bradbury (2007), a book on baseball, uses regression analysis to
compare the success of the 30 Major League Baseball teams. For example, the
author considers the relationship between     x   i  , market size (i.e., the population in
millions of the city associated with each team) and       Y   i  , the number of times team
 i  made the post-season playoffs in the  m   i  =10 seasons between 1995 and 2004.

 8.3  Exercises

295

l

i

i

s
a
u
d
s
e
R
e
c
n
a
v
e
D
d
e
z
d
r
a
d
n
a
t
S

i

3

2

1

0

−1

−2

−3

Park Terrace Bistro

Paradou

Odeon

Gavroche

Le Bilboquet

Arabelle

Terrace in the Sky

Café du Soleil

Atelier

0.0

0.1

0.2

0.3

Leverage Values

  Figure 8.15

  A plot of leverage against standardized deviance residuals for (8.5)

 Table 8.5

  “Lucky” and “unlucky” restaurants according to model (8.5)

 Estimated
probability

 0.971
 0.934
 0.125
 0.103
 0.081
 0.072
 0.922

  y

 0
 0
 1
 1
 1
 1
 0

 Case

 14
 37
 69
 133
 135
 138
 160

 Restaurant name

 Food

 Decor

 Service

 Price

 Atelier
 Café du Soleil
 Gavroche
 Odeon
 Paradou
 Park Terrace Bistro
 Terrace in the Sky

 27
 23
 19
 18
 19
 21
 23

 25
 23
 15
 17
 17
 20
 25

 27
 17
 17
 17
 18
 20
 21

 95
 44
 42
 42
 38
 33
 62

 The author found that “it is hard to find much correlation between market size
and … success in making the playoffs. The relationship … is quite weak.” The
data is plotted in Figure  8.16  and it can be found on the book web site in the file
playoffs.txt.  The  output  below  provides  the  analysis  implied  by  the  author’s
comments.
(a)     Describe in detail two major concerns that potentially threaten the validity

of the analysis implied by the author’s comments  .

(b)     Using an analysis which is appropriate for the data, show that there is very

strong evidence of a relationship between  Y  and  x           .

296

8  Logistic Regression

)
s
n
o
s
a
e
s

0
1
n
i
(

s
e
c
n
a
r
a
e
p
p
A

f
f
o

y
a
P

l

,

Y

10

8

6

4

2

0

5

10

15

x, Population (in millions)

  Figure 8.16

  A plot of  Y   i   against  x   i

  R output for Question 1:

 Call:
 lm(formula = PlayoffAppearances ~ Population)
 Coefficients:

 Estimate  Std. Error
0.7566
0.1083

1.7547
0.1684

 (Intercept)
 Population
 ---
 Signif. codes: 0 ‘ ’ 0.001 ‘ ’ 0.01 ‘ ’ 0.05 ‘.’ 0.1 ‘ ’ 1
 Residual standard error: 2.619 on 28 degrees of freedom
 Multiple R-squared: 0.07952, Adjusted R-squared: 0.04664
 F-statistic: 2.419 on 1 and 28 DF, p-value: 0.1311

0.0279 *
0.1311

t value
2.319
1.555

Pr(>|t|)

   2.     This question is based on one of the data sets discussed in an unpublished manu-
script  by  Powell,  T.  and  Sheather,  S.  (2008)  entitled  “ A  Theory  of  Extreme
Competition ”. According to Powell and Sheather:

 This paper develops a model of competitive performance when populations compete ….
We present a theoretical framework … and empirical tests in chess and … national pag-
eants.  The  findings  show  that  performance  in  these  domains  is  substantially  predictable
from a few observable features of population and economic geography.

 In this question we shall consider data from the Miss America pageant, which
was  founded  in  Atlantic  City  in  1921,  and  81  pageants  have  been  conducted
through 2008. In particular we will develop a logistic regression model for the

 8.3  Exercises

297

proportion  of  top  ten  finalists  for  each  US  state  for  the  years  2000  to  2008.
According to Powell and Sheather:

 Eligibility for the Miss America pageant is limited to never-married female U.S. citizens
between  the  ages  of  17  and  24.  To  measure  population  size,  we  obtained  data  for  this
demographic segment for each U.S. state and the District of Columbia from the 2000 U.S.
Census.  As  a  measure  of  participation  inducements,  we  obtained  data  on  the  number  of
qualifying  pageants  conducted  in  each  state,  on  the  assumption  that  qualifying  pageants
reflect state-level infrastructure and resource commitments. As a geographic measure, we
used the latitude and longitude of each state capital and Washington DC, on the assumption
that  state  locations  convey  information  about  the  regional  cultural  geography  of  beauty
pageants (in particular, beauty pageants are widely believed to receive greater cultural sup-
port south of the Mason-Dixon line). To measure search efficacy, we obtained data on the
total land and water area (in square miles) for each state and the District of Columbia, on
the assumption that search is more difficult over larger geographic areas.

 They  consider  the  following  outcome  variable  and  potential  predictor
variables:

    Y   =  Number of times each US state (and the District of Columbia) has produced a

top ten finalist for the years 2000–2008

   x  1  = log(population size)
   x  2  =  Log(average  number  of  contestants  in  each  state’s  final  qualifying  pageant

each year between 2002 and 2007)

   x  3  = Log(geographic area of each state and the District of Columbia)
   x  4  = Latitude of each state capitol and
   x  5  = Longitude of each state capitol, and

 The data can be found on the course web site in the file .  MissAmericato2008.txt.

   (a)  Develop a logistic regression model that predicts  y  from  x  1 ,  x  2 ,  x  3 ,  x  4  and  x  5
such that each of the predictors is significant at least at the 5% level. Use
marginal  model  plots  to  check  the  validity  of  the  full  model  and  the  final
model (if it is different from the full model).

  (b)  Identify any leverage points in the final model developed in (a). Decide if

they are “bad” leverage points.

  (c)  Interpret the regression coefficients of the final model developed in (a).

    3.     Data  on  102  male  and  100  female  athletes  were  collected  at  the  Australian
Institute of Sport. The data are available on the book web site in the file ais.txt.
Develop a logistic regression model for gender ( y  = 1 corresponds to female) or
( y  = 0 corresponds to male) based on the following predictors (which is a subset
of those available):

   RCC, read cell count
  WCC, white cell count
  BMI, body mass index

 (Hint: Use marginal model plots to aid model development.)

    4.     A number of authors have analyzed the following data on heart disease. Of key
interest is the development of a model to determine whether a particular patient
has heart disease (i.e., Heart Disease = 1), based on the following predictors:

298

8  Logistic Regression

    x  1  = Systolic blood pressure
   x  2  = A measure of cholesterol
   x  3  = A dummy variable (= 1 for patients with a family history)
   x  4  = A measure of obesity and
   x  5  = Age.
 We first consider the following logistic regression model with these five predic-
tor variables:

q

x
( )

=

1 exp

+

(
−

{
b

0

+

b

x
1 1

+

b

1
x
2 2

+

b

x
3 3

+

b

x

4

4

+

b

x
5 5

)
}

(8.6)

 where

q

x
( )

=

E Y X x
|

(

=

)

=

P Y
(

=

1 |

X x
=

)

 Output for model (8.6) is given below along with associated plots (Figures 8.17
and 8.18). The data (HeartDiseare, CSV) can be found on the book web site.

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

100 120 140 160 180 200 220
x1

2

4

6

10

12 14

8
x2

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

15

20

25

30
x4

35

40

45

20

30

50

60

40
x5

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

−4

−3

−2
0
−1
Linear Predictor

1

  Figure 8.17

  Marginal model plots for model (8.6)

 8.3  Exercises

299

y
t
i
s
n
e
D

0.020

0.000

y
t
i
s
n
e
D

0.06

0.00

Gaussian Kernel Density Estimate

Heart Disease?

No
Yes

100

120

140

160

180

200

220

x1

Gaussian Kernel Density Estimate

Heart Disease?

No
Yes

20

30

x4

40

50

  Figure 8.18

  Kernel density estimates of  x   1   and  x   4

(a)     Is model (8.6) a valid model for the data? Give reasons to support your answer.
(b)     What  extra  predictor  term  or  terms  would  you  recommend  be  added  to
model (8.6) in order to improve it. Please give reasons to support each extra
term.

(c)     Following  your  advice  in  (b),  extra  predictor  terms  were  added  to  model
(8.6)  to  form  model  (8.7).  We  shall  denote  these  extra  predictors  as
f x
(
   1
   (so as not to give away the answer to (b)). Marginal model
1
plots  from  model  (8.7)  are  shown  in  Figure  8.19.  Is  model  (8.7)  a  valid
model for the data? Give reasons to support your answer.

) and

f x
(
2

)

4

(d)     Interpret the estimated coefficient of  x  3  in model (8.7).

  Output from R for model (8.6)

 Call:
 glm(formula  =  HeartDisease  ~  x1  +  x2  +  x3  +  x4  +  x5,  family  =
binomial(), data = HeartDisease)
 Coefficients:

 (Intercept) -4.313426
0.006435
 x1
0.186163
 x2
0.903863
 x3
-0.035640
 x4
 x5
0.052780
 (Dispersion parameter for binomial family taken to be 1)

 Estimate  Std. Error
0.943928
0.005503
0.056325
0.221009
0.028833
0.009512

z value
-4.570
1.169
3.305
4.090
-1.236
5.549

4.32e-05
0.21643

Pr(>|z|)
4.89e-06  ***

0.24223
0.00095  ***

2.88e-08  ***

      Null deviance: 596.11 on 461 degrees of freedom
 Residual deviance: 493.62 on 456 degrees of freedom
 AIC: 505.62
 Number of Fisher Scoring iterations: 4

300

8  Logistic Regression

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

100

140

180

220

x1

4.6 4.8 5.0 5.2 5.4
f1x1

2

6

10

14

x2

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

15

25

35

45

x4

2.8

3.6

3.2
f2x4

20 30 40 50 60
x5

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

e
s
a
e
s
D

i

t
r
a
e
H

0.8

0.4

0.0

−3

−1 0 1 2

Linear Predictor

  Figure 8.19

  Marginal model plots for model (8.7)

  Output from R for model (8.7)

 Call:
 glm(formula  =  HeartDisease  ~  x1  +  f1x1  +  x2  +  x3  +  x4  +  f2x4  +
x5, family = binomial(), data = HeartDisease)
 Coefficients:

 (Intercept)
 x1
 f1x1
 x2
 x3
 x4
 f2x4
 x5
 (Dispersion parameter for binomial family taken to be 1)

Std. Error  z value
2.223
1.840
-1.726
3.518
4.196
1.849
-2.005
5.800

 Estimate
75.204768
0.096894
-13.426632
0.201285
0.941056
0.384608
-11.443233
0.056111

33.830217
0.052664
7.778559
0.057220
0.224274
0.208016
5.706058
0.009675

Pr(>|z|)
0.026215  *
0.065792  .
0.084328  .
0.000435  ***
2.72e-05  ***
0.064467  .
0.044915  *
6.64e-09  ***

 8.3  Exercises

301

      Null deviance: 596.11 on 461 degrees of freedom
 Residual deviance: 486.74 on 454 degrees of freedom
 AIC: 502.74
 Number of Fisher Scoring iterations: 4

    5.     This difficult realistic problem is based on a case study from Shmueli, Patel and
Bruce (2007, pp. 262–264). The aim of the case is to develop a logistic regres-
sion model which will improve the cost effectiveness of the direct marketing
campaign of a national veterans’ organization. The response rate to recent mar-
keting campaigns was such that 5.1% of those contacted made a donation to the
organization.  Weighted  sampling  of  recent  campaigns  was  used  to  produce  a
data set with 3,120 records consisting of 50% donors and 50% nondonors. The
data  are  available  after  free  registration  at  the  author’s  book  web  site  http://
www.dataminingbook.com/.  Randomly  split  the  data  file  into  a  training  file
(FundTrain.csv)  and  a  test  file  (FundTest.csv)  both  with  1,560  records.  The
outcome variable is
   TARGET_B which = 1 for donors and 0 otherwise.
 The following predictor variables are available

   HOMEOWNER = 1 for homeowners and 0 otherwise
  NUMCHLD = number of children
  INCOME = household income rating on a seven-point scale
  GENDER = 1 for male and 0 for female
  WEALTH = wealth rating on a ten-point scale (0 to 9)
 (Each wealth rating has a different meaning in each state.)
   HV = Average Home Value in potential donor’s neighborhood
 (in hundreds of dollars)
   ICmed = Median Family Income in potential donor’s neighborhood
 (in hundreds of dollars)
   ICavg = Average Family Income in potential donor’s neighborhood
 (in hundreds of dollars)
   IC15 = % earning less than $15 K in potential donor’s neighborhood
  NUMPROM = Lifetime number of promotions received to date
  RAMNTALL = Dollar amount of lifetime gifts to date
  LASTGIFT = Dollar amount of most recent gift
  TOTALMONTHS = Number of months from last donation to the      last time the
case was updated
   TIMELAG = Number of months between first and second gift
  AVGGIFT = Average dollar amount of gifts to date.
  ZIP = Code for potential donor’s zip code (2 = 20000 – 39999,
 3 = 40000 - 59999, 4 = 60000 - 79999 & 5 = 8000 - 99999)

 PART 1: Using the training data

   (a)    Fit a logistic regression model using each of the predictor variables except ZIP.

At this stage do not transform any of the predictors.

302

8  Logistic Regression

   (b)    Use  marginal  model  plots  to  show  that  the  model  in  part  (a)  is  not  a  valid

model.

   (c)    Decide which predictor variables may benefit from being transformed and find

a reasonable transformation for each of these variables.

   (d)    Since the wealth ratings have a different meaning within each state, create one
or  more  predictors  which  represents  the  interaction  between  ZIP  and
WEALTH.  Investigate  the  relationship  between  TARGET_B  and  these
predictor(s).

   (e)    Fit a logistic regression model to the training data utilizing what you discovered

in (c) and (d).

   (f)    Use  marginal  model  plots  to  decide  whether  the  model  in  part  (e)  is  a  valid

model or not.

   (g)    Consider adding further interaction terms to your model in (e). Establish a final

model for TARGET_B.

 PART 2: Using the test data

   (a)    Use  the  logistic  regression  model  you  have  developed  in  part  1  to  predict

whether a person will make a donation or not.

   (b)    Compare  your  predictions  in  part  (a)  with  the  actual  results  in  TARGET_B.

Quantify how well your model worked.

    6.     Dr. Hans Riedwyl, a statistician at the University of Berne was asked by local
authorities to analyze data on Swiss Bank notes. In particular, the statistician
was  asked  to  develop  a  model  to  predict  whether  a  particular  banknote  is
counterfeit ( y  = 0) or genuine ( y  = 1) based on the following physical meas-
urements  (in  millimeters)  of  100  genuine  and  100  counterfeit  Swiss  Bank
notes:

   Length = length of the banknote
  Left = length of the left edge of the banknote
  Right = length of the right edge of the banknote
  Top = distance from the image to the top edge
  Bottom = distance from the image to the bottom edge
  Diagonal = length of the diagonal

 The data were originally reported in Flury and Riedwyl (1988) and they can
be  found  in  alr3  library  and  on  the  book  web  site  in  the  file  banknote.txt.
Figure  8.20  contains a plot of Bottom and Diagonal with different symbols for
the two values of  y .

   (a)    Fit a logistic regression model using just the last two predictor variables listed
above (i.e., Bottom and Diagonal). R will give warnings including “fitted prob-
abilities numerically 0 or 1 occurred”.

   (b)    Compare the predicted values of  y  from the model in (a) with the actual values
of   y   and  show  that  they  coincide.  This  is  a  consequence  of  the  fact  that  the
residual deviance is zero to many decimal places. Looking at Figure  8.20  we see

 8.3  Exercises

303

Counterfeit?

Yes
No

m
o

t
t
o
B

12

11

10

9

8

7

138

139

140

141

142

Diagonal

  Figure 8.20

  A plot of two of the predictors of counterfeit Swiss Bank notes

that the two predictors completely separate the counterfeit ( y  = 0) and genuine ( y
= 1) banknotes – thus producing a perfect logistic fit with zero residual devi-
ance. A number of authors, including Atkinson and Riani (2000, p. 251), com-
ment that for perfect logistic fits, the estimates of the   β′  s approach infinity and
the  z -values approach zero.

   Chapter 9
  Serially Correlated Errors

 In many situations data are collected over time. It is common for such data sets to
exhibit serial correlation, that is, results from the current time period are correlated
with results from earlier time periods. Thus, these data sets violate the assumption
that the errors are independent, an important assumption necessary for the validity
of least-squares-based regression methods. We begin by discussing the concept of
autocorrelation, the correlation between a variable at different time points. We then
show how generalized least squares (GLS) can be used to fit models with autocor-
related  errors.  Finally,  we  demonstrate  the  benefits  of  transforming  GLS  models
into least squares (LS) models when it comes to examining model diagnostics.

  9.1  Autocorrelation

 Throughout  this  section  and  the  next  we  shall  consider  the  following  example,
which we first discussed in Chapter 3.

  Estimating the price elasticity of a food product (cont.)

 Recall that we want to understand the effect of price on sales and in particular to
develop a model to estimate the percentage effect on sales of a 1% increase in price.
This example is based on a case from Carlson (1997, p. 37). In Chapter 3, we con-
sidered weekly sales (in thousands of units) of Brand 1 at a major US supermarket
chain over a year as a function of the price each week. In particular, we considered
a model of the form

log(Sales )

t

=

b

0

+

b
1

log(Price )

t

+

e

(9.1)

  where Sales  t   denotes sales of brand 1 in week  t  and Price  t   denotes the price of brand
1 in week  t . We found a nonrandom pattern (somewhat similar to a roller coaster)
in the plot of standardized residuals from model (9.1). Thus, we were not satisfied
with model (9.1).

 Two other potential predictor variables are available, namely,

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_9, © Springer Science + Business Media LLC 2009

305

306

9  Serially Correlated Errors

 Week = week of the year
 Promotion  t   = A dummy variable which indicates whether a
 promotion occurred for brand 1 in week  t  with
 0 = No promotion and
 1 =  Price reduction advertised in the newspaper and   in an in-store

display

 The  data  can  be  found  on  the  course  web  site  in  the  file  confood2.txt.  Table   9.1
gives the first four rows of the data.

 Figure  9.1  contains a plot of log(Sales  t  ) against log(Price  t  ). We see from Figure
 9.1  that log(Sales  t  ) and log(Price  t  ) appear to be linearly related, with promotions
having a dramatic effect on log(Sales  t  ). However, Figure  9.1  ignores the fact that
the data are collected over time.

 Figure  9.2  contains a plot of log(Sales) against Week (a so-called time series plot).
It is clear from Figure  9.2  that weeks with above average values of log(Sales) are gener-
ally followed by above average values of log(Sales) and that weeks with below average
values  of  log(Sales)  are  generally  followed  by  below  average  values  of  log(Sales).
Another  way  of  expressing  this  is  to  say  that  log(Sales)  in  week   t   are  positively

  An incomplete listing of the sales data (confood2.txt)
 Promotion  t
 0
 0
 0
 0

 SalesLag1  t
 NA
 611
 673
 710

 Sales  t
 611
 673
 710
 478

 Price t
 0.67
 0.66
 0.67
 0.66

Promotion

No
Yes

  Table 9.1

 Week,  t

 1
 2
 3
 4

8

7

6

5

)
t

l

s
e
a
S
(
g
o

l

−0.5

−0.4

−0.3

−0.2

log(Pricet)

  Figure 9.1

   A scatter plot of log(Sales  t  ) against log(Price  t  )

9.1  Autocorrelation

307

)
t

l

s
e
a
S
(
g
o

l

Promotion

No
Yes

8

7

6

5

0

10

20

30

40

50

Week, t

  Figure 9.2

  A time series plot of log(Sales  t  )

)
t

l

s
e
a
S
(
g
o

l

8

7

6

5

5

6

7
log(Salest−1)

8

  Figure 9.3

  Plot of log(Sales) in week  t  against log(Sales) in week  t  – 1

 correlated with log(Sales) in week  t  – 1. The latter quantity (i.e., log(Sales) in week
 t  – 1) is commonly referred to as log(Sales) lagged by 1 week or log(SalesLag1).

 Figure  9.3  contains a plot of log(Sales) in week  t  against log(Sales) in week  t  – 1,
(i.e., of log(Sales) against log(SalesLag1)). We see from Figure  9.3  that there is a

308

9  Serially Correlated Errors

positive correlation between log(Sales) in week  t  and log(Sales) in week  t  – 1. Such
a correlation is commonly referred to as  lag 1 autocorrelation .

 A natural question to ask at this stage is whether there is also a positive correla-
tion  between  log(Sales)  in  week   t   and  log(Sales)  in  weeks   t   –  2,   t   –  3,  …,  i.e.
between   Yt   = log(Sales)  t   and   Yt - 2 ,Yt - 3  , etc. We could ascertain this by looking at
scatter plots of   Yt   and   Yt - 2  ,   Yt   and   Yt - 3   , etc . , as in Figure  9.3 . However, it is both
cumbersome and time consuming to produce so many scatter plots.

 Instead of producing lots of scatter plots like Figure  9.3 , it is common statistical
practice  to  look  at  values  of  the  correlation  between   Y   and  the  various  values  of
lagged  Y  for different periods. Such values are called  autocorrelations.  The auto-
correlation of lag  l  is the correlation between  Y  and values of  Y  lagged by  l  periods,
i.e., between   Yt   and   Yt - l  , i.e.,

n

l
Autocorrelation( )

t

=

∑

l
= +

1

(

y
t

−

y y
)(
t

−

l

−

y

)

n

(

y
t

2

y

)

−

∑

t

=

1

 Figure  9.4  contains a plot of the first 17 autocorrelations of log(Sales). The dashed
—
lines correspond to   –2 ¤ Ö n
  , since autocorrelations are declared to be
—
statistically significantly different from zero if they are less than   –2 ¤ Ö n
   or greater
—
than   +2 ¤ Ö n

    (i.e., if they are more than two standard errors away from zero).

—
   and   +2 ¤ Ö n

Series  log(Sales)

1.0

0.8

0.6

0.4

0.2

0.0

−0.2

F
C
A

0

5

10

15

Lag

  Figure 9.4

  Autocorrelation function for log(Sales)

9.1  Autocorrelation

309

 We see from Figure  9.4  that just the lag 1 autocorrelation function exceeds the
normal two standard error cut-off value. Thus, last week’s value of log(Sales) sig-
nificantly affects this week’s value of log(Sales).

  Ignoring the autocorrelation effect

 In  order  to  demonstrate  the  effect  of  ignoring  autocorrelation,  we  shall  first  fit  a
model without including it. Thus, we shall consider the model

log(Sales )

t

=

b

0

+

b
1

log(Price )

t

+

b

t

2

+

b

3

Promotion

e
+

t

(9.2)

 We  begin  somewhat  naively  by  assuming  the  errors  are  independent.  Figure   9.5
contains diagnostic plots of the standardized residuals from least squares for model (9.2).
 The  top  right  plot  in  Figure   9.5   is  highly  nonrandom  with  positive  (negative)
standardized  residuals  generally  followed  by  positive  (negative)  standardized
residuals.  Thus,  there  is  positive  autocorrelation  present  in  the  standardized
residuals. To investigate this further, we next examine a plot of the autocorrelation
function of the standardized residuals from model (9.2) (see Figure  9.6 ).

 We see from Figure  9.6  that the lag 1 autocorrelation is highly statistically sig-
nificant for the standardized residuals. Thus, there is strong evidence that the errors
in model (9.2) are correlated over time thus violating the assumption of independ-
ence of the errors. We shall return to this example in the next section at which point
we will allow for the autocorrelation that is apparent.

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1

−1

−3

3
2
1

−1

−3

−0.5

−0.4

−0.3

−0.2

log(Pricet)

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

3
2
1

−1

−3

3
2
1

−1

−3

0

10

20

30

40

50

Week, t

0.0

0.2

0.4

0.6

0.8

1.0

6.0

6.5

7.0

7.5

8.0

Promotion

Fitted Values

  Figure 9.5

  Plots of standardized residuals from LS fit of model (9.2)

310

9  Serially Correlated Errors

Series Standardized Residuals

1.0

0.8

0.6

0.4

0.2

0.0

−0.2

F
C
A

0

5

10

15

Lag

  Figure 9.6

  Autocorrelation function of the standardized residuals from model (9.2)

  9.2

 Using Generalized Least Squares When the Errors
Are AR(1)

 We  next  examine  methods  based  on  generalized  least  squares  which  allow  the
errors to be autocorrelated (or serially correlated, as this is often called).

 We  shall  begin  by  considering  the  simplest  situation,  namely,  when   Y   t    can  be
predicted from a single predictor,  X   t   and the errors  e   t   follow an autoregressive process
of order 1 (AR(1)), that is,

Y
t

=

b

0

+

b
1

x

t

+

e
t

, where = e +  and  are iid
1

u

u

e
t

r

t

t

t

−

N

(0,

2
u

)
s

 The errors have the following properties:

   ( )
e
E
t

 = E

(
e
r
t

−

1

+

u

t

)

=

r

E

(
e
t

−

1

)
+

E

( )
u

t

0
=

 and

               s

2
e

2

( )
2
e
t
⎤
)
u
⎦
( )
2
u
t

E

t

+

= Var

= E

( )
e
t
⎡
(
e
r
t
⎣
2
E

(
2
e
t
−

−

= E

=

r

=

2
r s

2
e

+

1

+
)
s

2
v

1

+

2 E
r

(
e
t

−

1

) ( )
E
u

t

9.2  Using Generalized Least Squares When the Errors Are AR(1)

311

 since   ut   is independent of  e   t–   1 . Rearranging this last equation gives

s

2
e

=

2
s
v
r−

2

1

 Thus, the first-order autocorrelation among the errors,  e   t   is given by

Corr(

e e
,
t
t

)

=

−

1

 since

Cov(
( )
e
t

e e
,
t
t

−
Var

1

)
(
e
t

Var

E

=

)

−

1

)−
=1

(
e e
t
t
2
s s
e

2
e

r

   (
E

e e
t
t

−

1

)

=

E

(
e
r
⎡
⎣
t

−

1

+

u

t

)
e
t

−

1

⎤
⎦

=

r

E

(
2
e
t
−

1

)
+

E

( ) (
e
E
u
t

t

−

1

)

=

rs

2
e

 In a similar way, we can show that

Corr(

e e
,
t
t

)
− =
l

l

r

l

=

1,2,...

 When   r < 1  , these correlations get smaller as  l  increases.

 Hill, Griffiths and Judge (2001, p. 264) show that the least squares estimate of

  b1   has the following properties:

   (
ˆE b

1LS

)=

b
1

 and

Var

(
ˆ
b
1LS

)
=

2
s
e
SXX

⎛
⎜
⎝

1

+

1
SXX

∑∑

i

≠

j

(
x
i

−

x

)(
x

j

−

x

|

i

) −
r

j

|

⎞
⎟
⎠

 When the errors  e   t   are independent   (r= 0)   this reduces to

Var

(
ˆ
b
1LS

)=

2
s
e
SXX

 agreeing with what we found in Chapter 2.

 Thus,  using least squares and ignoring autocorrelation when it exists  will result
   invali-

ˆb
in consistent estimates of   b1   but incorrect estimates of the variance of
LS1
dating resulting confidence intervals and hypothesis tests.

  9.2.1  Generalized Least Squares Estimation

 Define the   (n ×1)   vector,   Y   and the   n×(p + 1)   matrix,   X   by

312

9  Serially Correlated Errors

Y

=

⎛
⎜
⎜
⎜
⎜
⎝

y
1
y
2
⋮

y

n

⎞
⎟
⎟
⎟
⎟
⎠

X

=

1

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎝

x
1
x

2

p

p

⋯

x
11

⋯

21

x
⋮

x

n
1

⋯

x

np

⎞
⎟
⎟
⎟
⎟
⎠

Also define the   (p + 1) × 1   vector,   b   of unknown regression parameters and the
  (n ×1)   vector,    e   of errors

b

=

⎛
⎜
⎜
⎜
⎜
⎝

b

0
b
1
⋮

b

p

⎞
⎟
⎟
⎟
⎟
⎠

e

=

⎛
⎜
⎜
⎜
⎜
⎝

e
1
e
2
⋮

e
n

⎞
⎟
⎟
⎟
⎟
⎠

 In general matrix notation, the linear regression model is

Y = Xb + e

 However, instead of assuming that the errors are independent we shall assume that

  e~N(0,Σ )

 where   Σ    is a symmetric   (n ×n)   matrix with ( i ,  j ) element equal to Cov( e   i  , e   j  ).

 Consider the case when the errors  e   t   follow an autoregressive process of order 1

(AR(1)), that is, when

e
t

r

= e +
t
−

1

u

and

u

t

t

are i.i.d.

N

(0,

s

2
u

)

 Then, it can be shown that

∑ =

s

2
e

…

r

n

−

1

r

⋱ ⋮

1

r
⋮

n

−

1

r

⋯

1

⎞
⎟
⎟
⎟
⎟
⎠

⎛
⎜
⎜
⎜
⎜
⎝

=

s

1

−

2
u
r

2

…

r

n

−

1

r

⋱ ⋮

1

r
⋮

n

−

1

r

⋯

1

⎞
⎟
⎟
⎟
⎟
⎠

⎛
⎜
⎜
⎜
⎜
⎝

 since

Cov

(
e e
t
t

−

1

)

=

E

(
e e
t
t

−

1

)

=

rs

2
e

 It can be shown that the log-likelihood function is given by

= −

n
2

log(2 )
p

−

1
2

log

(
L

( ,
,
b r s

log(det

( )
)
∑ −

2
e

1
2

|

Y

)

)

(
Y X
−

b

′
)

1
−

∑

(
Y X
−

b

)

9.2  Using Generalized Least Squares When the Errors Are AR(1)

313

2   can be obtained by maximizing this
The maximum likelihood estimates of   b, r,se
2   (or estimates of these quantities), minimizing the third term
function. Given   r,se
in the log-likelihood gives   bˆ  GLS the generalized least squares (GLS) estimator of   b  .
It can be shown that

ˆ
b
   GLS

=

(

X
¢

∑

1
−

1
−
X X
)
¢

1
−

∑

Y

 Comparing this with the least squares estimator of   b

ˆ
b
   LS

=

(

1
−
X X X Y

)

¢

¢

 the important role of the inverse of the variance–covariance matrix of the errors is
clearly apparent.

  Estimating the price elasticity of a food product (cont.)

 Given below is the output from R associated with fitting model (9.2) using maximum
likelihood and assuming that the errors are AR(1).

  Output from R

 Generalized least squares fit by maximum likelihood
 Model: log(Sales) ~ log(Price) + Promotion + Week
 Data: confood2
 AIC
 6.537739
 Correlation Structure: AR(1)
 Formula: ~Week
 Parameter estimate(s):

logLik
2.731131

BIC
18.2452

 Phi
 0.5503593

 Coefficients:

 (Intercept)
 log(Price)
 Promotion
 Week

 Value
4.675667
-4.327391
0.584650
0.012517

Std.Error
0.2383703
0.5625564
0.1671113
0.0046692

t-value
19.615142
-7.692368
3.498565
2.680813

p-value
0.000
0.000
0.001
0.010

 Residual standard error: 0.2740294
 Degrees of freedom: 52 total; 48 residual

 Approximate 95% confidence intervals

 Coefficients:

 (Intercept)
 log(Price)
 Promotion
 Week

 lower
4.196391300
-5.458486702
0.248649971
0.003129195

est.
4.67566686
-4.32739122
0.58464986
0.01251724

upper
5.15494243
-3.19629575
0.92064974
0.02190529

314

9  Serially Correlated Errors

 Correlation structure:
lower

upper
 Phi  0.2867453  0.5503593  0.7364955

est.

 Residual standard error:

lower
 0.2113312

est.
0.2740294

upper
0.3553291

 Figure   9.7   shows  a  plot  of  the  autocorrelation  function  of  the  generalized  least
squares (GLS) residuals from model (9.2) with AR(1) errors.    We see from Figure
 9.7  that the lag 1 autocorrelation of just under 0.6 is highly statistically significant
for the GLS residuals. This is not surprising when one considers that these residuals
correspond to a model where we assumed the errors to be AR(1).  The high positive
autocorrelation in the GLS residuals can produce nonrandom patterns in diagnos-
tic plots based on these residuals even when the fitted model is correct.  Instead, we
will transform model (9.2) with AR(1) errors into a related model with uncorrelated
errors so that we can use diagnostic plots based on least squares residuals.

Series GLS Residuals

1.0

0.8

0.6

0.4

0.2

0.0

−0.2

F
C
A

0

5

10

15

Lag

  Figure 9.7

  Autocorrelation function of the GLS residuals from model (9.2)

9.2  Using Generalized Least Squares When the Errors Are AR(1)

315

  9.2.2

 Transforming a Model with AR(1) Errors into a Model
with iid Errors

 We wish to transform the regression model

Y
t

=

b

0

+

b
1

x

t

+

e
t

=

b

0

+

b
1

x

t

+

e
r
t

+

u

t

−

1

with AR(1) errors  e   t   into a related model with uncorrelated errors so that we can
 use least squares for diagnostics . Writing this last equation for   Yt – 1   gives

Y
t

−

1

=

b

0

+

b
1

x

t

−

1

+

e
t

−

1

 Multiplying this last equation by   r   gives

r

Y
t

−

1

=

rb

0

+

rb
1

x

t

−

1

+

e
r
t

−

1

 Subtracting the second equation from the first gives

Y
t

−

r

Y
t

−

1

=

b

0

+

b
1

x

t

+

e
t

−

(
rb

0

+

rb
1

x

t

−

1

+

e
r
t

−

1

)

 Recall that

 So,

Y
t

−

r

Y
t

−

1

=

=

b
(
1

+

b
1
)
r b

0

−

x

+

t

+

0

e
t

=

er
t

−

1

+

u

t

1

−

e
r
t
(
x

b
1

+

u

t

−

−

x
r

t

−

t

(
rb
)
+

1

+

rb
1

x

0

t

−

1

+

e
r
t

−

1

)

u

t

 Define,  what  is  commonly  referred  to  as  the  Cochrane-Orcutt  transformation
(Cochrane and Orcutt, 1949),

*

Y
t

=

Y
t

−

r

Y
t

,

x

*
t
2

−

1

=

x

t

−

x
r

t

−

1

x
and

*
t
1

1
= −

r

for

t

=

2,...,

n

 then the last model equation can be rewritten as

*

Y
t

=

b

0

x

*
t
1

+

b
1

x

*
t
2

+

u

t

t

2,

n
= …

,

(9.3)

 Since the last equation is only valid for   t = 2,...,n  , we still need to deal with the

first observation  Y  1 . The first observation in the regression model is given by

Y
   1

=

b

0

+

b

x
1 1

e
+
1

316

 with error variance

9  Serially Correlated Errors

Var(

e
1

)

=

s

2
e

=

s
1

−

2
v
r

2

 Multiplying each term in the equation for  Y  1  by

1 r   gives

− 2

1

−

r

2

Y
1

=

1

−

2
r b

+

0

1

−

2
r b

x
1 1

+

1

−

r

2

e
1

 Define  what  is  commonly  referred  to  as  the  Prais-Winsten  transformation  (Prais
and Winsten, 1954),

*
Y
1

=

1

−

r

2

Y x
,
1

*
12

=

1

−

r

2

x x
,
1

*
11

=

2

1

−

r

and

*
e
1

=

1

−

r

2

e
1

 Then the model equation for  Y  1  can be rewritten as

   *
Y
1

=

b

*
x
0 11

+

b

*
x
1 12

*
+
e
1

(9.4)

*
e
1

)

=

 where
r s s     matching  the  variance  of  the  error  term  in  (9.3).
(1
Var(
We shall see that  *
1Y     is generally a point of high leverage when we use least squares
to calculate generalized least squares estimates.

) =e

−

2

2

2
v

 If we multiply each term in (9.3) and (9.4) by

1 r−

equivalently define

2

  then we find that we can

*
Y
1

=

Y Y
,
t
1

*

=

(
Y
t

−

r

Y
t

−

1

)

2

1

−

r

t

n
= …

2,

,

 In the examples in this chapter we shall use this version rather than (9.3) and (9.4).

  9.2.3  A General Approach to Transforming GLS into LS

 We  next  seek  a  general  method  for  transforming  a  GLS  model  into  a  LS  model.
Consider the linear model

     =
Y X

+b

e

(9.5)

 where the errors are assumed to have mean 0 and variance–covariance matrix   S
Earlier we found that the generalized least squares estimator of S

     is given by

  .

ˆ
b

GLS

=

(

X
¢

Σ

1
−

1
−

XC
)
¢

1
−

U

Σ

 where   S

   is a symmetric   (n´  n) matrix with ( i ,  j ) element equal to Cov( e   i  , e   j  ).

 Since   S   is a symmetric positive-definite matrix it can be written as

∑ SS
=

′

9.2  Using Generalized Least Squares When the Errors Are AR(1)

317

where  S  is a lower triangular matrix  1    with positive diagonal entries. This result is
commonly referred to as the Cholesky decomposition of   S  . Roughly speaking,  S
can be thought of as the “square root” of   S  . Multiplying each side of (9.5) by  S  –1 ,
the inverse of  S , gives

1
−

S

Y

=

S

1
−

X

b

+

S

1
−

e

 Utilizing the result that   (

1S
−

′ =
)

( ) 1
S −
′

  ,

Var

(
S

1
−

e

)
=

1
−

S

V r
a

1
−

( )(
e
S

′
)

1
−

=

S

1
−

∑

(
S

′
)

=

1
−

S S S S

′

( )−
′

1

I
,

=

 the  identity  matrix.  Thus,  pre-multiplying  each  term  in  equation  (9.5)  by   S  –1 ,  the
inverse of  S , produces a linear model with uncorrelated errors. In other words, let

*

Y

=

S

1
−

*

Y X
,

=

S

1
−

*

X e
,

=

S

1
−

e

 then,

*

Y

=

*

X

b

+

*

e

(9.6)

 provides a linear model with uncorrelated errors from which we can obtain the GLS
ˆb     denote the least squares estimate of   b   for
estimate of   b   using least squares. Let   *
LS
model (9.6), which is a generalization of (9.3) and (9.4). We next show that it equals
the GLS estimator of b     for model (9.5). Utilizing the result that     (

′ = ′
B A

)AB

′

ˆ
b

*
LS

=

′
*
X X

(

*

)

1
−

′
*
X Y

*

⎛
= ⎜
⎝

(
S

1
−

X

′
) (
S

1
−

X

1
−

⎞
) (
S
⎟
⎠

1
−

X

′
) (
S

1
−

X

)

⎛
= ⎜
⎝

=

⎛
⎜
⎝

X

′

1
−

(
S

′
)

1
−

S

1
−
⎞
X X
⎟
⎠

′

1
−

(
S

′
)

S

1
−

Y

X

′

1
−

X

′

−

1
⎞
⎠∑
Χ
⎟

1
Y

−

∑

ˆ
b

=

GLS

 noting

1
−
∑ =

(
SS

′

1
−

)

=

1
−

( )
S
′

1
−

S

=

1
−

(
S

′
)

S

1
−

  , since   (
A

′

1
−

)

=

1
−

(
A

′
)

 However, Paige (1979) points out that using (9.6) to calculate the GLS estimates

in (9.5) can be numerically unstable and sometimes even fail completely.

  Estimating the price elasticity of a food product (cont.)

 Given below is the output from R associated with fitting model (9.2) assuming that
the errors are AR(1) using least squares based on the transformed versions of the
response and predictor variables in (9.6).

  1  A lower triangular matrix is a matrix where all the entries above the diagonal are zero.

318

  Output from R

9  Serially Correlated Errors

   Call:lm(formula = ystar ~ xstar - 1)
     Coefficients:

Estimate  Std. Error  t value  Pr(>|t|)

 xstar(Intercept)  4.67566
 xstarlog(Price)  -4.32741
0.58464
 xstarPromotion
0.01252
 xstarWeek

0.23838
0.56256
0.16711
0.00467

19.614
< 2e-16  ***
-7.692  6.44e-10  ***

3.499
2.681

0.00102  **
0.01004  *

 Comparing the output above with that on a previous page, we see that the estimated
regression coefficients are the same as are the standard errors and  t -values.

 Figure  9.8  shows plots of the transformed variables from model (9.6). The point
corresponding to Week 1 is highlighted in each plot. It is clearly a very highly influ-
ential point in determining the intercept. In view of (9.4) this is to be expected.

 We  next  look  at  diagnostics  based  on  the  least  squares  residuals  from  (9.6).
Figure   9.9   shows  a  plot  of  the  autocorrelation  function  of  the  standardized  least
squares residuals from model (9.6). None of the autocorrelations in Figure  9.9  are
statistically significant indicating that an AR(1) process provides a valid model for
the errors in model (9.2).

 Figure   9.10   contains  diagnostic  plots  of  the  standardized  LS  residuals  from
model (9.6) plotted against each predictor in its  x * mode. Each of the plots appear
to be random, indicating that model (9.2) with AR(1) errors is a valid model for the
data. However, two outliers (corresponding to weeks 30 and 38) are evident in each
of these plots. These weeks were investigated and the following was found:

l

*
)
s
e
a
S
(
g
o

l

l

*
)
s
e
a
S
(
g
o

l

6

5

4

3

6

5

4

3

1

0.6

0.7

0.8

0.9

1.0

Intercept

*

1

1

−0.5

−0.3

−0.1

log(Price)*

1

l

*
)
s
e
a
S
(
g
o

l

l

*
)
s
e
a
S
(
g
o

l

6

5

4

3

6

5

4

3

−0.5

0.0

0.5

1.0

0

5

10 15 20 25

Promotion*

Week*

  Figure 9.8

  Plots of the transformed variables from model (9.6)

9.3  Case Study

319

Series Standardized LS Residuals

1.0

0.8

0.6

0.4

0.2

0.0

−0.2

F
C
A

0

5

10

Lag

15

  Figure 9.9

  Autocorrelation function of the standardized residuals from model (9.6)

  (cid:129)

 (cid:129)

 In week 30 another brand ran a promotion along with a price cut and captured a
larger than normal share of sales, thus reducing the sales of Brand 1
 In week 38, Brand 1 ran a promotion while none of the brands did, leading to
higher sales than expected for Brand 1.

 Thus, it seems that the model could be improved by including the prices and pro-
motions of the other brands.

 Figure  9.11  contains the diagnostic plots produced by R for the least squares fit
to model (9.6). A number of points of high leverage are evident from the bottom
right-hand plot in Figure  9.11 . Week 38 is a “bad” leverage point and hence it is
especially noteworthy. Otherwise the plots in Figure  9.10  provide further support
for the assertion that (9.6) is a valid model for the data.

  9.3  Case Study

 We conclude this topic, by considering a case study using data from Tryfos (1998,
p. 162) which demonstrates the hazards associated with ignoring autocorrelation in
fitting and when examining model diagnostics. According to Tryfos (1998), the savings
and loan associations in the Bay Area of San Francisco had an almost monopolistic
position  in  the  market  for  residential  real  estate  loans  during  the  1990s.  Chartered

3
2

1

−1

−3

3
2

1

−1

−3

l

i

s
a
u
d
s
e
R
S
L

i

d
e
z
d
r
a
d
n
a
t
S

i

l

s
a
u
d
s
e
R
S
L

i

d
e
z
d
r
a
d
n
a
t
S

l

i

s
a
u
d
s
e
R
S
L

i

d
e
z
d
r
a
d
n
a
t
S

−0.5

−0.3

−0.1

log(Price)*

i

l

s
a
u
d
s
e
R
S
L
d
e
z
d
r
a
d
n
a
S

t

i

38

30

0

5

10

15

20

25

Week*

3
2

1

−1

−3

3
2

1

−1

−3

−0.5

0.0

0.5

1.0

3

4

5

6

Promotion*

Fitted Values*

  Figure 9.10

  Plots of standardized LS residuals from model (9.6)

Residuals vs Fitted

Normal Q−Q

38

26

30

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

38

3
2
1

-1

-3

26

30

3

4

5

6

−2

−1

0

1

2

Fitted Values

Theoretical Quantiles

Scale−Location

Residuals vs Leverage

30

26

38

l

s
a
u
d
s
e
r

i

i

d
e
z
d
r
a
d
n
a
S

t

2

0

-2

-4

38

51

1
0.5

0.5
1

30

Cook’s distance

0.5

0.0

-1.0

1.5

1.0

0.5

0.0

l

s
a
u
d
s
e
R

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

3

4

5

6

0.0

0.1

0.2

0.3

Fitted Values

Leverage

  Figure 9.11

  Diagnostic plots for model (9.6)

9.3  Case Study

321

banks had a small portion of the market, and savings and loan associations located
outside the region were prevented from making loans in the Bay Area. Interest centers
on developing a regression model to predict interest rates ( Y ) from  x  1 , the amount of
loans closed (in millions of dollars) and  x  2 , the vacancy index, since both predictors
measure different aspects of demand for housing. Data from the Bay Area are available
on each of these variables over a consecutive 19-month period in the 1990s. The data
can be found on the course web site in the file BayArea.txt.

 The scatter plots of the data given in Figure  9.12  reveal a striking nonlinear pat-

tern among the predictors.

  Ignoring the autocorrelation effect

 In  order  to  demonstrate  the  effect  of  ignoring  autocorrelation,  we  shall  first  fit  a
model without including it. Thus, we shall consider the model

20

40

60

80 100

Interest Rate

100

80

60

40

20

Loans Closed

Vacancy Index

6.4 6.6 6.8 7.0

2.0

2.4

2.8

3.2

  Figure 9.12

  Scatter plot matrix of the interest rate data

7.0

6.8

6.6

6.4

3.2

2.8

2.4

2.0

322

9  Serially Correlated Errors

InterestRate

=

b

0

+

b
1

t

LoansClosed

+

b

2

t

VacancyIndex

+

e

t

(9.7)

 We begin somewhat naively by assuming the errors are uncorrelated. Figure
 9.13  contains diagnostic plots of the standardized residuals from least squares for
model (9.7).

 The top left and the bottom left plot in Figure  9.13  are highly nonrandom with an
obvious  quadratic  pattern.  The  quadratic  pattern  could  be  due  to  the  nonlinearity
among  the  predictors  and/or  the  obvious  autocorrelation  among  the  standardized
residuals.

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
S

t

i

1.5

0.5

−0.5

−1.5

1.5

0.5

−0.5

−1.5

i

l

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1.5

0.5

−0.5

−1.5

20

40

60

80 100

2.0

2.4

2.8

3.2

Loans Closed

Vacancy Index

Standardized LS Residuals

F
C
A

1.0

0.5

0.0

−0.5

6.2

6.4

6.6

6.8

7.0

0

2

4

6

8

10 12

Fitted Values

Lag

  Figure 9.13

  Plots of standardized residuals from the LS fit of model (9.7)

  Modelling the autocorrelation effect as AR(1)

 We next fit model (9.7) assuming the errors are AR(1). Given below is the output
from R

9.3  Case Study

  Output from R

323

 Generalized least squares fit by maximum likelihood

 Model: InterestRate ~ LoansClosed + VacancyIndex
 Data: BayArea
 AIC

BIC
  -35.30833  -30.58613

logLik
22.65416

 Correlation Structure: AR(1)
 Formula: ~Month
 Parameter estimate(s):

 Phi
   0.9572093

 Coefficients:

 Value
7.122990
 (Intercept)
 LoansClosed
-0.003432
 VacancyIndex  -0.076340

Std. Error
0.4182065
0.0011940
0.1307842

t-value
17.032232
-2.874452
-0.583710

p-value
0.0000
0.0110
0.5676

 Residual standard error: 0.2377426
 Degrees of freedom: 19 total; 16 residual

 Approximate 95% confidence intervals

 Coefficients:

 lower
 (Intercept)
6.236431638
 LoansClosed  -0.005963412
 VacancyIndex  -0.353590009

est.
7.122989795
-0.003432182
-0.076339971

upper
8.0095479516
-0.0009009516
0.2009100658

 Correlation structure:
 lower

upper
  Phi 0.5282504  0.9572093  0.9969078

est.

 Residual standard error:
est.
0.23774259

 lower
 0.06867346

upper
0.82304773

 Given below is the output from R associated with fitting model (9.7) assuming
that the errors are AR(1) using least squares based on the transformed versions of
the response and predictor variables in (9.6). Notice that the results match those
in the previous R output.

 Output from R

 Call:
 lm(formula = ystar ~ xstar - 1)

Coefficients:

Estimate  Std. Error  t value  Pr(>|t|)

 xstar(Intercept)  7.122990
 xstarLoansClosed  -0.003432
 xstarVacancyIndex -0.076340

0.418207  17.032  1.12e-11  ***
0.001194  -2.874
0.130784  -0.584

0.011  *
0.568

 Figure   9.14   shows  plots  of  the  transformed  variables  from  model  (9.7).  The
point corresponding to Week 1 is highlighted in each plot. It is clearly a very highly
influential point, which is to be expected in view of (9.4).

324

9  Serially Correlated Errors

*
e
t
a
R
t
s
e
r
e
t
n
I

*
e
t
a
R
t
s
e
r
e
t
n
I

6

5

4

3

2

1

6

5

4

3

2

1

1

1

*
e
t
a
R
t
s
e
r
e
t
n
I

6

5

4

3

2

1

0.2

0.4

0.6

0.8

1.0

−100 −50

0

50

100

Intercept*

LoansClosed*

1

1

*
x
e
d
n
I
y
c
n
a
c
a
V

2.5

1.5

0.5

−0.5

−0.5

0.5

1.5

2.5

−100 −50

0

50

100

VacancyIndex*

LoansClosed*

 Figure 9.14

  Plots of the transformed variables from model (9.7)

 Figure  9.15  shows diagnostic plots based on the least squares residuals from (9.6).
None of the autocorrelations in the top left plot are statistically significant indicating
that an AR(1) process provides a valid model for the errors in model (9.7).

 The other plots in Figure  9.15  show standardized LS residuals from model (9.7)
plotted against each predictor in its  x * mode. Each of the plots appear to be random,
indicating that model (9.7) with AR(1) errors is a valid model for the data. Month
1 again shows up as a highly influential point.

 Comparing the top right-hand plot in Figure  9.15  with the top left-hand plot in
Figure  9.13  we see that the quadratic pattern has disappeared once we have used gen-
eralized least squares to account for the autocorrelated errors.

 It is instructive to repeat the analyses shown above after removing the predictor
 x  2 ,  the  vacancy  index.  The  quadratic  pattern  in  the  plot  of  standardized  residuals
against LoansClosed remains when naively fitting the model which assumes that
the errors are independent. This shows that the quadratic pattern is due to the obvi-
ous autocorrelation among the standardized residuals and not due to the nonlinear-
ity among the predictors.

 This case study clearly shows ignoring autocorrelation can produce misleading
model diagnostics. It demonstrates the difficulty inherent in separating the effects
of autocorrelation in the errors from misspecification of the conditional mean of  Y
given  the  predictors.  On  the  other  hand,  the  case  study  illustrates  the  benefit  of
using least squares diagnostics based on  Y * and  X *.

9.4  Exercises

325

Standardized LSResiduals

1.0

0.5

0.0

F
C
A

−0.5

l

i

s
a
u
d
s
e
R
S
L

i

d
e
z
d
r
a
d
n
a
t
S

2

1

0

−1

−2

0

2

4

6

8

10 12

−100 −50

0

50

100

Lag

LoansClosed*

l

i

s
a
u
d
s
e
R
S
L

i

d
e
z
d
r
a
d
n
a
t
S

2

1

0

−1

−2

1

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

2

1

0

−1

−2

1

1

−0.5

0.5

1.5

2.5

1

2

3

4

5

6

VacancyIndex*

Fitted Values*

 Figure 9.15

  Plots of standardized LS residuals from model (9.6)

  9.4  Exercises

    1.     Senior management at the Australian Film Commission (AFC) has sought your
help with the task of developing a model to predict yearly gross box office receipts
from movies screened in Australia. Such data are publicly available for the period
from 1976 to 2007 from the AFC’s web site (  www.afc.gov.au    ). The data are given
in Table  9.2  and they can be found on the book web site in the file boxoffice.txt.
 Interest centers on predicting gross box office results for 1 year beyond the latest
observation, that is, predicting the 2008 result. In addition, there is interest in
estimating the extent of any trend and autocorrelation in the data. A preliminary
analysis of the data has been undertaken by a staffer at the AFC and these results
appear below. In this analysis the variable Year was replaced by the number of
years since 1975, which we shall denote as YearsS1975 (i.e., YearsS1975 = Year
– 1975).

 The first model fit to the data by the staffer was

GrossBoxOffice

=

b

0

+

b
1

YearsS1975 e
+

 (9.8)

326

9  Serially Correlated Errors

 Table 9.2
 Year
 1976
 1977
 1978
 1979
 1980
 1981
 1982
 1983
 1984
 1985
 1986
 1987
 1988
 1989
 1990
 1991

)

M
$
(

e
c
i
f
f

O
x
o
B
s
s
o
r
G

600

200

  Australian gross box office results

 Gross box office ($M)
   95.3
   86.4
 119.4
 124.4
 154.2
 174.3
 210.0
 208.0
 156.0
 160.6
 188.6
 182.1
 223.8
 257.6
 284.6
 325.0

 Year
 1992
 1993
 1994
 1995
 1996
 1997
 1998
 1999
 2000
 2001
 2002
 2003
 2004
 2005
 2006
 2007

 Gross box office ($M)
 334.3
 388.7
 476.4
 501.4
 536.8
 583.9
 629.3
 704.1
 689.5
 812.4
 844.8
 865.8
 907.2
 817.5
 866.6
 895.4

l

i

s
a
u
d
s
e
R
d
e
z
d
r
a
d
n
a
t
S

i

1.0

0.0

−1.5

0

5 10

20

30

0

5 10

20

30

Years since 1975

Years since 1975

Series Standardized Residuals

F
C
A

1.0

0.5

0.0

−0.5

0

5

10

15

Lag

 Figure 9.16

  Plots associated with the LS fit of model (9.8)

 Figure  9.16  shows plots associated with the least squares fit of model (9.8) that
were  produced  by  the  staffer.           The  staffer  noted  that  a  number  of  statistically
significant autocorrelations in the standardized residuals as well as the existence
of an obvious roller coaster pattern in the plot of standardized residuals against

9.4  Exercises

327

YearsS1975.  As  such,  the  staffer  decided  to  fit  model  (9.8)  assuming  that  the
errors are AR(1). Given below is the output from R.

  Output from R

 Generalized least squares fit by maximum likelihood
 Model: GrossBoxOffice ~ YearsS1975
 Data: boxoffice

 AIC

BIC
  330.3893  336.2522

logLik
-161.1947

 Correlation Structure: AR(1)
 Formula: ~YearsS1975
 Parameter estimate(s):

 Phi
 0.8782065

 Coefficients:

 (Intercept)
 YearsS1975

 Correlation:

 YearsS1975

 Value  Std. Error
72.74393
3.44766

4.514082
27.075395

t-value
0.062054
7.853259

p-value
0.9509
0.0000

 (Intr)
-0.782

 Residual standard error: 76.16492
 Degrees of freedom: 32 total; 30 residual

 Given below is the output from R associated with fitting model (9.8) assuming
that the errors are AR(1) using least squares based on the transformed versions
of the response and predictor variables in (9.6). The staffer was delighted that
the results match those in the previous R output.

    Output from R

 Call:
 lm(formula = ystar ~ xstar - 1)

 Coefficients:

 xstar(Intercept)
 xstarYearS1975

 Estimate  Std. Error  t value  Pr(>|t|)
0.95

72.744
3.448

0.062
7.853  9.17e-09  ***

4.514
27.075

 Figure  9.17  shows diagnostic plots based on the least squares residuals from
(9.6). The staffer is relieved that none of the autocorrelations in the right-hand
plot  are  statistically  significant  indicating  that  an  AR(1)  process  provides  a
valid  model  for  the  errors  in  model  (9.8).  However,  the  staffer  is  concerned
about the distinct nonrandom pattern in the left-hand plot of Figure  9.17 . The
dashed line is from a cubic LS fit which is statistically significant ( p -value =
0.027).  At  this  stage,  the  staffer  is  confused  about  what  to  do  next  and  has
sought your assistance.

328

9  Serially Correlated Errors

Stand LS Residuals

i

l

s
a
u
d
s
e
R
S
L

i

d
e
z
d
r
a
d
n
a
t
S

2

1

0

−1

−2

−3

F
C
A

1.0

0.8

0.6

0.4

0.2

0.0

−0.2

−0.4

50

150

250

0

5

10

15

Fitted Values*

Lag

 Figure 9.17

  Plots of standardized LS residuals from model (9.6)

    (a)
    (b)

    (c)
    (d)

   Comment on the analysis performed by the staffer.
   Obtain  a  final  model  for  predicting  GrossBoxOffice  from  YearsS1975.
Ensure that you produce diagnostic plots to justify your choice of model.
Describe any weaknesses in your model.
   Use your model from (b) to predict GrossBoxOffice in 2008.
   Use  your  model  from  (b)  to  identify  any  outliers.  In  particular,  decide
whether  the  year  2000  is  an  outlier.  There  is  some  controversy  about
the year 2000. In one camp are those that say that fewer people went to the
movies in Australia in 2000 due to the Olympics being held in Sydney. In
the  other  camp  are  those  that  point  to  the  fact  that  a  10%  Goods  and
Services  Tax  (GST)  was  introduced  in  July  2000  thus  producing  an
increase in box office receipts.

   2.     This  problem  is  based  on  an  exercise  from  Abraham   and  Ledolter  (2006,
pp. 335–337) which focuses on monthly sales from a bookstore in the city
of Vienna, Austria. The available data consisted of 93 consecutive monthly
observations on the following variables:

 Sales = Sales (in hundreds of dollars)
 Advert = Advertising spend in the current month
 Lag1Advert = Advertising spend in the previous month
 Time = Time in months
 Month_ i  = Dummy variable which is 1 for month  i  and 0 otherwise
 ( i  = 2, 3, …, 12)

9.4  Exercises

329

 The data can be found on the book website in the file bookstore.txt.

    (a)

    (b)

   Follow the advice of Abraham and Ledolter (2006, pp. 336–337) and first
build a model for Sales ignoring the effects due to Advert and Lag1Advert.
Ensure that you produce diagnostic plots to justify your choice of model.
Describe any weaknesses in your model.
   Add  the  effects  due  to  Advert  and  Lag1Advert  to  the  model  you  have
developed in (a). Last month’s advertising (Lag1Advert) is thought to have
an impact on the current month’s sales. Obtain a final model for predicting
Sales. Ensure that you produce diagnostic plots to justify your choice of
model. Describe any weaknesses in your model.

   3.     This problem is based on a case involving real data from Tryfos (1998, pp. 467–469).

According to Tryfos:

 To the sales manager of Carlsen’s Brewery, a formal model to explain and predict beer sales
seemed worth a try.…. Carlsen’s Brewery is one of the major breweries in Canada, with sales
in all parts of the country, but the study itself was to be confined to one metropolitan area. In
discussing this assignment, the manager pointed out that weather conditions obviously are
responsible for most of the short-run variation in beer consumption. “When it is hot”, the
manager said, “people drink more – it’s that simple.” This was also the reason for confining
the study to one area; since weather conditions vary so much across the country, there was
no  point  in  developing  a  single,  countrywide  model  for  beer  sales.  It  was  the  manager’s
opinion that a number of models should be developed -–one for each major selling area.

 The available data consisted of 19 consecutive quarterly observations on the
following variables:

 Sales = Quarterly beer sales (in tons)
 Temp = Average quarterly temperature (in degrees F)
 Sun = Quarterly total hours of sunlight
 Q2 = Dummy variable which is 1 for Quarter 2 and 0 otherwise
 Q3 = Dummy variable which is 1 for Quarter 3 and 0 otherwise
 Q4 = Dummy variable which is 1 for Quarter 4 and 0 otherwise.
 The data can be found on the book web site in the file CarlsenQ.txt.

 Develop a model which can be used to predict quarterly beer sales. Describe any
weaknesses in your model. Write up the results in the form of a report that is to
be given to the manager at Carlsen’s brewery.

   Chapter 10
  Mixed Models

 In the previous chapter we looked at regression models for data collected over time.
The  data  sets  we  studied  in  Chapter  9  typically  involve  a  single  relatively  long
series  of  data  collected  in  time  order.  In  this  chapter,  we  shall  further  consider
models for data collected over time. However, here the data typically consist of a
number  of  relatively  short  series  of  data  collected  in  time  order  (such  data  are
commonly  referred  to  as  longitudinal  data).  For  example,  in  the  next  section  we
shall  consider  a  real  example  which  involves  four  measurements  in  time  order
collected for each of 27 children (i.e., 16 males and 11 females).

 We begin by discussing the concept of fixed and random effects and how random
effects induce a certain form of correlation on the overall error term in the corre-
sponding  regression  model.  The  term  mixed  models  is  used  to  describe  models
which have both fixed and random effects. We then show how to fit mixed models
with more complex error structures. Finally, we demonstrate the benefits of trans-
forming  mixed  models  into  models  with  uncorrelated  errors  when  it  comes  to
examining model diagnostics.

  10.1  Random Effects

 Thus far in this book we have looked exclusively at regression models for what are
known  as  fixed  effects.  The  effects  are  fixed  in  the  sense  that  the  levels  of  each
explanatory variable are themselves of specific interest. For example, in Chapter 1 we
were interested in modeling the performance of the 19 NFL field goal kickers who
made at least ten field goal attempts in each of the 2002, 2003, 2004, 2005 seasons
and at the completion of games on Sunday, November 12 in the 2006 season.

 On the other hand, in many studies involving random effects, subjects are selected
at random from a large population. The subjects chosen are themselves not of spe-
cific interest. For example, if the study or experiment were repeated then different
subjects would be used. We shall see in the context of this chapter that what is gener-
ally of interest in these situations is a comparison of outcomes within each subject
over time as well as comparisons across subjects or groups of subjects. Throughout
this section we shall consider the following real example involving random effects.

S.J. Sheather, A Modern Approach to Regression with R,
DOI: 10.1007/978-0-387-09608-7_10, © Springer Science + Business Media LLC 2009

331

332

10  Mixed Models

 Table 10.1

  Orthodontic growth data in the form of Distance

 Subject

 Age = 8

 Age = 10

 Age = 12

 Age = 14

 M1
 M2
 M3
 M4
 M5
 M6
 M7
 M8
 M9
 M10
 M11
 M12
 M13
 M14
 M15
 M16
 F1
 F2
 F3
 F4
 F5
 F6
 F7
 F8
 F9
 F10
 F11

 26
 21.5
 23
 25.5
 20
 24.5
 22
 24
 23
 27.5
 23
 21.5
 17
 22.5
 23
 22
 21
 2 1
 20.5
 23.5
 21.5
 20
 21.5
 23
 20
 16.5
 24.5

 25
 22.5
 22.5
 27.5
 23.5
 25.5
 22
 21.5
 20.5
 28
 23
 23.5
 24.5
 25.5
 24.5
 21.5
 20
 21.5
 24
 24.5
 23
 21
 22.5
 23
 21
 19
 25

 29
 23
 24
 26.5
 22.5
 27
 24.5
 24.5
 31
 31
 23.5
 24
 26
 25.5
 26
 23.5
 21.5
 24
 24.5
 25
 22.5
 21
 23
 23.5
 22
 19
 28

 31
 26.5
 27.5
 27
 26
 28.5
 26.5
 25.5
 26
 31.5
 25
 28
 29.5
 26
 30
 25
 23
 25.5
 26
 26.5
 23.5
 22.5
 25
 24
 21.5
 19.5
 28

  Orthodontic growth data

 Potthoff  and  Roy  (1964)  first  reported  a  data  set  from  a  study  undertaken  at  the
Department of Orthodontics from the University of North Carolina Dental School.
Investigators followed the growth of 27 children (16 males and 11 females). At ages
8, 10, 12 and 14 investigators measured the distance (in millimeters) from the center
of the pituitary to the pterygomaxillary fissure, two points that are easily identified on
x-ray exposures of the side of the head. Interest centers on developing a model for
these distances in terms of age and sex. The data are provided in the R-package, nlme.
They can be found in Table  10.1  and on the book web site in the file Orthodont.txt.

  Orthodontic growth data: Females

 We shall begin by considering the data just for females. Figure  10.1  shows a plot of
Distance against Age for each of the 11 females. Notice that the plots have been ordered
from bottom left to top right in terms of increasing average value of Distance.

 The model we first consider for subject  i  ( i  = 1, 2, …, 11) at Age  j  ( j  = 1, 2, 3, 4)

is as follows:

Distance

=

b

0

+

b
1

Age

j

+

b
i

+

e
ij

ij

  (10.1)

10.1  Random Effects

333

8 10 13

8 10 13

F02

F08

F03

F04

F11

28

26

24

22

20

18

16
F07

F10

F09

F06

F01

F05

)

m
m

(

e
r
u
s
s
F
y
r
a

i

l
l
i

x
a
m
o
g
y
r
e
P
o

t

t

y
r
a

t
i

u

t
i

P
m
o
r
f

e
c
n
a

t
s
D

i

28

26

24

22

20

18

16

8 10 13

8 10 13

8 10 13

Age (year)

  Figure 10.1

  Plot of Distance against Age for each female

b   (i.e.,   bi ~ N(0, s 2

 where the random effect   bi    is assumed to follow a normal distribution with mean 0
b)  ) independent of the error term  e   ij   which is iid
and variance   s 2
  N(0,s 2
e  ).  Model  (10.1)  assumes  that  the  intercepts  differ  randomly  across  the  11
female subjects but that Distance increases linearly with Age at the same fixed rate
across  the  11  female  subjects.  Thus,  in  model  (10.1)  age  is  modeled  as  a  fixed
effect. Since model (10.1) contains both fixed and random effects, it is said to be a
mixed model.

 We next calculate the correlation between two distance measurements (at Age  j,
k  such that   j ≠ k  ) for the same subject ( i ) based on model (10.1). We shall begin by
calculating the relevant covariance and variance terms. Utilizing the independence
between the random effect and random error terms assumed in model (10.1) gives

Cov(Distance ,Distance ) Cov(

=

ik

ij

+

b
i
b b
,
i
i
)

=

=

=

Cov(
b
Var(
i
2
b

s

e b
,
ij
i

+

e
ik

)

)

334

 and

10  Mixed Models

b
i

+

e
ij

)

=

s

+2

b

s

2
e

Var(Distance ) Var(

=

ij

Putting these last two expressions together gives the following expression for the
correlation

Corr(Distance , Distance )
ik
ij

=

s

2
b
+

s
2
b

s

2
e

(10.2)

 Thus, the random intercepts model (10.1) is equivalent to assuming that the correla-
tion between two distance measurements (at Age  j ,  k  such that   j ≠ k  ) for the same
subject ( i ) is constant no matter what the difference between  j  and  k . In other words,
a random intercepts model is equivalent to assuming a constant correlation within
subjects  over  any  chosen  time  interval.  Such  a  correlation  structure  is  also  com-
monly referred to as compound symmetry.

 In order to investigate whether the assumption of constant correlation inher-
ent in (10.1) is reasonable, we calculate the correlations between two distance
measurements for the same female subject over each time interval. In what fol-
lows, we shall denote the distance measurements for females aged 8, 10, 12 and
14 as DistFAge8, DistFAge10, DistFAge12, DistFAge14, respectively. The out-
put from R below gives the correlations between these four variables. Notice the
similarity  among  the  correlations  away  from  the  diagonal,  which  range  from
0.830 to 0.948.

  Output from R: Correlations between female measurements

 DistFAge8
   DistFAge10
   DistFAge12
   DistFAge14

DistFAge8
1.000
0.830
0.862
0.841

DistFAge10
0.830
1.000
0.895
0.879

DistFAge12
0.862
0.895
1.000
0.948

DistFAge14
0.841
0.879
0.948
1.000

 Figure  10.2  shows a scatter plot matrix of the distance measurements for females
aged 8, 10, 12 and 14. The linear association in each plot in Figure  10.2  appears to
be quite similar. Overall, it therefore seems that the assumption that correlations are
constant across Age is a reasonable one for females.

  10.1.1

 Maximum Likelihood and Restricted Maximum
Likelihood

 The random effects model in (10.1) can be rewritten as follows:

Distance

=

b

0

+

b
1

Age

j

+

e

ij

ij

10.1  Random Effects

20 22 24 26 28

20

24

28 19

21

23

25

18 20 22 24

28

26

24

22

20

DistFAge14

DistFAge12

DistFAge10

DistFAge8

18 20 22 24

335

28

26

24

22

20

28

24

20

25

23

21

19

24

22

20

18

  Figure 10.2

  Scatter plot matrix of the Distance measurements for female subjects

 where    ij

e =

b
i

+

e
ij

  . In general matrix notation, this is

Y X
=

b e
+

(10.3)

 where in this example

Y

=

y
1,1
⋮

y
1,4
⋮

y
11,1
⋮

y
11,4

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

X

=

1
⋮

1
⋮

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

x
1
⋮

4

x
⋮

x
1
⋮

x

4

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

336

 with

Y
i j

, =Distance , =Age ,

x

ij

j

j

i

=

1,...,11,

j

=

1,..., 4.

     We shall assume that

10  Mixed Models

Ne

~ ( ,

∑0

)

 where in this example   Σ   is the following symmetric matrix:

Σ =

D

0

0
0
⋮

0

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

0 0
D

0
D

0
0 0
⋮
⋮

0 0

0

0

0
⋱

⋮

0

⋯

⋯

⋯

0
D

0

0

0

0
0

0
D

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

D

=

s

⎛
⎜
⎜
⎜
⎜
⎝

2
b

s
+
2
s
b
2
s
b
2
b

s

2
e

s

s
2
b

2
b
s
+
2
s
b
2
b

s

2
e

s

s

2
b
2
b
s
+
2
s
b

s
2
b

2
e

s

s

2
b
2
b
2
b
+

s
s
2
b

s

⎞
⎟
⎟
⎟
⎟
⎠

2
e

 Estimates of   b   and   Σ   can be found using maximum likelihood. However, it is well known
that maximum likelihood (ML) estimate of   Σ   is biased, considerably so in small to mod-
erate sample sizes. Because of this bias, restricted maximum likelihood (REML) is the
widely recommended approach for estimating   Σ   . REML is also referred to as residual
maximum likelihood. REML is based on the notion of separating the likelihood used for
estimating   Σ   from that used for estimating   b  . This can be achieved in a number of ways.
One way is to effectively assume a locally uniform prior distribution of the fixed effects
  b   and integrate them out of the likelihood (Pinheiro and Bates, 2000, pp. 75–76). An
implication of this separation is that the resulting  REML log-likelihoods for models with
different fixed effects are not comparable .

 However, for models with the same fixed effects, the REML log-likelihoods can
be used to compare two nested models for   Σ  .  A likelihood ratio test for two nested
covariance models with the same fixed effects is based on comparing twice the dif-
ference in the two maximized REML log-likelihoods to a chi-squared distribution
with degrees of freedom equal to the difference between the number of variance-
covariance parameters in the full and reduced models .

 It can be shown that the log-likelihood function for model (10.3) is given by

log

(
L

2
( ,
b s s
b

,

2
e

|

Y

)

)

= −

n
2

log(2 )
p

−

1
2

log(det

( )
)
∑ −

1
2

(
Y X
−

)
b ¢

1
−

∑

(
Y X
−

b

)

 (see e.g., Ruppert, Wand and Carroll, 2003, p. 100). The maximum likelihood (ML)
estimates of   b   and Σ     can be obtained by maximizing this function. Alternatively,
given the estimated variance–covariance matrix of the error term   Σˆ   obtained from
REML, minimizing the third term in the log-likelihood gives   bˆ
GLS   the generalized
least squares (GLS) estimator of   b  . It can be shown that

ˆ
b

GLS

=

(

X
¢

ˆ
∑

1
−

1
−
X X
)
¢

ˆ
∑

1
−

Y

  For models with the same random effects and hence the same    Σ    which have been
estimated by ML, the ML log-likelihoods can be used to produce a likelihood ratio test

10.1  Random Effects

337

to compare two nested models for fixed effects .  This test is based on comparing twice
the difference in the two maximized ML log-likelihoods to a chi-squared distribution
with degrees of freedom equal to the difference between the number of fixed effects
parameters in the full and reduced models .  Given that REML log-likelihoods for dif-
ferent fixed effects are not comparable, REML log-likelihoods should  not  be used to
produce a likelihood ratio test to compare two nested models for fixed effects.

 Given below is the output from R associated with fitting model (10.1) to the data
on females using REML. The error variance is estimated to be   sˆ 2
e = 0.78002 = 0.608
while the variance due to the random intercept is estimated to be   sˆ 2
b = 2.06852 =
4.279  . Utilizing (10.2) we find that the correlation of two measurements within the
same female subject is estimated to be

ˆ
Corr

(Distance , Distance )
ik

ij

=

ˆ
s

ˆ
s
2
b

2
b
+

ˆ
s

4.279
4.279 0.608
+

=

2
e

=

0.88

 This result is in line with the sample correlations reported earlier.

  Output from R: REML fit of model (10.1) for females

 Linear mixed-effects model fit by REML
 Data: FOrthodont
       AIC       BIC      logLik
 149.2183  156.169  -70.60916

 Random effects:
 Formula: ~1 | Subject
         (Intercept)     Residual
 StdDev:    2.06847  0.7800331

 Fixed effects: distance ~ age
                    Value  Std. Error  DF      t-value  p-value
 (Intercept) 17.372727   0.8587419  32  20.230440             0
 age              0.479545   0.0525898  32   9.118598             0
 Correlation:
       (Intr)
 age  -0.674

 Number of Observations: 44
 Number of Groups: 11

 Figure   10.3   contains  plots  of  Distance  against  Age  for  each  female  with  the
straight-line fits from model (10.1) included. Once again these plots have been ordered
from bottom left to top right in terms of increasing average value of Distance. We shall
see in Table  10.2  that the estimated random intercept is higher than one may initially
expect for subject F10 and lower than one may initially expect for subject F11. We
shall also see that this is due to so called “shrinkage” associated with random effects.
 For comparison purposes, we also fit the following model for subject  i  ( i  = 1, 2,

…, 11) at Age  j  ( j  = 1, 2, 3, 4):

Distance

=

a

i

+

b
1

Age

j

ije
+

ij

(10.4)

338

10  Mixed Models

18 22 26

F04

F11

F02

F08

28
26
24
22
20
18
16

F03

F01

F05

F07

F10

F09

F06

28
26
24
22
20
18
16

28
26
24
22
20
18
16

28
26
24
22
20
18
16

)

m
m

(
e
r
u
s
s
F
y
r
a

i

l
l
i

x
a
m
o
g
y
r
e
t
P
o
t

y
r
a
t
i
u
t
i

P
m
o
r
f

e
c
n
a
t
s
D

i

18 22 26

18 22 26

Fitted Values (mm)

  Figure 10.3

  Plots of Distance against Age for females with fits from model (10.1)

 Table  10.2
each female and their difference

  Random  and  fixed  intercepts  for

 Subject

 Random
intercept

 Fixed
intercept

 Random -
fixed

 F11
 F04
 F03
 F08
 F07
 F02
 F05
 F01
 F09
 F06
 F10

 20.972
 19.524
 18.437
 18.075
 17.713
 17.713
 17.351
 16.144
 15.902
 15.902
 13.367

 21.100
 19.600
 18.475
 18.100
 17.725
 17.725
 17.350
 16.100
 15.850
 15.850
 13.225

 –0.128
 –0.076
 –0.038
 –0.025
 –0.012
 –0.012
   0.001
   0.044
   0.052
   0.052
   0.142

 where the fixed effect   ai   allows for a different intercept for each subject. Table  10.2
gives the values of the estimates of   ai  , that is, estimates of the fixed intercepts in
model  (10.4)  along  with  the  estimated  random  intercept  for  each  subject  from

10.1  Random Effects

339

model (10.1), that is estimates of   b0 + bi  . Also included in Table  10.2  is the differ-
ence between the random and fixed intercepts.

 Inspection of Table  10.2  reveals that the random intercepts are smaller (larger)
than the fixed intercepts when they are associated with subjects with larger (smaller)
values  of  average  distance  than  the  overall  average  value  of  distance.  In  other
words, there is “shrinkage” in the random intercepts towards the mean. A number
of authors refer to this as “borrowing strength” from the mean.

 It can be shown that there is more “shrinkage” when  n   i  , the number of observa-
tions on the  i th subject is small. This is based on the notion that less weight should
be given to the  i th individual’s average response when it is more variable. In addi-
tion, it can be shown that there is more “shrinkage” when   s 2
b   is relatively small and
  s 2
e    is  relatively  large  (see  for  example  Frees,  2004,  p.  128).  This  is  based  on  the
notion that less weight should be given to the  i th individual’s average response when
there is little variability between subjects but high variability within subjects.

 In summary, we have found that the correlation between two distance measure-
ments for female subjects is both relatively constant across different time intervals
and high (estimated from model (10.1) to be 0.88). In addition, the fixed effect due
to Age in model (10.1) is highly statistically significant.

  Orthodontic growth data: Males

 We  next  consider  the  data  just  for  males.  Figure   10.4   shows  a  plot  of  Distance
against Age for each of the 16 males. Notice that the plots have been ordered from
bottom left to top right in terms of increasing average value of Distance.

89 1113

89 1113

89 1113

89 1113

M13

M14 M09

M15 M06

M04 M01

M10

30

25

20

M16 M05

M02 M11

M07 M08

M03 M12

)

m
m

(

e
r
u
s
s
F
y
r
a

i

l
l
i

x
a
m
o
g
y
r
e
t
P
o
t

y
r
a
t
i
u
t
i

P
m
o
r
f

e
c
n
a
t
s
D

i

30

25

20

89 1113

89 1113

89 1113

89 1113

Age (year)

  Figure 10.4

  Plot of Distance against Age for each male subject

340

31

29

27

25

25

27

29

31

24 26 28 30

22 24 26 28

18

22

26

10  Mixed Models

DistMAge14

DistMAge12

DistMAge10

31

29

27

25

30

28

26

24

28

26

24

22

26

22

18

DistMAge8

18

22

26

  Figure 10.5

  Scatter plot matrix of the Distance measurements for male subjects

 We again consider model (10.1) this time for subject  i  ( i  = 1, 2, …, 16) at Age  j
( j  = 1, 2, 3, 4). In order to investigate whether the assumption of constant correlation
inherent in (10.1) is reasonable for males, we calculate the correlations between two
distance  measurements  for  the  same  male  subject  over  each  time  interval.  In  what
follows, we shall denote the distance measurements for males aged 8, 10, 12 and 14
as  DistMAge8,  DistMAge10,  DistMAge12,  DistMAge14,  respectively.  The  output
from R below gives the correlations between these four variables. Notice the similarity
among the correlations away from the diagonal, which range from 0.315 to 0.631.

  Output from R: Correlations between male measurements

 DistMAge8
 DistMAge10

DistMAge8
1.000
0.437

DistMAge10
0.437
1.000

DistMAge12
0.558
0.387

DistMAge14
0.315
0.631

10.1  Random Effects

 DistMAge12
 DistMAge14

0.558
0.315

0.387
0.631

1.000
0.586

341

0.586
1.000

 Figure  10.5  shows a scatter plot matrix of the distance measurements for males
aged 8, 10, 12 and 14. The linear association in each plot in Figure  10.5  appears to
be quite similar but much weaker than that in the corresponding plot for females,
namely, Figure  10.2 . In addition, there are one or two points in some of the plots that
are isolated from the bulk of the points. These correspond to subjects M09 and M13
and should in theory be investigated. However, overall, it seems that the assumption
that correlations are constant across Age is also a reasonable one for males.

 Given below is the output from R associated with fitting model (10.1) to the data
on males using REML. The error variance is estimated to be   sˆ 2
e = 1.67822 = 2.816
while  the  variance  due  to  the  random  intercept  is  estimated  to  be    sˆ 2
b  =  1.6252  =
2.641  . Utilizing (10.2) we find that the correlation of two measurements within the
same male subject is estimated to be

ˆ
Corr

(Distance , Distance )
ik

ij

=

ˆ
s

ˆ
s
2
b

2
b
+

ˆ
s

2.641
2.641 2.816
+

=

2
e

=

0.48

 This result is in line with the sample correlations reported earlier.

  Output from R: REML fit of model (10.1) for males

 Linear mixed-effects model fit by REML
 Data: MOrthodont
       AIC        BIC       logLik
 281.4480  289.9566  -136.7240
 Random effects:
 Formula: ~1 | Subject
           (Intercept)    Residual
 StdDev:     1.625019    1.67822

 Fixed effects: distance ~ age
                        Value  Std. Error  DF      t-value  p-value
  (Intercept)  16.340625   1.1287202  47  14.477126          0
 age             0.784375   0.0938154  47    8.360838          0
 Correlation:
          (Intr)
 age  -0.914

 Number of Observations: 64
 Number of Groups: 16

 Figure   10.6   contains  plots  of  Distance  against  Age  for  each  male  with  the
straight-line  fits  from  model  (10.1)  included.  Once  again  these  plots  have  been
ordered  from  bottom  left  to  top  right  in  terms  of  increasing  average  value  of
Distance. Careful inspection of Figure  10.6  reveals that the estimated random inter-
cept is lower than one may initially expect for subject M10, with at least three of
the four points lying above the fitted line. This is due to “shrinkage” associated with
random effects.

342

10  Mixed Models

22 26 30

22 26 30

M06

M04

M01

M10

30

25

20

30

25

20

M13

M14

M09

M15

M07

M08

M03

M12

M16

M05

M02

M11

)

m
m

(

e
r
u
s
s
F
y
r
a

i

l
l
i

x
a
m
o
g
y
r
e
t
P
o
t

y
r
a
t
i
u
t
i

P
m
o
r
f

e
c
n
a
t
s
D

i

30

25

20

30

25

20

22 26 30

22 26 30

Fitted Values (mm)

  Figure 10.6

  Plots of Distance against Age for males with fits from model (10.1)

 In summary, we have found that the correlation between two distance measure-
ments for male subjects is both relatively constant across different time intervals
and moderate (estimated from model (10.1) to be 0.48). In addition, the fixed effect
due to Age in model (10.1) is also highly statistically significant for males.

 Table  10.3  gives the estimates of the error standard deviation (  se  ) and the ran-
dom effect standard deviation (  sb  ) for males and females we found earlier in this
chapter. Comparing these estimates we see that while   sˆ
b   is similar across males and
females,   sˆ
e   is more than twice as big for males as it is for females. Thus, in order
to  combine  the  separate  models  for  males  and  females,  we  shall  allow  the  error
variance to differ with sex, while assuming the random effect variance is constant
across sex. The combined model will readily allow us to answer the important ques-
tion about whether the growth rate differs across sex.

  Orthodontic growth data: Males and females

 The model we next consider for both male and female subjects  i  ( i  = 1, 2, …, 27)
at Age  j  ( j  = 1, 2, 3, 4) is as follows:

10.1  Random Effects

343

 Table  10.3
standard deviations

  Estimates  of  the  random  effect  and  error

 Males
 Females

sˆ
b
 1.63
 2.07

sˆ e
 1.68
 0.78

Distance

=

b

0

+

b
1

Age

j

+

b

2

Sex

+

b

3

Sex Age
×

j

+

b
i

ij

+

Sex
e
ij

(10.5)

Sex   which is iid   N(0, s 2

b   independent of the error term   eij

 where the random effect   bi   is assumed to follow a normal distribution with mean 0
and variance   s  2
eSex)  , where
  s 2

eSex   depends on Sex.
 Given below is the output from R associated with fitting model (10.5) using
REML.  The  error  variances  are  estimated  to  be    sˆ 2
eMale  =  1.66982  =  2.788    and
  sˆ 2
eFemale  =  (0.4679  ×  1.6698)2  =  0.610    while  the  variance  due  to  the  random
intercept is estimated to be   sˆ 2
b = 1.84762 = 3.414  . Utilizing (10.2) we find that
the correlation of two measurements within the same male and female subject
are estimated to be

ˆ
Corr

Male

(Distance ,Distance )
ik
ij

=

ˆ
2
s
b
ˆ
s
+

ˆ
s

2
b

2
e
Male

=

3.414
3.414 2.788
+

=

0.55

 and

ˆ
Corr

Female

(Distance ,Distance )
ik
ij

=

ˆ
2
s
b
ˆ
2
s
+
e
Female

ˆ
s

2
b

=

3.414
3.414 0.610
+

=

0.85

Thus, allowing for the random effect variance to differ across sex has produced
estimated  correlations  in  line  with  those  obtained  from  the  separate  models  for
males and females reported earlier.

  Output from R: REML fit of model (10.5) for males and females

 Linear mixed-effects model fit by REML
  Data: Orthodont
       AIC        BIC       logLik
 429.2205  447.7312  -207.6102

 Random effects:
 Formula: ~1 | Subject
              (Intercept)  Residual
 StdDev:    1.847570    1.669823

 Variance function:
 Structure: Different standard deviations per stratum
 Formula: ~1 | Sex
 Parameter estimates:
       Male       Female
 1.0000000  0.4678944

344

10  Mixed Models

 Fixed effects: distance ~ age * Sex
                       Value  Std. Error   DF        t-value      p-value
16.340625
0.0000
  (Intercept)
0.0000
  0.784375
 age
0.4691
1.032102
 SexFemale
 0.0057
 age:SexFemale  -0.304830

 1.1450945  79  14.270111
0.0933459  79  8.402883
1.4039842  25   0.735124
0.1071828   79  -2.844016

 Correlation:
                  (Intr)     age  SexFml
 age               -0.897
 SexFemale       -0.816    0.731
 age:SexFemale  0.781  -0.871  -0.840

 Number of Observations: 108
 Number of Groups: 27

 The fixed effect due to the interaction between Sex and Age in model (10.5) is
highly statistically significant ( p -value = 0.0057). The estimated coefficient of this
interaction term is such that the growth rate of females is significantly less than that
of males.

 We  next  test  whether  allowing  the  error  variance  to  differ  across  sex  is  really
necessary by comparing the maximized REML likelihoods for model (10.5) and the
following model with the same fixed effects but in which the error variance is con-
stant across Sex:

Distance

=

b

0

+

b
1

Age

j

+

b

2

Sex

+

b

3

Sex Age
×

j

+

b
i

+

e
ij

ij

(10.6)

 Given below is the output from R associated with fitting model (10.6) using REML.
Notice  that  the  estimates  of  the  fixed  effects  match  those  obtained  from  model
(10.5)  while  the  standard  errors  of  these  estimates  differ  a  little  across  the  two
models.

  Output from R: REML fit of model (10.6) for males and females

 Linear mixed-effects model fit by REML
 Data: Orthodont
       AIC          BIC        logLik
 445.7572  461.6236  -216.8786

 Random effects:
 Formula: ~1 | Subject
          (Intercept)  Residual
 StdDev:   1.816214  1.386382

 Fixed effects: distance ~ age * Sex

Value  Std. Error  DF

  (Intercept)
16.340625  0.9813122  79  16.651810
 age
0.784375  0.0775011  79  10.120823
0.671321
 SexFemale
 1.032102  1.5374208  25
 age:SexFemale  -0.304830  0.1214209  79  -2.510520

t-value  p-value
0.0000
0.0000
0.5082
 0.0141

10.1  Random Effects

345

 Correlation:
                  (Intr)     age   SexFml
 age               -0.869
 SexFemale       -0.638    0.555
 age:SexFemale  0.555  -0.638  -0.869

 Number of Observations: 108
 Number of Groups: 27

 Given below is the output from R comparing the REML fits of models (10.5)
and (10.6). The likelihood ratio test is highly statistically significant indicating that
model (10.5) provides a significantly better model for the variance–covariance than
does model (10.6).

  Output from R: Comparing REML fits of models (10.5) and (10.6)

 Model df

AIC

BIC

logLik  Test  L.Ratio p-value

 m10.6  1  6 445.7572  461.6236 -216.8786
 m10.5  2  7 429.2205  447.7312 -207.6102 1 vs 2 18.53677  <.0001

  10.1.2  Residuals in Mixed Models

 In the previous section, we discussed how REML (ML)-based likelihood ratio tests
can be used to test nested models for the covariance (fixed effects). However, such
tests  are  of  limited  value  when  neither  of  the  models  being  compared  is  a  valid
model for the fixed effects and the covariance. As such, it is clearly desirable to
have  a  set  of  diagnostics  which  examine  the  validity  of  different  aspects  of  the
model under consideration. We begin this discussion by extending the concept of
residuals to mixed models.

 In  models  containing  random  effects,  there  are  at  least  two  types  of  residuals
depending on whether we are considering the data in a conditional or unconditional
sense. We shall see that this corresponds to whether we are focusing within subjects
or at the population level.

 Before we define these two types of residuals, we need to introduce some nota-
tion. To keep things as straightforward as possible we shall consider just a single
fixed effect and a single random effect. The extension to more than one fixed effect
and one random effect will be obvious.

 Let  Y   ij   denote the outcome for subject  i  at fixed effect  x   j  . Let  b   i   denote the ran-
dom  effect  due  to  subject   i .  We  shall  suppose  that  the  following  model  is  under
consideration:

Y
ij

=

b

0

+

b
1

x

j

+

b
i

+

e
ij

(10.7)

 where the random effect   bi   is assumed to follow a normal distribution with mean 0
and variance   s   2
b  )) independent of the error term  e   ij   which is iid
  N(0, s 2
e ) .

b   (that is,   bi ~ N(0, s 2

346

10  Mixed Models

 The  ij th  conditional (or within subjects) residual  is the difference between the

observed value of  Y   ij   and its predicted value and hence it is given by

ˆ ij
e
C

=

Y
ij

−

ˆ
b

0

ˆ
b
1

x

j

−

ˆ
b
−
i

(10.8)

 The  ij th  marginal (or population) residual  is the difference between the observed
value of  Y   ij   and its estimated mean and hence it is given by

ˆ ij
e
M

=

Y
ij

−

ˆ
b

0

ˆ
b
1

x

j

−

(10.8)

 In models without random effects, the two sets of residuals are the same since then
the predicted value of  Y   ij   equals its estimated mean.

 Some  authors  (e.g.,  Weiss,  2005,  pp.  332–333)  define  a  third  residual  called
 empirical  Bayes  residuals   which  are  equal  to  the  estimated  random  effects  and
hence given by

ˆ i
e
B

ˆ
b=
i

(10.9)

 The standard advice (e.g., Nobre and Singer, 2007, p. 3) for checking the validity
of model for the fixed effects is that “plots of the elements of the vector of marginal
residuals versus the explanatory variables in  X  may be employed to check the lin-
earity of  y  with respect to such variables with the same spirit as the usual residuals
in  standard  (normal)  linear  models.  A  random  behavior  around  zero  is  expected
when the linear relationship holds”.

 Furthermore, Nobre and Singer (2007) recommend that the conditional residuals
be used to check the usual normality and constant variance assumptions placed on
the   e   ij  .  In  addition,  they  recommend  that  the  empirical  Bayes  residuals  (i.e.,  the
estimated random effects) be used to identify outlying subjects as well as assessing
the normality of the random effects.

 However, Weiss (2005, p. 332) and Fitzmaurice, Laird and Ware (2004, p. 238)
draw attention to the fact that the marginal residuals are correlated due to the cor-
relation  in  the  model.  In  particular,  Fitzmaurice,  Laird  and  Ware  (2004,  p.  238)
point  out  that  this  correlation  may  produce  “an  apparent  systematic  trend  in  the
scatter-plot of the (marginal) residuals against a selected covariate” even when the
fixed effects have been modeled correctly. In addition, Weiss (2005, p. 332) also
warns readers to be “careful” because the “estimation process introduces correla-
tion  into  the  (conditional)  residuals  even  when  none  exists  in  the   e   ij    (using  the
present notation).”

  Orthodontic growth data: Males and females

 We shall illustrate the uses and limitations of the three types of residuals (condi-
tional, marginal and empirical Bayes) using (10.5) and (10.6). We begin by consid-
ering empirical Bayes residuals.

 Figure  10.7  shows a normal Q–Q plot of the empirical Bayes residuals (i.e., the
i  ) for model (10.5). Estimated random effects in the plot

estimated random effects   bˆ

10.1  Random Effects

347

l

a
m
r
o
N
d
r
a
d
n
a
t
S

f
o

s
e

l
i
t
n
a
u
Q

2

1

0

−1

−2

(Intercept)

M10

F10

−4

−2

0
Random Effects

2

4

  Figure 10.7

  Normal Q–Q plot of the estimated random effects from model (10.5)

below the lower or above the upper 2.5% normal critical value are identified as out-
liers. In theory, the results for these subjects (namely F10 and M10) should be inves-
tigated. Figure  10.7  also shows that there is some skewness in the random effects.

 We next demonstrate the fact that the marginal and conditional residuals are cor-
related  even  when  we  believe  we  have  fitted  a  valid  model  (in  this  case  model
(10.5)). In what follows we shall denote the marginal residuals for subjects at ages
8, 10, 12 and 14 by MRAge8, MRAge10, MRAge12 and MRAge14, respectively
and the corresponding conditional residuals by CRAge8, CRAge10, CRAge12 and
CRAge14.

 Given below is output from R which gives the correlations of marginal residuals

over time. Away from the diagonal the correlations vary from 0.522 to 0.728.

  Output from R: Correlations among marginal residuals

 MRAge8
 MRAge10
 MRAge12
 MRAge14

 MRAge8
1.000
0.560
0.660
0.522

MRAge10
0.560
1.000
0.560
0.718

MRAge12
0.660
0.560
1.000
0.728

MRAge14
0.522
0.718
0.728
1.000

 Figure  10.8  shows a scatter plot matrix of the marginal residuals. The high posi-

tive correlations just reported above are clearly apparent in these plots.

 Given below is output from R which gives the correlations of conditional residu-
als over time. Away from the diagonal the correlations vary from –0.005 to –0.620.

348

4

2

0

−2

−4

−4

−2 0

2

4

−4

0 2

4

−2

0

2

4

−6

−2

0 2 4

10  Mixed Models

MRAge14

MRAge12

MRAge10

4

2

0

−2

−4

4

2

0

−4
4

2

0

−2

4

2

0
−2

−6

MRAge8

−6

−2 0 2 4

  Figure 10.8

  Scatter plot matrix of the marginal residuals from model (10.5)

  Output from R: Correlations among conditional residuals

 CRAge8
 CRAge10
 CRAge12
 CRAge14

 CRAge8
1.000
-0.307
-0.120
-0.620

CRAge10
-0.307
1.000
-0.544
-0.005

CRAge12
-0.120
-0.544
1.000
-0.083

CRAge14
-0.620
-0.005
-0.083
1.000

 Figure  10.9  shows a scatter plot matrix of the marginal residuals. The generally

negative correlations just reported above are clearly apparent in these plots.

 To demonstrate the potential shortcomings of using the conditional residuals to
assess the constant variance assumptions placed on the  e   ij  , we shall examine plots
of  conditional  residuals  versus  fitted  values  for  models  (10.6)  and  (10.5).  These
plots can be found in Figures  10.10  and  10.11 , respectively.

10.1  Random Effects

−1

0

1

2

−1

1

3

5

−4

−2

0

1 2

−4 −2

0

2

2

1

0

−1

CRAge14

CRAge12

CRAge10

CRAge8

−4 −2

0

2

349

2

1

0

−1

5

3

1

−1

2
1
0

−2

−4

2

0

−2

−4

  Figure 10.9

  Scatter plot matrix of the conditional residuals from model (10.5)

 Recall  that  model  (10.6)  assumes  that  the  error  variability  is  constant  across
males and females. Figure  10.10  seems to provide a clear indication that this is not
a  reasonable  assumption  since  the  residuals  from  this  model  for  males  are  more
variable than those for the females.

 On the other hand, model (10.5) allows for the variability of the errors to differ across
males and females. Interestingly, Figure  10.11  is remarkably similar to Figure  10.10 ,
with the conditional residuals for males much more variable than those for the females.
This example demonstrates that plots of conditional residuals versus fitted values can
produce  evidence  of  nonconstant  error  variance  even  when  a  model  allowing  for
differing variances has been fit. In this example, standardizing the conditional residuals
by estimates of error variability within sex produces plots which are in line with what
we  would  expect  in  this  case.  Thus,  this  example  also  illustrates  the  importance  of
standardizing conditional residuals when checking assumptions about error variances.

350

10  Mixed Models

20

25

30

Male

Female

)

m
m

(

l

s
a
u
d
s
e
R

i

4

2

0

−2

−4

20

25

30

Fitted Values (mm)

  Figure 10.10

  Plots of conditional residuals vs fitted values from model (10.6)

  Cholesky residuals

 In order to overcome the problems associated with the correlation in residuals from
mixed  models  Fitzmaurice,  Laird  and  Ware  (2004,  p.  238)  recommend  that  the
residuals  be  transformed  so  that  ideally  they  have  zero  correlation  and  constant
variance. While there are a number of ways to do this (see Weiss, 2005, pp. 330–
331), Fitzmaurice, Laird and Ware (2004, p. 238) consider the transformation based
on  the  Cholesky  decomposition  of    Σ  .  At  this  point  we  need  to  reintroduce  some
notation.

 Combining the random effects and the error term, we can rewrite (10.7) as

Y
ij

=

b

0

+

b
1

x

j

+

e

ij

(10.10)

 where   eij = bi + eij   is assumed to follow a normal distribution with mean 0 and vari-
ance given by the appropriate element of the variance covariance matrix   Σ  , which
was given below (10.3). In general matrix notation, (10.10) can be written as

Y X
=

b e
+

(10.11)

10.1  Random Effects

351

Male

Female

20

25

30

)

m
m

(

l

s
a
u
d
s
e
R

i

4

2

0

−2

−4

20

25

30

Fitted Values (mm)

  Figure 10.11

  Plots of conditional residuals vs fitted values from model (10.5)

 Just as we did in Chapter 9, we can express the symmetric positive-definite matrix
  Σ   as

  Σ = SS¢

 where  S  is a lower triangular matrix with positive diagonal entries. This result is
commonly referred to as the Cholesky decomposition of   Σ  . Roughly speaking,  S
can be thought of as the “square root” of   Σ  .

 Multiplying each side of (10.11) by  S  –1 , the inverse of  S , gives

1
−

S

Y

=

S

1
−

X

Sb
+

1
−

e

 Notice that

Var

(
S

1
−

e

)
=

1
−

Var

S

( )(
S
e

1
−

′
)

1
−

=

S

∑

1
−

(
S

′
)

=

1
−

(
S SS S

′

1
−

′
)

=

I
,

 the identity matrix. Thus, pre-multiplying each term in equation (10.11) by  S  –1 , the
inverse of  S , produces a linear model with uncorrelated errors. In other words, let

352

 then,

*

Y

=

S

1
−

*

Y X
,

=

S

1
−

*

X
,

e

=

S

1
−

e

10  Mixed Models

*

Y

=

*

X

b e
+

*

(10.12)

 provides a linear model with uncorrelated errors with unit variance.

 In practice, we replace the variance–covariance matrix   Σ   by an estimate   Σˆ   from
which we obtain   Sˆ–1  , the Cholesky decomposition of the inverse of   Σˆ   . Instead of
fitting  (10.12),  we  could  transform    eˆ  ,  the  residuals  from  model  (10.11)  by  pre-
multiplying them by   Sˆ–1   to produce the following set of transformed residuals

*

ˆ
e

=

ˆ
ˆS
1
−
e

1
−

ˆ
S

=

(
−Y X

ˆ
b

)

 These residuals are also called scaled or  Cholesky residuals . Their properties were
studied by Houseman, Ryan and Coull (2004). In practice, since we use the esti-
mated  variance–covariance  matrix  the  Cholesky  residuals  are  not  completely
uncorrelated.

 Figure  10.12  gives separate box plots of the Cholesky residuals from models (10.6)
and (10.5) respectively against Sex. It is evident from these box plots that the Cholesky
residuals for model (10.6) are more variable for males than females while the same is
not  true  of  the  Cholesky  residuals  for  model  (10.5).  This  increase  in  variability  in
Cholesky residuals from model (10.6) for males is statistically significant (e.g., Levene’s

)
6

.

0
1
(

l

e
d
o
M
m
o
r
f

i

l

s
a
u
d
s
e
R
y
k
s
e
o
h
C

l

4

3

2

1

0

−1

−2

−3

.

)
5
0
1
(

l

e
d
o
m
m
o
r
f

l

s
a
u
d
s
e
r

i

y
k
s
e
o
h
C

l

4

3

2

1

0

−1

−2

−3

Female Male

Female Male

Sex

Sex

  Figure 10.12

  Box plots of the Cholesky residuals from models (10.5) and (10.6)

10.2  Models with Covariance Structures Which Vary Over Time

353

test for equality of variances  p -value = 0.012). Thus, the Cholesky residuals readily lead
to the correct conclusion that the error variance differs across Sex.

 Fitzmaurice, Laird and Ware (2004, p. 238) recommend that the standard set of
regression  diagnostics  based  on  the  Cholesky  residuals  be  applied.  In  particular,
one  can  check  plots  of    eˆ*    against    Yˆ *    and    X*    which  should  display  no  systematic
patterns if the model is correctly specified.

  10.2

 Models with Covariance Structures
Which Vary Over Time

 Thus far in this chapter we have looked exclusively at regression models with ran-
dom intercepts. We discovered in Section  10.1  that a random intercepts model is
equivalent to assuming a constant correlation within subjects over any chosen time
interval.  Fitzmaurice,  Laird  and  Ware  (2004,  p.  78)  describe  this  assumption  as
“often inappropriate for longitudinal data … where the correlations are expected to
decay with increasing separation over time”. Moreover, Weiss (2005, p. 247) points
out  that  the  equal  correlation  assumption  “is  unlikely  for  real  data  measured  on
human beings over long enough periods of time” with the exception being “meas-
ures that are very persistent over the data collection time frame.”

 In  this  section  we  look  at  models  with  covariance  structures  which  vary  over
time. We shall use the following real example to highlight the challenges associated
with fitting models to longitudinal data, namely, the choice of model for the fixed
effects  (i.e.,  the  conditional  mean  structure)  and  the  choice  of  the  model  for  the
error covariance are inter-reliant.

  Pig weight data

 Diggle, Heagerty, Liang and Zeger (2002, p. 34) consider a data set provided by Dr.
Philip  McCloud  (when  he  was  a  faculty  member  at  Monash  University  in
Melbourne, Australia) on the weights of 48 pigs measured in 9 successive weeks.
The  data  can  be  found  on  the  book  web  site  in  the  file  pigweight.txt.  We  seek  a
model for the fixed effects (i.e., the conditional mean structure of pig weights over
time), as well as a model for the error covariance.

 Figure  10.13  shows a plot of weight against time (in weeks). Results from the
same pig are connected by dotted lines. It is apparent from this figure that there is
an increasing trend in both the mean and the variance of weight as time increases.
 We next investigate the covariance structure in these data. In what follows, we
shall denote the pig weights at weeks 1, 2, …, 9 by T1, T2, …. T9, respectively.
Figure  10.14  shows a scatter plot matrix of the pig weights at weeks 1, 2, … 9.

 The output from R below gives the correlations between T1, T2, …., T9. Notice
how the correlations decay as the time interval between the measurements increase.
The decreasing correlation as the time interval between measurements increases is
clearly evident in Figure  10.14 .

354

10  Mixed Models

i

t
h
g
e
W

90

80

70

60

50

40

30

20

2

4

6

8

Time

  Figure 10.13

  Plot of pig weights over time

  Output from R: Correlations between measurements

T4

T2

T1

T3

T5
 T1  1.00  0.92  0.80  0.80  0.75
 T2  0.92  1.00  0.91  0.91  0.88
 T3  0.80  0.91  1.00  0.96  0.93
 T4  0.80  0.91  0.96  1.00  0.96
 T5  0.75  0.88  0.93  0.96  1.00
 T6  0.71  0.84  0.91  0.93  0.92
 T7  0.66  0.78  0.84  0.87  0.85
 T8  0.63  0.71  0.82  0.83  0.81
 T9  0.56  0.66  0.77  0.79  0.79

T6
0.71
0.84
0.91
0.93
0.92
1.00
0.96
0.93
0.89

T8

T7

T9
0.66  0.63  0.56
0.78  0.71  0.66
0.84  0.82  0.77
0.87  0.83  0.79
0.85  0.81  0.79
0.96  0.93  0.89
1.00  0.96  0.92
0.96  1.00  0.97
0.92  0.97  1.00

  10.2.1  Modeling the Conditional Mean

 When there are relatively few time points and measurements are available for each
subject at all of these time points, it is possible to consider a so-called unstructured
covariance matrix for the error term while concentrating on finding a parsimonious
model for the conditional mean. Having found such a model one can then attempt
to find a parsimonious model for the error covariance. We shall adopt this strategy
for the pig weight data, even though there are nine time points. On the other hand,
when it is not possible to consider an unstructured covariance matrix for the error

10.2  Models with Covariance Structures Which Vary Over Time

355

65

80

60 75

55 70

50

65 40 55

40 50

35 45 26 34

20

28

80

65

T9

T8

T7

T6

80

65

75

60

70

55

65

50

55

40

50

40

45

35

34

26

28

20

T2

T1

20 28

T5

T4

T3

  Figure 10.14

  Scatter plot matrix of the pig weights at weeks 1 to 9

term the usual practice is to fit a maximal model for the conditional mean and then
concentrate on finding a parsimonious model for the error covariance.

  A straight line model for the conditional mean

 A number of authors including Diggle, Heagerty, Liang and Zeger (2002), Yang and
Chen (1995), Ruppert, Wand and Carroll (2003) and Alkhamisi and Shukur (2005)
have  modeled  the  conditional  mean  weight  at  a  given  week  by  a  straight  line  but
suggested different error structures. Thus, we shall start with a straight-line model
for the conditional mean. Thus we shall consider the following model for the weight
 Y   ij   of the  i th pig ( i  = 1, 2, … 48) in the  j th week  x   j   (j = 1, …, 9):

 In general matrix notation, this is

Y
ij

=

b

0

+

b
1

x

j

+

e

ij

Y X
=

b e
+

(10.13)

356

 where in this example

10  Mixed Models

Y

=

y
1,1
⋮

y
1,9
⋮

y
⋮

y

48,1

48,9

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

X

=

1
⋮

1
⋮

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

x
1
⋮

9

x
⋮

x
1
⋮

x

9

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

 We shall assume that

 where in this example   Σ   is the following matrix:

Ne
   ~ ( ,

∑0

)

Σ =

D

0

0

0
⋮

0

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

0
D

0

0
⋮

0

0

0
D

0
⋮

0

0

0

0
⋱

0

0

⋯

⋯

⋯

0
D

0

0

0

0

0

0
D

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

D

⎛
⎜
⎜
= ⎜
⎜
⎜
⎜
⎝

s

2
1

s

12

s
13
⋮

s

19

s

s

12
2
2

s
23
⋮

s

29

s

13

⋯

s

19

s

⋯

s

29

⋯

23
2
s
s
3
39
⋮ ⋱ ⋮

s

39

⋯

s

2
9

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎠

 with  D  a positive-definite and symmetric   (9 × 9)   matrix. In particular we allow the
diagonal entries (i.e., the variances at each time point) to differ. This is in line with
the following advice from Fitzmaurice, Laird and Ware (2004, p. 169) that “practi-
cal experience based on many longitudinal studies has led to the empirical observa-
tion that variances are rarely constant over time.”

 Given below is the output from R associated with fitting model (10.13) using

REML. Notice how in this case the estimated error variance increases over time.

  Output from R: REML fit of model (10.13)

 Generalized least squares fit by REML
 Model: weight ~ Time
 Data: pigweights

AIC

BIC
  1635.943
1826.941
 Correlation Structure: General
 Formula: ~1 | Animal
 Parameter estimate(s):

logLik
-770.9717

10.2  Models with Covariance Structures Which Vary Over Time

357

 Correlation:

4

3

2

1
0.894
0.722  0.895
0.767  0.910  0.946
0.742  0.879  0.889  0.956
0.694  0.836  0.876  0.930
0.650  0.774  0.806  0.863
0.602  0.720  0.812  0.835
0.546  0.669  0.753  0.789

5

6

7

8

0.923
0.857  0.963
0.810  0.927  0.953
0.788  0.891  0.917  0.968

 2
 3
 4
 5
 6
 7
 8
 9

 Variance function:
 Structure: Different standard deviations per stratum
 Formula: ~1 | Time
 Parameter estimates:

2
 1.000000  1.133915

1

3

4

5

6

1.514700  1.524495  1.825750  1.798021

8
 2.005047  2.212073

7

9
2.561561

 Coefficients:

 (Intercept)
 Time

Value
19.072855
6.174367

Std. Error
0.3292651
0.0791560

t-value
57.92552
78.00249

p-value
0
0

 Residual standard error: 2.476831
 Degrees of freedom: 432 total;  430 residual

 In  order  to  check  whether  a  straight  line  provides  an  adequate  model  for  the
conditional mean pig weight at a given week we shall examine the Cholesky residu-
als  associated  with  model  (10.13).  Figure   10.15   shows  a  plot  of  the  Cholesky
residuals against  x *, the second column of   X* = S–1X   where  S  is a lower triangular
matrix with positive diagonal entries such that   Σˆ = SS′  . Figure  10.15  also includes
the loess fit (with

  ).

1

a =

 If the straight-line model for the fixed effects is valid then there should be no
discernible pattern in Figure  10.15 . Instead, the loess fit in Figure  10.15  suggests
that there is some structure in the Cholesky residuals. In order to check that we are
not over interpreting the pattern in Figure  10.15 , we fit a fifth-order polynomial fit
to the Cholesky residuals in Figure  10.15  as a function of  x *. The resulting overall
F-statistic  is  highly  significant  ( p -value  =  0.0002).  Thus,  there  is  evidence  that
model (10.13) is an invalid model for the fixed effects.

3

 In view of this we shall consider an expanded model for the fixed effects. We
could  include  polynomial  terms  in  Time  as  predictors.  In  view  of  the  fact  that  a
fifth-order polynomial fit to the Cholesky residuals in Figure  10.15  is highly sig-
nificant  it  seems  natural  to  consider  a  fifth-order  polynomial  model  in  Time.
However,  the  resulting  regression  coefficients  of  such  a  high-order  polynomial
model are difficult to interpret in practice.

358

10  Mixed Models

l

i

s
a
u
d
s
e
R
y
k
s
e
o
h
C

l

3

2

1

0

−1

−2

−3

−0.4

−0.2

0.0

0.2

0.4

0.6

0.8

1.0

x *

  Figure 10.15

  Plot of the Cholesky residuals from model (10.13) against  x *

  A regression spline model for the conditional mean

 Thus,  instead,  at  this  point  we  consider  an  alternative  way  of  expanding  model
(10.13) which we shall see is straightforward to interpret, namely, linear regression
splines. Put simply, a linear regression spline consists of a series of connected line
segments joined together at what are commonly referred to as knots.

 In order to proceed we introduce some notation. Define

(

x

−

k

)

+

=

{x k
−
0

if
if

x k
>
x k
≤

(10.14)

The left-hand plot in Figure  10.16  provides a graphical depiction of   (x – k)+   with  k
set equal to 5. The inclusion of   (x – k)+   as a predictor produces a fitted model which
resembles a broken stick, with the break at the knot  k . Thus, this predictor allows
the slope of the line to change at  k . The right-hand plot in Figure  10.16  shows a
stylized example of a spline model with a knot at  x  = 5 illustrating these points. The
exact form of this stylized model is as follows:

 Utilizing (10.14) we find that in this case

E(

Y x
|

)

x
= −

0.75(

x

−

5)

+

E(

Y x
|

) {x
=

0.25

x

if
if

x
x

≤
>

5
5

10.2  Models with Covariance Structures Which Vary Over Time

359

+
)
5
−

x
(

5

4

3

2

1

0

)
x
|
Y
E

(

6

5

4

3

2

1

0

0

2

4

6

8 10

0

2

4

6

8 10

x

x

  Figure 10.16

  Graphical depiction of   (x – 5)+   and a stylized linear regression spline

 In  other  words,  the  model  in  right-hand  plot  in  Figure   10.16   is  made  up  of  con-
nected straight lines with slope equal to 1 if   x ≤ 5    and slope equal to 0.25 if x > 5.
 We next consider linear regression splines in the context of the pig weight example.
In order to make the model for the fixed effects as flexible as possible at this exploratory
stage, we shall add knots at all the time points except the first and the last. This will
produce a model which consists of a series of connected line segments whose slopes
could change from week to week. Thus, we shall add the following predictors to model
(10.13)   (x – 2)+ ,(x – 3)+ , …(x – 8)+    and hence consider the following model

Y X
=

b e
+

(10.15)

where in this example

Y

=

y
1,1
⋮

y
1,9
⋮

y
⋮

y

48,1

48,9

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

X

=

1
⋮

1
⋮

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

x
1
⋮

x
9
⋮

x
1
⋮

x

9

2)

+

(

x
1

2)

+

(

x

9

2)

+

(

x
1

(

x
1

(

x

9

(

x
1

−
⋮

−
⋮

−
⋮

3)

+

3)

+

3)

+

−
⋮

−
⋮

−
⋮

(

x

9

−

2)

+

(

x

9

−

3)

+

⋯

⋮

⋯

⋮
⋯

⋮
⋯

(

x
1

(

x

9

(

x
1

8)

+

8)

+

8)

+

−
⋮

−
⋮

−
⋮

(

x

9

−

8)

+

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

360

10  Mixed Models

where  Y   ij   again denotes the weight of the  i th pig ( i  = 1, 2, … 48) in the  j th week  x   j
(j = 1, …, 9). We shall assume that

Ne
    ~ ( ,

∑0

)

  where   Σ   is given below (10.13). Model (10.15) is equivalent to allowing the mean
weight to be different for each of the 9 weeks and thus can be thought of as a full
model (or a saturated model as it sometimes called).

 Given below is the output from R associated with fitting model (10.15) using
REML. In the output below (x – 2)+…(x – 8)+ are denoted by TimeM2Plus , …,
TimeM8Plus. Looking at the output we see that the coefficients of TimeM3Plus,
TimeM7Plus and TimeM8Plus (i.e., of (x – 3)+ ,(x – 7)+ and (x – 8)+) are highly
statistically  significant.  The  coefficients  TimeM3Plus  and  TimeM8Plus  are
negative,  while  the  coefficient  of  TimeM3Plus  is  positive  indicating  that  the
weekly weight gain in pigs both slows and increases rather than remaining constant
over the nine week time frame.

  Output from R: REML fit of model (10.15)

 Generalized least squares fit by REML
 Model:  weight  ~  Time  +  TimeM2Plus  +  TimeM3Plus  +  TimeM4Plus  +
TimeM5Plus + TimeM6Plus + TimeM7Plus + TimeM8Plus
 Data: pigweights
        AIC         BIC      logLik
  1613.634  1832.192  –752.817

3

2

Correlation Structure: General
 Formula: ~1 | Animal
 Parameter estimate(s):
 Correlation:
 1
 2 0.916
 3 0.802  0.912
 4 0.796  0.908  0.958
 5 0.749  0.881  0.928  0.962
 6 0.705  0.835  0.906  0.933  0.922
 7 0.655  0.776  0.843  0.868  0.855  0.963
 8 0.625  0.713  0.817  0.829  0.810  0.928  0.959
 9 0.558  0.664  0.769  0.786  0.786  0.889  0.917

6

5

4

7

8

0.969

 Variance function:
 Structure: Different standard deviations per stratum
 Formula: ~1 | Time
 Parameter estimates:
3

9
  1.000000  1.130230  1.435539 1.512632  1.836842  1.802349  2.014343  2.197068 2.566113

8

6

7

 1

5

2

4

10.2  Models with Covariance Structures Which Vary Over Time

361

 Coefficients:

 Value
 (Intercept)  18.260417
6.760417
 Time
0.322917
 TimeM2Plus
 TimeM3Plus  -1.552083
0.229167
 TimeM4Plus
 TimeM5Plus
0.531250
 TimeM6Plus  -0.281250
0.833333
 TimeM7Plus
 TimeM8Plus  -0.927083

Std. Error
0.3801327
0.1623937
0.2294228
0.2925786
0.2432416
0.3931495
0.2646021
0.2974978
0.2757119

t-value
48.03695
41.62980
1.40752
-5.30484
0.94214
1.35127
-1.06292
2.80114
-3.36251

p-value
0.0000
0.0000
0.1600
0.0000
0.3467
0.1773
0.2884
0.0053
0.0008

 Residual standard error: 2.468869
 Degrees of freedom: 432 total; 423 residual

 At this point, we are interested in an overall test which compares models (10.13) and
(10.15), that is, we are interested in comparing models with nested fixed effects but the
same Σ. As we discussed earlier in Section  10.1.1 , the ML log-likelihoods for models
with the same Σ can be used to produce a likelihood ratio test to compare two nested
models for fixed effects. This test is based on comparing twice the difference in the two
maximized ML log-likelihoods to a chi-squared distribution with degrees of freedom
equal to the difference between the number of fixed effects parameters in the full and
reduced models. We look at such a test next for models (10.13) and (10.15).

  Output from R: Comparing ML fits of models (10.13) and (10.15)

 Model df

AIC

BIC

logLik  Test  L.Ratio  p-value

 m10p13.ML  1 47  1632.303 1823.520  -769.1517
 m10p15.ML  2 54  1600.992 1820.687  -746.4958  1   vs   2  45.31183  <.0001

 The model degrees of freedom reported in the R output include   9 × (9 + 1)/2 = 45
associated  with  estimating  each  element  in  Σ.  The  model  degrees  of  freedom  for
model (10.13) total 47, due to the two fixed effects in (10.13). The seven extra degrees
of freedom in the R output for model (10.15) correspond to the seven additional pre-
dictor variables   (x – 2)+ ,(x – 3)+ , …(x – 8)+  . The likelihood ratio statistic comparing
models (10.13) and (10.15) equals 45.3. Comparing this result to a chi-squared dis-
tribution  with  degrees  of  freedom  equal  to  7,  results  in  a   p -value  <  0.0001.  Thus,
model (10.15) is to be preferred over model (10.13). This provides further evidence
that the straight-line model (10.13) is an invalid model for the data.

 However, model (10.15) includes some redundancy due to the fact that a number
of the regression spline terms are not statistically significant. Ideally, we would like
to remove this redundancy by reducing the number of knots and hence effectively
removing some of the (x – k)+ terms from the model.

  Knot selection for linear regression splines

 In general, deciding which knots (i.e., which of the (x – k)+ terms) to include in a
model based on linear regression splines is “mixture of art and science. When it is
available,  subject-matter  knowledge  should  be  brought  to  bear  on  the  empirical

362

10  Mixed Models

evidence for the most appropriate choice of knot location(s)” (Fitzmaurice, Laird,
and Ware, 2004, p. 150). In terms of science, this is a variable selection problem.
In practice, stepwise methods based on AIC, AICC or BIC such as those discussed
in  Section  7.2.2  are  commonly  used  for  this  purpose.  This  is  especially  the  case
when  there  are  many  potential  locations  for  knots.  If  there  are  a  relatively  small
number of potential knots, then another approach is to remove all the statistically
insignificant spline terms and then use a hypothesize test to compare the full and
reduced models. Weiss (2005, p. 227) provides an example illustrating the use of
the latter approach. We shall consider both approaches. We begin by considering
the latter approach first.

  Choosing knots by removing statistically insignificant spline terms

 We next remove the insignificant spline predictor terms from model (10.15) (i.e.,
  (x – 2)+,(x – 4)+,(x – 5)+,(x – 6)+  ) and thus consider the following model

=

Y Xb e
+

(10.16)

where in this example

Y

=

y
1,1
⋮

y
1,9
⋮

y
⋮

y

48,1

48,9

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

X

=

1
⋮

1
⋮

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

x
1
⋮

x
9
⋮

x
1
⋮

x

9

3)

+

(

x
1

3)

+

(

x

9

3)

+

(

x
1

(

x
1

(

x

9

(

x
1

−
⋮

−
⋮

−
⋮

7)

+

(

x
1

7) (
+

x

9

7)

+

(

x
1

−
⋮

−
⋮

−
⋮

8)

+

8)

+

8)

+

−
⋮

−
⋮

−
⋮

(

x

9

−

3)

+

(

x

9

−

7) (
+

x

9

−

8)

+

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

where  Y   ij   again denotes the weight of the  i th pig ( i  = 1, 2, … 48) in the  j th week  x   j
(j = 1, …, 9). We shall assume that

Ne

~ ( ,

∑0

)

 where Σ is given below (10.13).

 Recall that the REML log-likelihoods for models with different fixed effects
are not comparable. Thus we consider instead the ML log-likelihoods to compare
models (10.15) and (10.16). The R output given below shows that the ML likeli-
hood  ratio  statistic  comparing  the  fixed  effects  in  models  (10.16)  and  (10.15)
equals  7.1.  Comparing  this  result  to  a  chi-squared  distribution  with  degrees  of
freedom equal to 4, results in a  p -value = 0.129. Thus, based on the result of this
hypothesis test, model (10.16) is to be preferred over model (10.15). Notice also
that model (10.16) is to be preferred over model (10.15) in terms of having lower
values of AIC and BIC.

10.2  Models with Covariance Structures Which Vary Over Time

363

  Output from R: Comparing ML fits of models (10.15) and (10.16)

 Model df

logLik
 m10p16.ML  1 50  1600.125 1803.546 -750.0624
 m10p15.ML  2 54  1600.992 1820.687 -746.4958 1 vs 2 7.133239

BIC

AIC

Test  L.Ratio p-value

0.129

        Given below is the output from R associated with fitting model (10.16) using

REML. Recall that in the output   (x – 3)+   is denoted by TimeM3Plus etc.

  Output from R: REML fit of model (10.16)

 Generalized least squares fit by REML
 Model: weight ~ Time + TimeM3Plus + TimeM7Plus + TimeM8Plus
 Data: pigweights
BIC
   AIC
  1608.513
1811.352
 Correlation Structure: General
 Formula: ~1 | Animal
 Parameter estimate(s):
 Correlation:

logLik
-754.2563

3

2

1
 2  0.916
 3  0.800  0.909
 4  0.796  0.909  0.955
 5  0.749  0.881  0.924
 6  0.703  0.832  0.906
 7  0.651  0.771  0.844
 8  0.620  0.706  0.816
0.553  0.657  0.769
 9

4

5

6

7

8

0.963
0.929  0.918
0.863  0.849  0.964
0.821  0.802  0.927  0.959
0.779  0.778  0.889

0.917  0.970

Variance function:
 Structure: Different standard deviations per stratum
 Formula: ~1 | Time
 Parameter estimates:
9
2
    1
 1.00000 1.130610  1.434703  1.512738  1.835018  1.803845  2.019489 2.206996 2.575084

8

6

3

5

7

4

 Coefficients:

Value
 (Intercept)  18.256899
 Time
6.820637
 TimeM3Plus  -0.981699
 TimeM7Plus
0.828698
 TimeM8Plus  -0.767966
 Residual standard error: 2.46725
 Degrees of freedom: 432 total; 427 residual

Std. Error
0.3550314
0.1377675
0.1382106
0.2106252
0.2497377

t-value
51.42334
49.50832
-7.10292
3.93447
-3.07509

p-value
0.0000
0.0000
0.0000
0.0001
0.0022

 Notice that each of the regression coefficients of  x ,   (x – 3)+ ,(x – 7)+ and (x – 8)+
are highly statistically significant indicating that there is no redundancy in the fixed
effects in model (10.16). Looking further at the output associated with the REML
fit  of  model  (10.16)  we  see  the  following.  The  estimated  coefficient  of   x   (Time)
which measures the overall weekly trend in pig weight is 6.82. The estimated coef-
ficient of (x – 3)+ is –0.98, which means that this trend decreases by this amount
each week after week 3. The estimated coefficient of (x – 7)+ is 0.83, which means

364

10  Mixed Models

that the trend further increases after week 7 by 0.83. Finally, the estimated coeffi-
cient of (x – 8)+ is –0.77, which means that the trend further decreases after week 8
by 0.77.

  Choosing knots using variable selection

 We next consider variable selection methods for choosing the knots. In particular,
we  consider  stepwise  methods  based  on  AIC  and  BIC,  since  in  the  current
situation the approach based on all subsets would require 27 – 1 = 127 models to
be  fit.  Table   10.4   gives  the  values  of  AIC  and  BIC  found  from  backwards
elimination  (i.e.,  start  with  all  knots  in  the  model  and  at  each  step  eliminate  a
knot). Note that maximum likelihood was used for each of the stepwise fits, since
REML log-likelihoods of models with different fixed effects are not comparable.
Highlighted in bold in Table  10.4  are the minimum values of AIC and BIC found
from backwards elimination.

 We  see  from  Table   10.4   that  based  on  backwards  elimination  BIC  judges  the
model with knots at weeks 3, 7, 8, that is, model (10.16), to be “best” while AIC
has an extra knot at week 5 in its “best” model.

 Table  10.5  gives the values of AIC and BIC found from forwards selection (i.e.,
start with no knots in the model and at each step add a knot). Highlighted in bold
are the minimum values of AIC and BIC found from forwards selection.

  Table 10.4

  Values of AIC and BIC from backwards elimination

 Subset size

 Knots located at

 AIC

 BIC

 7
 6
 5
 4
 3
 2
 1

 2,3,4,5,6,7,8
 2,3,5,6,7,8
 3,5,6,7,8
 3,5,7,8
 3,7,8
 3,7
 3

 1600.992
 1599.890
 1599.524
  1599.149
 1600.125
 1605.801
 1608.973

 1820.687
 1815.516
 1811.082
 1806.639
  1803.546
 1805.154
 1804.257

  Table 10.5

  Values of AIC and BIC from forwards selection

 Subset size

 Knots located at

 AIC

 BIC

 1
 2
 3
 4
 5
 6
 7

 3
 3,5
 3,5,8
 3,5,7,8
 3,5,6,7,8
 2,3,5,6,7,8
 2,3,4,5,6,7,8

 1608.973
 1604.332
 1601.273
  1599.149
 1599.524
 1599.890
 1600.992

 1804.257
  1803.685
 1804.694
 1806.639
 1811.082
 1815.516
 1820.687

10.2  Models with Covariance Structures Which Vary Over Time

365

 We see from Table  10.5  that based on forwards selection AIC judges the model
with knots at weeks 3, 5, 7 and 8 as “best” while BIC judges the model with knots
at weeks 3 and 5 to be “best.” Comparing the results in Tables  10.4  and  10.5 , we
see that while AIC identifies the same model as “best” based on forwards selection
and backward elimination, BIC does not. (The lack of complete agreement between
the results of forwards and backwards stepwise approaches to choosing knots is not
uncommon in practice.) Notice also that the value of BIC for the “best” model from
backwards  elimination  is  lower  than  the  corresponding  value  for  forwards  selec-
tion. Thus, based on BIC, stepwise methods point to the model with knots at weeks
3, 7 and 8, that is, model (10.16), as “best.”

 We next consider the model judged as “best” from stepwise methods based on

AIC and thus consider the following model

  Y = Xb + e

(10.17)

where in this example

Y

=

y
1,1
⋮

y
1,9
⋮

y
⋮

y

48,1

48,9

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

X

=

1
⋮

1
⋮

1
⋮

1

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

x
1
⋮

x
9
⋮

x
1
⋮

x

9

3)

+

(

x
1

3)

+

(

x

9

3)

+

(

x
1

(

x
1

(

x

9

(

x
1

−
⋮

−
⋮

−
⋮

5)

+

(

x
1

5) (
+

x

9

5)

+

(

x
1

−
⋮

−
⋮

−
⋮

−
⋮

−
⋮

−
⋮

7)

+

(

x
1

7) (
+

x

9

7)

+

(

x
1

8)

+

8)

+

8)

+

−
⋮

−
⋮

−
⋮

(

x

9

−

3)

+

(

x

9

−

5) (
+

x

9

−

7) (
+

x

9

−

8)

+

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎟⎠

where  Y   ij   again denotes the weight of the  i th pig ( i  = 1, 2, … 48) in the  j th week  x   j
(j = 1, …, 9). We shall assume that

e ∼ N(0,Σ)

 where   Σ   is given below (10.13).

 The R output given below shows that the ML likelihood ratio statistic comparing
the fixed effects in models (10.17) and (10.16) equals 2.98. Comparing this result
to  a  chi-squared  distribution  with  one  degree  of  freedom,  results  in  a   p -value  =
0.0845. However, as discussed in Chapter 7, after variable selection the  p -values
obtained are much smaller than their true values. In view of this, there is little evi-
dence to prefer the more complex model (10.17) over model (10.16). Thus, we will
consider model (10.16) as our parsimonious model for the fixed effects.

  Output from R: Comparing ML fits of models (10.16) and (10.17)

 Model df

logLik
 m10p17.ML  1 51  1599.149 1806.639 -748.5744
m10p16.ML  2 50  1600.125 1803.546 -750.0624 1 vs 2 2.976025  0.0845

Test  L.Ratio p-value

AIC

BIC

366

10  Mixed Models

 The potential problems associated with using stepwise methods to choose knots
for regression splines are well-documented in the statistics literature. For example,
Zhou and Shen (2001) provide a simple numerical example for iid data which illus-
trates  the  tendency  of  stepwise  knot  selection  methods  to  not  locate  the  optimal
knots and to select more knots than necessary. They conclude that these tendencies
are due to the fact that stepwise methods do not take into account the association
between knots.

 We conclude this discussion of choosing knots for regression splines by reiterat-
ing the fact that subject-matter knowledge should be brought to bear and that one
can not blindly rely on the output from stepwise selection methods.

  Parsimonious models for the error variance–covariance

 Given that we have a parsimonious model for the fixed effects (i.e., model (10.16)),
the next natural step is to try to replace the unstructured variance–covariance matrix
Σ with a more parsimonious one. One of the advantages of imposing structure on Σ
is that the precision with which the fixed effects are estimated can be improved. In
many situations it is impractical or even impossible to model Σ by an unstructured
variance–covariance  matrix.  Such  situations  include  unbalanced  data  when  there
are no more than one data point for an individual at a given time point. Thus, it is
often  important  to  choose  an  appropriate  variance–covariance  structure  from  a
parameterized family.

Recall  that  the  correlations  within  individual  pigs  decay  as  the  time  interval
between  measurements  increases  (see  Figure   10.14 ).  Thus,  we  shall  begin  by
considering an autoregressive model. The simplest autoregressive model is one of
order 1 (denoted by AR(1)). In this situation, the correlation within a subject is
given by

Corr(

Y Y
,
ij

)
+ =
ij k

k

r

In the pig weight example we shall model Σ by an AR(1) structure with variances
which differ across time. Thus, we shall consider model (10.16) with the following
error structure

Σ =

D
1
0

0

0
⋮

0

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎜
⎝

0
D

2
0

0
⋮

0

0

0
D

3
0
⋮

0

0

0

0
⋱

0

0

⋯

⋯

⋯

0
D

8
0

0

0

0

0

0
D

9

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎟
⎠

D

i

=

s

2
i

⎛
⎜
⎜
⎜
⎜
⎜
⎜
⎝

1

r
2

r
⋮

8

r

r
1

r
⋮

2

r

⋯

8

r

7

6

⋯

r

r
1
r
⋮ ⋱ ⋮

⋯

7

r

6

r

⋯

1

⎞
⎟
⎟
⎟
⎟
⎟
⎟
⎠

 Given  below  is  the  output  from  R  associated  with  fitting  model  (10.16)  using
REML with the AR(1) error structure given above.

10.2  Models with Covariance Structures Which Vary Over Time

367

  Output from R: REML fit of model (10.16) with autoregressive errors

 Generalized least squares fit by REML
 Model: weight ~ Time + TimeM3Plus + TimeM7Plus + TimeM8Plus
 Data: pigweights

BIC

AIC

logLik
  1612.402  1673.254  -791.2011
 Correlation Structure: AR(1)
 Formula: ~1 | Animal
 Parameter estimate(s):

 Phi
 0.9459695
 Variance function:
 Structure: Different standard deviations per stratum
 Formula: ~1 | Time
 Parameter estimates:
3

7

2

5

4

1

9
  1.000000 1.129118 1.370539 1.378911 1.644508 1.563842 1.678001 1.788608 2.080035

6

8

 Coefficients:

Value
 (Intercept)  18.124607
 Time
6.901602
 TimeM3Plus  -1.011721
 TimeM7Plus
0.953291
 TimeM8Plus  -0.933510

Std.Error
0.3585966
0.1213129
0.1608429
0.2509478
0.3453573

t-value
50.54316
56.89093
-6.29012
3.79876
-2.70303

p-value
0.0000
0.0000
0.0000
0.0002
0.0071

 Residual standard error: 2.768629
 Degrees of freedom: 432 total; 427 residual

 Comparing  the  estimates  of  the  fixed  effects  above  with  those  obtained  with  the
general variance–covariance structure we see that they are quite similar with the biggest
difference occurring for the coefficients of (x – 7)+ and (x – 8)+. With one exception, the
standard errors of the estimates of the fixed effects are slightly larger for the model with
autoregressive  errors.  The  similarity  of  the  estimates  of  the  fixed  effects  is  to  be
expected since as we saw in Chapter 9, the estimates of the fixed effects are unbiased
even when the error variance-covariance is incorrectly specified. On the other hand, if
the error variance–covariance is incorrectly specified the standard errors are not correct
leading to the possibility of misleading inferences.

 As we discussed earlier in Section  10.1.1 , the REML log-likelihoods for models
with the same fixed effects can be used to produce a likelihood ratio test to compare
two nested covariance models. This test is based on comparing twice the difference
in  the  two  maximized  REML  log-likelihoods  to  a  chi-squared  distribution  with
degrees  of  freedom  equal  to  the  difference  between  the  number  of  covariance
parameters in the full and reduced models. We look at such a test next.

  Output from R: Comparing REML fits of (10.16) with different errors

 m10p16.AR1

 Model df

logLik
1 15  1612.402 1673.254 -791.2011

BIC

AIC

Test  L.Ratio p-value

m10p16

2 50  1608.513 1811.352 -754.2563 1 vs 2 73.88972

1e-04

368

10  Mixed Models

 The R output given above shows that the REML likelihood ratio statistic com-
paring  model  (10.16)  with  unstructured  and  autoregressive  errors  equals  73.9.
Comparing this result to a chi-squared distribution with degrees of freedom equal
to  35,  results  in  a   p -value  =  0.0001.  Thus,  model  (10.16)  with  the  general  error
structure is to be preferred. We take up the issue of finding a parsimonious model
for the error structure for the pig weight data in the exercises.

 It is common to want to compare non-nested models for the variance–covariance.
For  example,  imagine  a  situation  in  which  the  competing  models  are  compound
symmetry (or equivalently random intercepts) and autoregressive of order 1. In this
situation, AIC and BIC can potentially be used, with lower values of AIC and BIC
corresponding to better fitting models. However, Fitzmaurice, Laird, and Ware (2004,
p. 177) “do not recommend the use of BIC for covariance model selection as it entails
a  high  risk  of  selecting  a  model  that  is  too  simple  or  parsimonious  for  the  data  at
hand.” Looking at the R-output that compares model (10.16) with unstructured and
autoregressive errors, we see an example of this phenomenon re BIC, namely BIC
prefers the autoregressive model, which in this case is statistically significantly worse.
On the other hand, AIC prefers the unstructured covariance matrix.

 Finally, we briefly mention a promising relatively new graphical technique for
identifying a parsimonious model for the variance–covariance structure in a mixed
model, known as the regressogram of Σ. A discussion of the details is beyond the
scope  of  this  book.  Interested  readers  can  find  more  details  on  this  approach  in
Pourahmadi (2001, Section 3.5).

  10.3  Exercises

    1.     Consider once again the orthodontic growth data in Section  10.1 . In particular,
consider  model  (10.5)  which  includes  random  intercepts  and  an  error  term
whose variance differs across gender. Compare model (10.5) to a model with the
same fixed effects but an unstructured covariance matrix, which allows for vari-
ances to differ across genders. Test whether the unstructured covariance should
be preferred using the maximized REML log-likelihoods.

   2.     Consider once again the pig weight data in Section  10.2 . We shall demonstrate
in this exercise that smaller estimated standard errors for the fixed effects in a
mixed model does not always correspond to a better model.

(a)     Purely for illustration puposes Ruppert, Wand and Carroll (2003) fit a ran-
dom intercepts model with constant error variance at each time point to the
pig weight data. Fit this model using REML.

     (b)     Diggle, Heagerty, Liang and Zeger (2002, p. 77) adopt a model with both
random  intercepts  and  random  slopes  as  a  “working  model.”  Using  their
notation, this model can be written as for the weight  Y   ij   of the  i th pig in the
 j th week ( x   j  ):

Y
ij

=

a b
+

x U W x
i

+

+

j

i

+

Z

ij

j

j

=

1,...,9;

i

=

1,..., 48

10.3  Excercises

369

 where  Y   ij   is the weight of the  i th pig in the  j th week ( x   j  ) and where Ui ~
Wi  ~
REML.

 N(0,s 2),
  N(0,t 2)  are  all  mutually  independent.  Fit  this  model  using

  N(0,n 2),  Zij  ~

(a)     First, compare the models in (a) and (b) in terms AIC and maximized REML
likelihoods. Show that the model in (b) is a dramatic improvement over the
model in (a).

(b)     Next, compare the models in (a) and (b) in terms of the standard errors of
the  estimates  of  the  fixed  effects.  Show  that  the  model  in  (a)  produces  a
much smaller estimate of the standard error of the fixed slope effect.

   3.     Consider once again the pig weight data in Section  10.2 . We showed that model
(10.16) with the general error structure is to be preferred over the same model
for the fixed effects with an AR(1) error structure. Try to find a parsimonious
model for the error structure.

   4.     Belenky, Wesensten, Thorne, Thomas, Sing, Redmond, Russo and Balkin (2003)
examine daytime performance changes of 66 subjects who had spent either 3, 5,
7 or 9 hours daily time in bed for 7 days after having their normal amount of
sleep on day 0. We shall just consider the 18 subjects who spent 3 hours in bed.
The data consist of the average reaction time on a series of tests given daily to
each subject. The data are part of the R-package lme4 and they can be found on
the book web site in the file sleepstudy.txt.

(a)     Obtain plots of the data and summary statistics such as sample correlations
in order to examine the mean structure and the error structure of the data.
Identify any unusual data points.

The model we first consider for subject  i  ( i  = 1, 2, …, 18) at Days  j  ( j  = 0, 1, 2,
3, … 9) is as follows:

Reactionij = b0 + b1 Daysj + eij

(10.17)

 where eij represents a general error term.
(b)     Fit model (10.17) with an unstructured covariance matrix, which allows for

variances to differ across Days.

(c)     Fit model (10.17) with random intercepts and random slopes and an error

term whose variance differs across Days.

(d)     Fit model (10.17) with random intercepts and an error term whose variance

differs across Days.

(e)     Compare the models in (b), (c) and (d) in terms of the maximized REML

log-likelihoods and the estimated standard errors of the fixed effects.
(f)     Expand model (10.17) by adding (Days – 1)+, (Days – 2)+, … (Days – 8)+ as
predictors. Fit the expanded model with an unstructured covariance matrix,
which allows for variances to differ across Days. Show that it is an improve-
ment  on  model  (10.17).  Remove  any  redundancies  in  the  fixed  effects.
Finally, attempt to find a parsimonious model for the error structure.

     Appendix: Nonparametric Smoothing

 In  this  book  we  make  use  of  two  nonparametric  smoothing  techniques,  namely,
kernel density estimation and nonparametric regression for a single predictor. We
discuss each of these in turn next.

  A.1  Kernel Density Estimation

 In this section we provide a brief practical description of density estimation based
on kernel methods. We shall follow the approach taken by Sheather (2004).

 Let   X1, X2, ..., Xn   denote a sample of size  n  from a random variable with density

function  f . The kernel density estimate of  f  at the point  x  is given by

ˆ ( )
f x
h

=

1
nh

n

∑

i

=

1

K

x X
−⎛
⎜
h
⎝

i

⎞
⎟
⎠

 where the kernel,  K  satisfies ∫K(x) dx =1 and the smoothing parameter,  h  is known
as  the  bandwidth.  In  practice,  the  kernel   K   is  generally  chosen  to  be  a  unimodal
probability density symmetric about zero. In this case,  K  also satisfies the following
condition

A popular choice for  K  which we shall adopt is the Gaussian kernel, namely,

yK y dy =
( )

0

.

∫

K y
( )

=

1

2
p

exp

⎛
−⎜
⎝

2

y
2

⎞
⎟
⎠

 Purely  for  illustration  purposes  we  shall  consider  a  small  generated  data
set. The data consists of a random sample of size  n  = 20 from a normal mix-
ture  distribution  made  up  of  observations  from  a  50:50  mixture  of
1
N

  . The data can be found on the book

1
m = - , s =

1
m = , s =

  and

N

1

2

2

)

9

(

)

9

(

web site in the file bimodal.txt.

371

372

Appendix: Nonparametric Smoothing

s
e
i
t
i
s
n
e
D
e
u
r
T
&
d
e

t

a
m

i
t
s
E

0.6

0.5

0.4

0.3

0.2

0.1

0.0

−3

−2

−1

1

2

3

0

x

  Figure A.1

  True density (dashed curve) and estimated density with  h  = 0.25 (solid curve)

 Figure   A.1   shows  a  kernel  density  estimate  for  these  data  using  the  Gaussian
kernel  with  bandwidth   h   =  0.25  (the  solid  curve)  along  with  the  true  underlying
density (the dashed curve). The 20 data points are marked by vertical lines above
the horizontal axis. Centered at each data point is its contribution to the overall
⎞
density estimate, namely,
  times  a  normal  density  with
⎟
⎠
mean Xi     and standard deviation  h ). The density estimate (the solid curve) is the
sum of these scaled normal densities. Increasing the value of  h  to 0.6 widens each
normal curve producing a density estimate in which the two modes are less appar-
ent (see Figure  A.2 ).

x X
−⎛
⎜
h
⎝

1
nh

(i.e.,

1
n

K

i

 Assuming that the underlying density is sufficiently smooth and that the kernel
has finite fourth moment, it can be shown that the leading terms in an asymptotic
expansion for the bias and variance of a kernel density estimate are given by

Bias

asy

{ }
ˆ
f x
( )
h

=

2

h
2

m

2

(

2
K f
)

′′

x
( )

Var

asy

{ } =
ˆ
hf x
( )

1
nh

R K f x
) ( )

(

R K
(

)

=

∫

2

K y dy
( )
,

m

2

(

K

)

=

2
y K y dy
( )

∫

 where

Appendix: Nonparametric Smoothing

373

s
e
i
t
i
s
n
e
D
e
u
r
T
&
d
e
a
m

t

i
t
s
E

0.6

0.5

0.4

0.3

0.2

0.1

0.0

-3

-2

-1

1

2

3

0

x

  Figure A.2

  True density (dashed curve) and estimated density with  h  = 0.6 (solid curve)

 (e.g.,  Wand  and  Jones,  1995,  pp.  20–21).  In  addition  to  the  visual  advantage  of
being a smooth curve, the kernel estimate has an advantage over the histogram in
terms of bias. It can be shown that the bias of a histogram estimator with bandwidth
 h  is of order  h , compared to leading bias term for the kernel estimate, which is of
order   h  2 .  Centering  the  kernel  at  each  data  point  and  using  a  symmetric  kernel
makes the bias term of order  h  equal to zero for kernel estimates.

 A widely used choice of an overall measure of the discrepancy between    ˆ¶ h   and

 f  is the mean integrated squared error (MISE), which is given by

MISE(

ˆ
f
h

) E
=

{
∫

−

2

(
ˆ
f y
( )
h
(
ˆ
f y
( )
h

f y
( )

2

)

dy

}
(
ˆ
Var f y
( )
h

)
 Under  an  integrability  assumption  on   f ,  the  asymptotic  mean  integrated  squared
error (AMISE) is given by

Bias

)

dy

dy

∫

∫

+

=

{ }
ˆ
f
h
 The value of the bandwidth that minimizes AMISE is given by

2
K R f
(

AMISE

R K
(

m

=

+

¢¢

)

(

)

2

)

1
nh

4

h
4

h
AMISE

⎡
= ⎢
⎣

m

2

(

R K
)
(
2
K R f
(
)

¢¢

)

1

5

⎤
⎥
⎦

_1

5

n

.

374

Appendix: Nonparametric Smoothing

 The  functional    R(f ″ )    is  a  measure  of  the  underlying  curvature.  In  particular,  the
larger the value of   R(f ″ )   the larger the value of AMISE (i.e., the more difficult it is
to  estimate   f )  and  the  smaller  the  value  of    hAMISE    (i.e.,  the  smaller  the  bandwidth
needed in order to capture the curvature in  f ).

 There  are  many  competing  methods  for  choosing  a  global  value  of  the  band-

width  h . For a recent overview of these methods see Sheather (2004).

 A popular approach commonly called  plug-in methods  is to replace the unknown
quantity   R(f ″ )   in the expression for  h  AMISE  given above by an estimate. This method
is commonly thought to date back to Woodroofe (1970) who proposed it for esti-
mating the density at a given point. Estimating   R(f ″ )   by   R(fg″)   requires the user to
choose the bandwidth  g  for this estimate. There are many ways this can be done.
We next describe the “solve-the-equation” plug-in approach developed by Sheather
and Jones (1991), since this method is widely recommended (e.g., Simonoff, 1996,
p. 77; Bowman and Azzalini, 1997, p. 34; Venables and Ripley, 2002, p. 129) and
it is available in R, SAS and Stata.

 Different versions of the plug-in approach depend on the exact form of the esti-
mate of   R(f ″ )  . The Sheather and Jones (1991) approach is based on writing  g , the
bandwidth for the estimate   R( ˆf ″ )  , as a function of  h , namely,

g h
( )

=

C K R f
)[
(

(

¢¢

) /

R f
(

¢¢¢

)]

1

7

5

7

h

 and  estimating  the  resulting  unknown  functionals  of   f   using  kernel  density  esti-
mates with bandwidths based on a normality assumption on  f . In this situation, the
only unknown in the following equation is  h .

h

=

⎡
⎢
⎢
⎣

R K
(
2
K R
)

)

(

m

2

(

¢¢

ˆ
f

g h
(

1

5

⎤
⎥
⎥
⎦

)

)

_

1

n

5

.

 The  Sheather–Jones  plug-in  bandwidth,   h  SJ   is  the  solution  to  this  equation.  For
hard-to-estimate densities (i.e., ones for which |   f ″ ( x )   | varies widely due, for example,
to  the  existence  of  many  modes)  the  Sheather–Jones  plug-in  bandwidth  tends  to
over-smooth and the method known as least squares cross-validation (Bowman and
Azzalini, 1997, p. 32) can be recommended. However, in settings in which para-
metric  regression  models  are  appropriate,  the  Sheather–Jones  plug-in  bandwidth
appears to perform well.

  A.2  Nonparametric Regression for a Single Predictor

 In this section we provide a brief practical description of nonparametric regression
for a single predictor, which is sometimes called scatter plot smoothing. In this sec-
tion we are interested in nonparametric estimates of the regression function,  m ( . )
under  the  assumption  of  iid  errors  with  constant  variance.  Thus,  in  symbols,  we
assume the following model for  i  = 1, …,  n

Appendix: Nonparametric Smoothing

375

Y m x
=
i
i

(

)

+

e
i

=

E(

Y X x
i

=

|

)

+

e
.
i

 We shall consider two classes of estimators, namely, local polynomial kernel estimators
and penalized linear regression splines.

  A.2.1  Local Polynomial Kernel Methods

 Local polynomial kernel methods (Stone, 1977; Cleveland, 1979) are based on the
idea of approximating  m ( x ) by a low-order polynomial putting highest weight on
the values of  y  corresponding to  x   i  ’s closest to  x . According to Cleveland (1979),
the idea of local fitting of polynomials to smooth scatter plots of time series, meas-
ured at equally spaced time points, dates back to at least the 1930s. The local poly-
nomial estimator    mˆ p  (x)  is the value of   b 0  that minimizes

n

∑

i

=

1

{

y
i

−

b
0

−

(
b x
i
1

−

x

)

−

(
b x
2

i

−

x

2

)

⋯

−

(
b x
p

i

−

x

p

)

}2

1
h

K

⎛
⎜
⎝

x

i

−
h

x

⎞
⎟
⎠

 where once again the kernel,  K  satisfies   ∫ K(x)dx = 1   and the smoothing parameter,
 h  is known as the bandwidth.

 The  local  constant  estimator  is  obtained  by  setting   p   =  0  in  the  last  equation.

Thus, in this case we seek to minimize

n

∑

i

=

1

{
y
i

−

b
0

2

}

1
h

K

⎛
⎜
⎝

x
i

−
h

x

⎞
⎟
⎠

 Differentiating with respect to b0 and setting the result to zero gives

−

2

n

∑

i

=

1

{
y
i

−

}0
b

1
h

K

⎛
⎜
⎝

x
i

−
h

x

⎞
⎟
⎠

=

0

 Solving this equation for  b  0  gives the local constant estimator mˆ 0 ( x )   where

n

∑

i

=

1
n

ˆ ( )
m x
0

=

y K
i

x

⎞
⎟
⎠

x
i

⎛
⎜
⎝
x
i

−
h
−
h

⎛
⎜
⎝

x

⎞
⎟
⎠

K

∑

i

=

1

 This estimator is also known as the Nadaraya-Watson estimator, as they were the
first to propose its use (Nadaraya, 1964; Watson, 1964). It is also possible to derive
an explicit regression for the local linear estimator   mˆ 1 (x)   (see, e.g., Wand and Jones,
1997, pp. 119, 144).

 Choosing a higher degree polynomial leads in principle to a better approxi-
mation  to  the  underlying  curve  and  hence  less  bias.  However,  it  also  leads  to
greater  variability  in  the  resulting  estimate.  Loader   (1999,  p.  22)  provides  the
following advice:

376

Appendix: Nonparametric Smoothing

 It  often  suffices  to  choose  a  low  degree  polynomial  and  concentrate  on  choosing  the
bandwidth  to  obtain  a  satisfactory  fit.  The  most  common  choices  are  local  linear  and
local  quadratic.  …  a  local  constant  fit  is  susceptible  to  bias  and  is  rarely  adequate.  A
local linear estimate usually performs better, especially at boundaries. A local quadratic
estimate  reduces  bias  further,  but  increased  variance  can  be  a  problem,  especially  at
boundaries. Fitting local cubic and higher orders rarely produces much benefit.

 Based on their experience, Ruppert, Wand and Carroll (2003, p. 85) recommend
 p  = 1 if the regression function is monotonically increasing (or decreasing) and  p  = 2
otherwise.

 For illustration purposes we shall consider a generated data set. The data con-
sists  of   n   =  150  pairs  of  points  ( x   i  ,   y   i  )  where    yi = m(xi) + ei    with   x   i    equally  spaced
from 0 to 1, ei ∼ N(0,σ2 = 4) and

m

(

x
i

(
) 15 1

=

+

x
i

cos(4

xp
i

)

)

 The data can be found on the book web site in the file curve.txt.

 Figure   A.3   shows  a  local  linear  regression  estimate  for  these  data  using  the
Gaussian  kernel  with  bandwidth   h   =  0.026  (the  solid  curve)  along  with  the  true
underlying curve (the dashed curve). The value of the bandwidth was chosen using
the plug-in bandwidth selector of Ruppert, Sheather and Wand (2005). Marked as
a dashed curve on Figure  A.3  is the weight function for each xi used to estimate the

1
curve at  x  = 0.5, namely,
h
standard deviation  h ).

K

⎛
⎜
⎝

0.5

ix

−
h

⎞
⎟
⎠

   (i.e., a normal density with mean 0.5 and

 Decreasing the value of  h  fivefold to 0.005, shrinks each normal curve so that each
straight line is effectively fit over a very small interval. This produces a curve estimate
which  is  much  too  wiggly  (see  the  top  panel  of  Figure   A.4 ).  On  the  other  hand,
increasing  the  value  of   h   fivefold  to  0.132  widens  each  normal  curve  so  that  each
straight line is effectively fit over a very large interval. This produces a curve estimate
which  is  clearly  over-smoothed,  missing  the  bottom  or  the  top  of  the  peaks  in  the
underlying curve (see the bottom panel of Figure  A.4 ). As the bandwidth  h  approaches
infinity the local linear regression estimate will approach a straight line.

 Thus far, in this section we have considered an example based on equally spaced
 x ’s. In settings in which parametric regression models are generally appropriate it
is common for the  x ’s not to be equally spaced. In particular, outliers, and sparse
regions in the  x  values are common when the distribution of  x  is skewed. In such
situations using a fixed value of the bandwidth  h  can be problematic, since there
may be very few (sometime even no) points in certain regions of the  x -axis so that
it is not possible to fit a local polynomial for certain values of  x . One way of solving
this problem is to adjust the bandwidth with the value of  x  so that the number of
points used to estimate  m ( x ) effectively remains the same for all values of  x . This
is achieved using the concept of the  nearest neighbor bandwidth .

 For  i  = 1, 2, …,  n , let di(x) denote the distance  x   i   is away from  x , then

di(x) = |x–xi|

Appendix: Nonparametric Smoothing

377

s
e
v
r
u
C
e
u
r
T
&
d
e
t
a
m

i
t
s
E

35

30

25

20

15

10

5

0

0.0

0.1

0.2

0.3

0.4

0.5

0.6

0.7

0.8

0.9

1.0

x

  Figure A.3

  True curve (dashed) and estimated curve with  h  = 0.026 (solid)

s
e
v
r
u
C
e
u
r
T
&
d
e
t
a
m

i
t
s
E

s
e
v
r
u
C
e
u
r
T
&
d
e
a
m

t

i
t
s
E

30

15

5

30

15

5

0.0

0.2

0.4

0.6

0.8

1.0

x

0.0

0.2

0.4

0.6

0.8

1.0

x

  Figure A.4
 h  = 0.132 (lower panel)

  True curve (dashed) and estimated curves (solid) with  h  = 0.005 (upper panel) and

378

Appendix: Nonparametric Smoothing

The   nearest  neighbor  bandwidth ,   h ( x )  is  defined  to  be  the   k th  smallest    di(x)    .  In
practice, the choice of  k  is based on what is commonly called the  span  a, namely,

k

na= ⎢
⎣

⎦.
⎥

 Thus,  the  span  plays  the  role  of  a  smoothing  parameter  in  nearest  neighbor
bandwidths.

 Cleveland (1979) proposed the use of local linear regression estimators based on

nearest neighbor bandwidths with the tricube kernel function

K

y
( )

=

1

(

−

y

3

) (

I

y

<

)
1 .

 Cleveland (1979) also incorporated a robustness step in which large residuals were
down  weighted.  This  estimator  is  typically  referred  to  as   lowess .  Cleveland  and
Devlin (1988) studied the properties of local linear regression estimators based on
nearest neighbor bandwidths with the tricube kernel without a robustness step. This
estimator is typically referred to as  loess .

 Figure  A.5  shows the loess estimate based on  p  = 2 (i.e., local quadratic) with
span    a  =  1/3    (the  solid  curve),  along  with  the  true  underlying  curve  (the  dashed
curve). This value of the span was chosen by eye as the value that gave a curve that
seemed to best match the data.

 The loess estimate with span   a = 1/3   in Figure  A.5  fits the data well. Increasing the
span to   a = 2/3  , produces a curve estimate which is slightly over-smoothed, missing

35

30

25

20

15

10

5

s
e
v
r
u
C
e
u
r
T
&
d
e
a
m

t

i
t
s
E

0.0

0.2

0.4

0.6

0.8

1.0

x

  Figure A.5

  True curve (dashed) and estimated curve (solid) with span = 1/3

Appendix: Nonparametric Smoothing

379

s
e
v
r
u
C
e
u
r
T
&
d
e

t

a
m

i
t
s
E

s
e
v
r
u
C
e
u
r
T
&
d
e
t
a
m

i
t
s
E

30

15

5

30

15

5

0.0

0.2

0.4

0.6

0.8

1.0

x

0.0

0.2

0.4

0.6

0.8

1.0

x

  Figure A.6
span = 0.05 (lower panel)

  True curve (dashed) and estimated curves (solid) with span = 2/3 (upper panel) and

the  bottom  or  the  top  of  the  peaks  in  the  underlying  curve  (see  the  top  panel  of
Figure  A.6 ). On the other hand, decreasing the value of the span to α = 0.05 produces
a curve estimate which is much too wiggly (see the bottom panel of Figure  A.6 ).

 Nearest neighbor bandwidths do not perform well if the  x -space is sparse when
the  curve  is  wiggly  and/or  the   x -space  is  dense  when  the  curve  approximates  a
straight line. Fortunately, this is a highly unusual situation.

 The marginal model plot method, proposed by Cook and Weisberg (1997) and
described in Chapters 6 and 8, is based on loess fits. This is a natural choice for
regression  with  continuous  predictor  and  outcome  variables  due  to  the  ability  of
loess to cope with sparse regions in the  x -space. However, its use for binary out-
come variables can be questioned, since it seems that no account is taken of the fact
that  binary  data  naturally  have  nonconstant  variance.  In  this  situation  one  could
consider a local likelihood estimator, which takes account of the binomial nature of
the data (see, e.g., Bowman and Azzalini, 1997, p. 55).

  A.2.2  Penalized Linear Regression Splines

 Another increasingly popular method for scatter plot smoothing is called penalized
linear regression splines, which we discuss in this section. However, we begin by
discussing linear regression splines.

380

Appendix: Nonparametric Smoothing

 Linear regression splines are based on the inclusion of the following term as a

predictor

(

x

−

c

)

+

=

{x c
−
0

if
if

x c
>
x c
≤

 The inclusion of   (x – c)+   as a predictor produces a fitted model which resembles a
broken stick, with the break at  c , which is commonly referred to as a knot. Thus,
this  predictor  allows  the  slope  of  the  line  to  change  at   c .  (See  Figure  10.16  for
details.) In order to make the model as flexible as possible, we shall add a large
number of knots  c   1  , …., c   K   and hence consider the following model

K

y

=

b + b
1

0

x

+

b x
(
i
1

−

c
i

)

+

+

e

(A.1)

∑

i

1

=
 We shall see that two approaches are possible for choosing the knots, corresponding to
whether the coefficients   b1i   in (A.1) are treated as fixed or random effects. If the coef-
ficients are treated as fixed effects, then a number of knots can be removed leaving only
those necessary to approximate the function. As demonstrated in Chapter 10, this is
feasible if there are a relatively small number of potential knots. However, if there are a
large number of potential knots, removing unnecessary knots is a “highly computation-
ally intensive” variable selection problem (Ruppert, Wand and Carroll, 2003, p. 64).

 We next investigate what happens if the coefficients   b1i   in (A.1) are treated as random

effects. In order to do this we consider the concept of penalized regression splines.

An  alternative  to  removing  knots  is  to  add  a  penalty  function  which  constrains
their  influence  so  that  the  resulting  fit  is  not  overfit  (i.e.,  too  wiggly).  A  popular

K

penalty is to ensure that the   b1i   in (A.1) satisfy

C

,  for some constant  C , which

2
<∑
b
i
1

i

=

1

has  to  be  chosen.  The  resulting  estimator  is  called  a   penalized  linear  regression
spline . As explained by Ruppert, Wand and Carroll (2003, p. 66) adding this pen-
alty is equivalent to choosing b0 b1,b11, b12, ... b1K to minimize

1 n
∑
n

1

=

i

(
y
i

−

b

0

−

b
1

x
i

2

)

+

l

K

2
∑
b
i
1

i

=

1

(A.2)

 for some number   l ³ 0  , which determines the amount of smoothness of the result-
ing fit. The second term in (A.2) is known as a roughness penalty because it penal-
izes fits which are too wiggly (i.e., too rough). Thus, minimizing (A.2) shrinks all
the  b  1 i   toward zero. Contrast this with treating the  b  1 i   as fixed effects and removing
unnecessary knots, which reduces some of the  b  1 i   to zero.

 The concept of random effects and shrinkage is discussed in Section 10.1. In view of
the connection between random effects and shrinkage, it is not too surprising that there
is a connection between penalized regression splines and mixed models. Put briefly, the
connection is that fitting model (A.1) with   b0   and b1 treated as fixed effects and   b11, b12,
... b1K   treated as random effects is equivalent to minimizing the penalized linear spline
criterion (A.2) (see Ruppert, Wand and Carroll, 2003; Section 4.9 for further details).

 Speed   (1991)  explicitly  made  the  connection  between  smoothing  splines  and
mixed models (although it seems that this was known earlier by a number of the

Appendix: Nonparametric Smoothing

381

proponents  of  spline  smoothing).  Brumbac k,  Ruppert  and  Wand  (1999)  made
explicit the connection between penalized regression splines and mixed models.

 An important advantage of treating (A.1) as a mixed model is that we can then
use  the  likelihood  methods  described  in  Sect.  10.1  to  obtain  a  penalized  linear
regression spline fit.

 Finally,  one  has  to  choose  the  initial  set  of  knots.  Ruppert,  Wand  and  Carroll
(2003,  p.  126)  recommend  that  the  knots  be  chosen  at  values  corresponding  to
quantiles of  x   i  , while other authors prefer equally spaced knots. Ruppert, Wand and
Carroll  (2003,  p.  126)  have  found  that  the  following  default  choice  for  the  total
number of knots K “usually works well”:

K

=

min

1
⎛
×⎜
⎝
4

number of unique

ix

⎞
,35
⎟
⎠

 Figure  A.7  shows a penalized linear regression spline fit obtained by fitting (A.1)
using  restricted  maximum  likelihood  or  REML  (the  solid  curve)  along  with  the
true  underlying  curve  (the  dashed  curve).  The  equally  spaced  knots,  which  are
0.02 apart, are marked by vertical lines on the horizontal axis. Notice this is many
more knots than is suggested by the rule above and it does not have any adverse
effects  on  the  fit.  Increasing  the  spacing  of  the  knots  to  0.15  produces  a  curve
estimate which is jagged, missing the bottom or the top of the peaks in the under-
lying  curve  and  thus  illustrating  the  problems  associated  with  choosing  too  few
knots (see Figure  A.8 ).

35

30

25

20

15

10

5

s
e
v
r
u
C
e
u
r
T
&
d
e
a
m

t

i
t
s
E

0.0

0.2

0.4

0.6

0.8

1.0

x

  Figure A.7

  True curve (dashed) and estimated curve (solid) with knots 0.02 apart

382

Appendix: Nonparametric Smoothing

35

30

25

20

15

10

5

s
e
v
r
u
C
e
u
r
T
&
d
e

t

a
m

i
t
s
E

0.0

0.2

0.4

0.6

0.8

1.0

x

  Figure A.8

  True curve (dashed) and estimated curve (solid) with knots 0.15 apart

 Recently, Krivobokova  and Kauermann (2007) studied the properties of penal-
ized splines when the errors are correlated. They found that REML-based fits are
more robust to misspecifying the correlation structure than fits based on general-
ized cross-validation or AIC. They also demonstrated the simplicity of obtaining
the REML-based fits using R.

   References

                 Abraham B and Ledolter J (2006) Introduction to regression modeling. Duxbury, MA.
Alkhamisi     MA    and    Shukur     G       (2005)     Bayesian analysis of a linear mixed model with AR(p)
errors via MCMC  .   Journal of Applied Statistics  ,   32  ,   741  –  755  .
    Anscombe     F       (1973)     Graphs in statistical analysis  .   The American Statistician  ,   27  ,   17  –  21  .
  Anonymous (2005) Michelin guide New York City 2006. Michelin Travel Publications, Greenville,

South Carolina.

    Atkinson     A    and    Riani     M       (2000)     Robust diagnostic regression analysis  .   Springer  ,   New York  .
    Belenky      G   ,     Wesensten      NJ   ,     Thorne      DR   ,     Thomas      ML   ,     Sing      HC   ,     Redmond      DP   ,     Russo      MB   ,  and
   Balkin     TJ       (2003)     Patterns of performance degradation and restoration during sleep restriction
and subsequent recovery: a sleep does response study  .   Journal of Sleep Research  ,   12  ,   1  –  12  .
    Bowman     A    and    Azzalini     A       (1997)     Applied smoothing techniques for data analysis: The Kernel

approach with S-plus illustrations  .   University Press  ,   Oxford  .

    Box      GEP     and     Cox      DR        (1964)      An  analysis  of  transformations  .    Journal  of  the  Royal  Statistical

Society, Series B  ,   26  ,   211  –  252  .

    Bradbury     JC       (2007)     The baseball economist  .   Dutton  ,   New York  .
    Brook     S       (2001)     Bordeaux – people, power and politics, pp. 104, 106  .   Mitchell Beazley  ,   London  .
Brumback BA, Ruppert D and Wand MP (1999) Comment on Shively, Kohn and Wood.  Journal

of the American Statistical Association , 94, 794–797.

    Bryant      PG     and     Smith      MA        (1995)      Practical  data  analysis  -  Cases  in  business  statistics  .    Irwin  ,

  Chicago  .

    Burnham      KP     and     Anderson      DR        (2004)      Understanding  AIC  and  BIC  in  model  selection  .

  Sociological Methods & Research  ,   33  ,   261  –  304  .

    Carlson     WL       (1997)     Cases in managerial data analysis  .   Duxbury  ,   Belmont, CA  .
    Casella       G    and    Berger     R        (2002)      Statistical inference   (  2nd   edn).   Duxbury ,      Pacific Grove ,  CA .
    Chatterjee     S    and    Hadi     AS       (1988)     Sensitivity analysis in linear regression  .   Wiley  ,   New York  .
    Cleveland     W       (1979)     Robust locally weighted regression and smoothing scatterplots  .   Journal of

the American Statistical Association  ,   74  ,   829  –  836  .

    Coates     C       (2004)     The wines of Bordeaux – vintages and tasting notes 1952–2003  .   University of

California Press  ,   California.

    Cochrane     AL   ,    St Leger     AS   , and    Moore     F       (1978)     Health service “input” and mortality “output” in

developed countries  .   Journal Epidemiol Community Health     32  ,   200  –  205  .

    Cochrane     D    and    Orcutt     GH       (1949)     Application of least squares regression to relationships con-
taining  autocorrelated  error  terms  .    Journal  of  the  American  Statistical  Association  ,    44  ,
  32  –  61  .

    Cook      RD        (1977)      Detection  of  influential  observations  in  linear  regression  .    Technometrics  ,    19  ,

  15  –  18  .

    Cook     RD    and    Weisberg     S       (1994)     Transforming a response variable for linearity  .   Biometrika  ,   81  ,

  731  –  737  .

383

384

References

    Cook      RD     and     Weisberg      S        (1997)      Graphic  for  assessing  the  adequacy  of  regression  models  .

  Journal of the American Statistical Association  ,   92  ,   490  –  499  .

    Cook      RD     and     Weisberg      S        (1999a)      Graphs  in  statistical  analysis:  is  the  medium  the  message?

The American Statistician  ,   53  ,   29  –  37  .

    Cook     RD    and    Weisberg     S       (1999b)     Applied regression including computing and graphics  .   Wiley  ,

  New York  .

  Chu  S  (1996)  Diamond  ring  pricing  using  linear  regression.   Journal  of  Statistics  Education ,  4,

 http://www.amstat.org/publications/jse/v4n3/datasets.chu.html

    Diggle     PJ   ,    Heagerty     P   ,    Liang     K-Y   , and    Zeger     SL       (2002)     Analysis of Longitudinal Data (2nd edn)  .

  Oxford University Press  ,   Oxford  .

    Efron      B   ,     Hastie      T   ,     Johnstone      I   ,  and     Tibshirani      R        (2004)      Least  angle  regression  .    Annals  of

Statistics  ,   32  ,   407  –  451  .

    Fitzmaurice      GM   ,     Laird      NM   ,  and     Ware      JH        (2004)      Applied  longitudinal  analysis  .    Wiley  ,

New York  .

    Frees     EW       (2004)     Longitudinal and panel data  .   Cambridge University Press  ,   Cambridge  .
    Flury      B     and     Riedwyl      H        (1988)      Multivariate  statistics:  A  practical  approach  .    Chapman  &  Hall  ,

  London  .

    Foster     DP   ,    Stine     RA   , and    Waterman     RP       (1997)     Basic business statistics  .   Springer  ,   New York  .
    Fox     J       (2002)     An R and S-PLUS companion to applied regression  .   Sage  ,   California  .
    Furnival      GM     and     Wislon      RW        (1974)      Regression  by  leaps  and  bounds  .    Technometrics  ,    16  ,

  499  –  511  .

    Gathje      C     and     Diuguid      C        (2005)      Zagat  survey  2006:  New  York  city  restaurants  .    Zagat  Survey  ,

New York  .

    Hald     A       (1952)  .   Statistical theory with engineering applications  .   Wiley  ,   New York  .
    Hastie      T   ,     Tibshirani      R   ,  and     Friedman      J        (2001)      The  elements  of  statistical  learning  .    Springer  ,

New York  .

    Hesterberg     T   ,    Choi     NH   ,    Meier     L   , and    Fraley     C       (2008)     Least angle and l 1  penalized regression: A

review  .   Statistics Surveys  ,   2  ,   61  –  93  .

    Hill      RC   ,     Giffiths      WE   ,  and     Judge      GG        (2001)      Undergraduate  econometrics  (2nd  edn)  .    Wiley  ,

New York  .

    Hinds      MW        (1974)      Fewer  doctors  and  infant  survival  .    New  England  Journal  of  Medicine  ,    291  ,

  741  .

    Hoaglin      DC     and     Welsh      R        (1978)      The  hat  matrix  in  regression  and  ANOVA  .    The  American

Statistician  ,   32  ,   17  –  22  .

    Houseman     EA   ,    Ryan     LM   , and    Coull     BA       (2004)     Cholesky residuals for assessing normal errors in
a  linear  model  with  correlated  errors  .    Journal  of  the  American  Statistical  Association  ,    99  ,
  383  –  394  .

    Huber     P       (1981)     Robust statistics  .   Wiley  ,   New York  .
    Hurvich     CM    and    Tsai     C-H       (1989)     Regression and time series model selection in small samples  .

  Biometrika  ,   76  ,   297  –  307  .

    Jalali-Heravi     M    and    Knouz     E       (2002)     Use of quantitative structure-property relationships in pre-
dicting  the  Krafft  point  of  anionic  surfactants  .    Electronic  Journal  of  Molecular  Design  ,    1  ,
  410  –  417  .

    Jayachandran     J    and    Jarvis     GK       (1986)     Socioeconomic development, medical care and nutrition as
determinants of infant mortality in less developed countries  .   Social Biology  ,   33  ,   301  –  315  .
    Kay     R    and    Little     S       (1987)     Transformations of the explanatory variables in the logistic regression

model for binary data  .   Biometrika  ,   74  ,   495  –  501  .

    Keri      J       (2006)   Baseball between the numbers  .   Basic Books  ,   New York  .
Krivobokova  T  and  Kauermann  G  (2007)  A  note  on  penalized  spline  smooting  with  correlated

errors. Journal of the American Statistical Association, 102, 1328–1337.

    Kronmal     RA       (1993)     Spurious correlation and the fallacy of the ratio standard revisited  .   Journal of

the Royal Statistical Society A  ,   156  ,   379  –  392  .

  Langewiesche W (2000) The million-dollar nose. Atlantic Monthly, 286(6), December, 20.

References

385

    Leeb     H    and    Potscher     BM       (2005)     Model selection and inference: facts and fiction  .   Econometric

Theory  ,   21  ,   21  –  59  .

    Li      KC        (1991)      Sliced  inverse  regression  (with  discussion)  .    Journal  of  the  American  Statistical

Association  ,   86  ,   316  –  342  .

    Li      KC     and     Duan      N        (1989)      Regression  analysis  under  link  violation  .    Annals  of  Statistics  ,    17  ,

  1009  –  1052  .

Loader C (1999) Local regression and likelihood. Springer, New York.
    Mantel     N       (1970)     Why stepdown procedures in variable selection  ?   Technometrics  ,   12  ,   621  –  625  .
    Maronna      RA   ,     Martin      RD   ,  and     Yohai      VJ        (2006)      Robust  statistics:  theory  and  methods  .    Wiley  ,

New York  .

    Menard     S       (2000)     Coefficients of determination for multiple logistic regression analysis  .   American

Statistician  ,   54  ,   17  –  24  .

    Montgomery     DC   ,    Peck     EA   , and    Vining     GG       (2001)     Introduction to linear regression analysis (3rd

edn.)  .   Wiley  ,   New York  .

    Mosteller     F    and    Tukey     JW       (1977)     Data analysis and regression  .   Addison-Wesley  ,   Reading, MA  .
    Nadaraya      EA        (1964)      On  estimating  regression  .    Theory  of  Probability  and  its Applications  ,    10  ,

  186  –  190  .

    Neyman     J       (1952)     Lectures and conferences on mathematical statistics and probability (2nd edn,

pp. 143–154)  .   US Department of Agriculture  ,   Washington DC  .

    Nobre     JS    and    Singer     JM       (2007)     Residual analysis for linear mixed models  .   Biometrical Journal  ,

  49  ,   1  –  13  .

    Paige     CC       (1979)     Computer solution and perturbation analysis of generalized linear least squares

problems  .   Mathematics of Computation  ,   33  ,   171  –  183  .

    Parker       R M       Jr       (2003)     Bordeaux – a consumer’s guide to the world’s finest wines   (  4th   edn).   Simon

& Schuster  ,   New York  .

    Pearson     K        (1897)      Mathematical contributions to the theory of evolution: On a form of spurious
correlation which may arise when indices are used in the measurement of organs  .   Proceedings
of the Royal Society London  ,   60  ,   489  –  498  .

    Pettiti     DB       (1998)     Hormone replacement therapy and heart disease prevention: Experimentation

trumps observation  .   Journal of the American Medical Association  ,   280  ,   650  –  652  .

    Pinheiro     JC    and    Bates     DM       (2000)     Mixed effects models in S and S-PLUS  .   Springer  ,   New York  .
    Potthoff     RF    and    Roy     SN       (1964)     A generalized multivariate analysis of variance model especially

useful for growth curve problems  .   Biometrika  ,   51  ,   313  –  326  .

    Pourahmadi     M       (2001)     Foundations of time series analysis and prediction theory  .   Wiley  ,   New York  .
  Prais SJ and Winsten CB (1954) Trend Estimators and Serial Correlation. Cowles Commission

Discussion Paper No 383, Chicago.

    Pregibon     D       (1981)     Logistic regression diagnostics  .   The Annals of Statistics  ,   9  ,   705  –  724  .
    Ruppert     D   ,    Wand     MP   , and    Carroll     RJ       (2003)     Semiparametric regression  .   Cambridge University

Press  ,   Cambridge  .

    Sankrithi     U   ,    Emanuel     I   , and    Van Belle     G       (1991)     Comparison of linear and exponential multivari-
ate  models  for  explaining  national  infant  and  child  mortality  .    International  Journal  of
Epidemology  ,   2  ,   565  –  570  .

    Schwarz     G       (1978)     Estimating the dimension of a model  .   Annals of Statistics  ,   6  ,   461  –  464  .
    Sheather     SJ       (2004)     Density estimation  .   Statistical Science  ,   19  ,   588  –  597  .
    Sheather     SJ    and    Jones     MC       (1991)     A reliable data-based bandwidth selection method for kernel

density estimation  .   Journal of the Royal Statistical Society, Series B  ,   53  ,   683  –  669  .

    Shmueli      G   ,     Patel      NR   ,  and     Bruce      PC        (2007)      Data  mining  for  business  intelligence  .    Wiley  ,

New York  .

    Siegel     A       (1997)     Practical business statistics (3rd edn)  .   Irwin McGraw-Hill  ,   Boston  .
    Simonoff     JS       (1996)     Smoothing methods in statistics  .   Springer  ,   New York  .
    Simonoff     JS       (2003)     Analyzing categorical data  .   Springer  ,   New York  .
    Snee      RD        (1977)      Validation  of  regression  models:  methods  and  examples  .    Technometrics  ,    19  ,

  415  –  428  .

386

References

Speed T (1991) Comment of the paper by Robinson, Statistical Science, 6, 42–44.
    St Leger     S       (2001)     The anomaly that finally went away  ?   Journal of Epidemiology and Community

Health  ,   55  ,   79  .

    Stamey     T   ,    Kabalin     J   ,    McNeal     J   ,    Johnstone     I   ,    Freiha     F   ,    Redwine     E   , and    Yang     N       (1989)     Prostate
specific antigen in the diagnosis and treatment of adenocarcinoma of the prostate II, radical
prostatectomy treated patients  .   Journal of Urology  ,   16  ,   1076  –  1083  .

    Stigler      S        (2005)      Correlation  and  causation:  a  comment  .    Perspectives  in  Biology  and  Medicine  ,

  48  (1 Suppl.)  ,   S88  –  S94  .

    Stone     CJ       (1977)     Consistent nonparametric regression  .   Annals of Statistics  ,   5  ,   595  –  620  .
    Tibshirani      R        (1996)      Regression  shrinkage  and  selection  via  the  lasso  .    Journal  of  the  Royal

Statistical Society, Series B  ,   67  ,   385  –  395  .

    Tryfos     P       (1998)     Methods for business analysis and forecasting: text & cases  .   Wiley  ,   New York  .
    Velilla     S       (1993)  .   A note on the multivariate Box-Cox transformation to normality  .   Statistics and

Probability Letters  ,   17  ,   259  –  263  .

    Venables      WN     and     Ripley      BD        (2002)  .    Modern  applied  statistics  with  S  (4th  edn)  .    Springer  ,

New York  .

    Wand     MP    and    Jones     MC       (1995)     Kernel smoothing  .   Chapman & Hall  ,   London  .
    Wasserman      L        (2004)      All  of  statistics:  A  concise  course  in  statistical  inference  .    Springer  ,

New York  .

    Watson     GS       (1964)     Smooth regression analysis  .   Sankhya – The India Journal of Statistics Series

A  ,   26  ,   101  –  116  .

    Weisberg     S       (2005)     Applied linear regression (3rd edn)  .   Wiley  ,   New York  .
    Weiss     RE       (2005)     Modeling longitudinal data  .   Springer  ,   New York  .
    Woodroofe      M        (1970)      On  choosing  a  delta-sequence  .    Annals  of  Mathamatical  Statistics  ,    41  ,

  1665  –  1671  .

    Yang      R     and     Chen      M        (1995)      Bayesian  analysis  for  random  coefficient  regression  models  using

noninformative priors  .   Journal of Multivariate Analysis  ,   55  ,   283  –  311  .

    Zhou      S     and     Shen      X        (2001)      Spatially  adaptive  regression  splines  and  accurate  knot  selection

schemes  .   Journal of the American Statistical Association  ,   96  ,   247  –  259  .

    Zou     H   ,    Hastie     T   , and    Tibshirani     R       (2007)     On the “Degrees of Freedom” of the Lasso  .   Annals of

Statistics  ,   35  ,   2173  –  2192  .

Index

A
Added-variable plots

mathematical justification  163–165
purpose  162

Adjusted R-squared  137, 228
Analysis of covariance

coincident regression lines  140
equal intercepts but different slopes  140
parallel regression lines  140
partial F-test  143–144
unrelated regression lines  140–141

Analysis of variance

ANOVA table  30, 136
connection with t-tests  30
F-statistic  29–30, 136
graphical depiction  29
hypotheses tested  27, 135–136
partial F-test  143–144
regression sum of squares  28
residual sum of squares  28
total sum of squares  28

Assumptions

list of methods for checking

assumptions  50–51, 151–152
necessary for inference in simple

linear regression  21

Autocorrelation  308
Autoregressive process of order 1, AR(1)

310–311, 312, 315–316

B
Binary data  277
Binomial distribution  263–264
Box-Cox transformation method

transforming only the predictor(s)  98–99
transfoming only the response  89,

91–93, 172

transforming both the response and the

predictor(s)  95–96, 176–177

C
Causal relationship  215
Cholesky

decomposition  316–317, 351–352
residuals  350–353

Cochrane-Orcutt transformation  315
Collinearity diagnostics  203
Confounding covariate  213
Cook’s distance  67–68
Correlation  2, 30, 60, 89, 195, 203, 210,223,

295, 308, 334, 346, 353

D
Degrees of freedom  22
Dependent variable  15
Diagnostic plots for binary logistic regression
boxplots of each predictor against Y

285–286

marginal model plots  286–288
plots of each pair of predictors with

different slopes for each value of Y  289

plot of standardized deviance residuals

against leverage values  291

Diagnostic plots for regression models
added-variable plots  162–166
boxplots of the response variable against

any dummy variables  205

inverse response plot  86–87
marginal model plots  191–192
plots produced automatically by R  70
plot of resduals or standardized residuals

against each predictor  155–156
plot of |Standardized residuals|0.5 against

each predictor  73

plot of response variable against fitted

values  156

Q-Q plot of standardized residuals  70
scatter plot matrix of the response variable

and the predictors  168–169

387

388

Dummy variable

explanation  2, 30–33

E
Examples based on generated data

Amount spent on travel (travel.txt)

141–144

Index

Estimating the price elasticity of a food
product using a single predictor
(confood1.txt)  80–83

Estimating the price elasticity of a food
product using multiple predictors
(confood2.txt)  305–310, 313–314,
317–319, 320

Government salary data (salarygov.txt)

Anscombe’s four data sets (anscombe.txt)

95–102

45–50

Huber’s data with good and bad leverage
points (huber.txt)  53–55, 57–58

Gross box office receipts for movies

screened in Australia (boxoffice.txt)
325–328

Mantel’s variable selection data (Mantel.txt)

Hald’s cement data (Haldcement.txt)

252–255

255–260

McCulloch’s example of a “good” and

“bad” leverage point  51–53
Mixture of two normal distributions

(bimodal.txt) 371–373

Nonlinear predictors and residual plots

(nonlinear.txt)  160–163

Nonparametric regression data (curve.txt)

376–379, 381–382

Overdue bills (overdue.txt)  146–147
Residual plot caution (caution.csv)  158–161
Response transformation

(responsetransformation.txt)  84–88
Spurious correlation (storks.txt)  211–213
Time taken to process invoices (invoices.txt)

39–40

Examples based on real data

Advertising revenue (AdRevenue.csv)  105
Airfares (airfares.txt)  103–104
Assessing the ability of NFL kickers
(FieldGoals2003to2006.csv)  1–3
Australian Institute of Sport (ais.txt)  297
Baseball playoff appearances (playoffs.txt)

294–296

Box office ticket sales for plays on
Broadway (playbill.csv)  38–39

Bridge construction (bridge.txt)  195–203,

233–236, 237–238

Cargo management at a Great Lakes port

(glakes.txt)  106–109

Change-over times in a food processing
center (changeover_times.txt)  31–33

Counterfeit banknotes (banknote.txt)

302–303

Heart disease (HeartDisease.csv)  297–301
Housing indicators (indicators.txt)  39
Interest rates in the Bay Area (BayArea.txt)

319, 321–325

Krafft point (krafft.txt)  221–224
Magazine revenue (magazines.csv)  177–183
Menu pricing in a new Italian restaurant in

New York City (nyc.csv)  5–7,
138–140, 144–146, 156–159, 165–166

Michelin and Zagat guides to New

York city restaurants using a sinlge
predictor (MichelinFood.txt)  264–269,
272–274, 276

Michelin and Zagat guides to New York

city restaurants using multiple
predictors (MichelinNY.csv)  277–282,
285–286, 288–295
Miss America pagent

(MissAmericato2008.txt)  296–297
Monthly bookstore sales (bookstore.txt)

328–329

Newspaper circulation (circulation.txt)

4–5, 184–189

Orthodontic growth data (Orthodont.txt)

332–353, 368

PGA tour (pgatour2006.txt)  224–225, 261
Pig weight data (pigweight.txt)  353–369
Price of diamond rings (diamonds.txt)

112–113

Professional salaries (profsalary.txt)

125–130, 190–191

Prostate cancer test data (postateTest.txt)

247–248, 250

Defective rates (defects.txt)  167–175,

Prostate cancer training data

192–195

Developing a bid on contract cleaning

(cleaning.txt, cleaningwtd.txt)  71–79,
117–118, 120–121

Effect of wine critics’ ratings on prices of
Bordeaux wines (Bordeaux.csv)  8–13,
203–210

(prostateTraining.txt)  239–247,
248–250

Quality of Chateau Latour (latour.csv)

147–149

Quarterly beer sales (CarlsenQ.txt)  329
Real estate prices in Houston

(HoustonRealEstate.txt)  122–123

Index

389

Salaries of statistics professors
(ProfessorSalaries.txt)  122
Sleep study (sleepstudy.txt)  369
Students repeating first grade

(HoustonChronicle.csv)  147
Suggested retail price of new cars

(cars04.csv)  109–111, 216–221
Timing of production runs (production.
txt)  15, 19, 20, 23, 24, 27, 30, 70
US treasury bond prices (bonds.txt)

Level of mathematics  13–15
Leverage points

“bad”  52, 55, 60, 64
effect on R-squared  54, 58
“good”  51–52, 55, 60
hat matrix  153
mathematical derivation  55–56
matrix formulation  153–154
numerical rule  56, 154
strategies for dealing with  57–58, 66

61–66

Explanatory variable  15

F
Fitted values

definition  17
plot against Y  156

Flow chart

multiple linear regression  252
simple linear regression  103

G
Generalized least squares  311–313

I
Inference

intercept of the regression line  23–24,

35–36

population regression line  24–25, 36–37
slope of the regression line  21–23, 34–35

Invalid models

examples  45–50
flawed inference  1–3, 66, 311
patterns in residual plots  48–49, 155–162

Inverse response plots  83–89, 169, 171

K
Kernel density estimation

asymptotic properties  372–373
bandwidth  371
definition of estimator  371
kernel  371
Sheather-Jones plug-in bandwidth

selector  374

Line of best fit  17–18
Linear regression splines
definition  358, 380
knot choice  362–366
penalized  380–382

Logarithms

use to estimate percentage effects  79–80, 184

Logistic regression

advice about residuals  277
advice about skewed predictors  284
comparison of Wald and difference

in deviance tests  292

deviance  271–272
deviance for binary data  280–281
deviance residuals  274–276
difference in deviances test  272–273
identifying “lucky” cases  293, 295
identifying “unlucky” cases  293–294, 295
Likelihood  268–270
Logistic function  265–266
log odds for multiple normal

predictors  284

log odds for a single normal

predictor  283–284

log odds for a single Poisson predictor  285
log odds for a single predictor that

is a dummy variable  285

log odds for a single skewed predictor  284
logit  266
marginal model plots  286–288
Odds  266
Pearson goodness-of-fit statistic  274
Pearson residuals  274–276
R-squared  273
residuals for binary data  281
response residuals  274
use of jittering in plots  278
Wald test  270

L
Least squares

M
Marginal model plots

criterion  17–18, 131
estimates  18–19, 131
matrix formulation  131–135, 152

mathematical justification  191–192
Purpose  192
Recommendation  193

390

Matrix

AR(1) covariance matrix  366
Cholesky decomposition  317
formulation of generalized least

squares  311–313

formulation of least squares  131–132
hat matrix  153
lower triangular matrix  317
notation for linear regression model  13
properties of least squares estimates

134, 215

unstructured covariance matrix  354,
variance-covariance matrix  312, 336, 356

Maximum likelihood

mixed models  334–336
multiple linear regression  228–230
role in AIC and BIC  231–232
simple linear regression  90–91
serially correlated errors  312–313

Mixed models

advice re the use of Cholesky residuals for

Index

parsimonious models for the error
variance-covariance  366–368

penalized linear regression

splines  380–382

problems due to correlation in marginal

and conditional residuals  346

random effects  331
random intercepts model  332–333, 345
regression spine model  358–60
residuals in mixed models  345–353
restricted maximum likelihood

(REML)  336
scaled residuals  352
Shrinkage  337, 339, 341
transforming mixed models into models
with uncorrelated errors  350–353

unrealistic equal correlation

assumption  353

unstructured covariance matrix versus

maximal model for the mean  354–356
variances are rarelt constant over time  356

model checking  353

Multicollinearity

advice re the assumption of constant

correlation  353

effect on signs of coefficients  195, 200
effect on significance of t-statistics  195,

advice re the assumption of constant

200

variance  356

AIC and BIC for covariance model

selection  368

variance inflation factors  203

Cholesky residuals  350–353
comparing non-nested models using AIC

N
Nonparametric regression

and BIC  368

compound symmetry  334
conditional (or within subjects)

residuals  346

correlation structure for random intercepts

model  334

empirical Bayes residuals  346
explanation of the term mixed models  331
fixed effects  331
generalized least squares (GLS)  336
knot selection for regression

splines  361–365

importance of standardizing conditional

residuals  349

likelihood ratio test for nested fixed effects

based on ML  336–337

likelihood ratio test for nested random

effects based on REML  336
linear regression splines  358–366
marginal (or population) residuals  346
maximum likelihood (ML)  334–336
modeling the conditional mean when
there are few time points  354

local polynomial kernel methods  375–379
Loess  378
mixed model formulation of penalized

linear regression splines  380
nearest neighbor bandwidth  376, 378
penalized linear regression

splines  379–382

problems with fixed value bandwidths

for skewed designs  376

Normal equations  18, 132
Normality of the errors  69–70

O
Observational studies  214–215
Omitted variable

Explanation  213
mathematics of  213–214
observational studies  214–215

Outliers

recommendations for handling  66
rule for identifying  59–60
in the x-space (see leverage points)

Index

P
Partial F-test  137
Percentage effects

using logarithms to estimate  79–80

Polynomial regression  125–130
Prais-Winsten transformation  316
Predicted value  17

derivation of the variance of  61
Prediction intervals  25–27, 37, 118
Predictor variables
Definition  15
linearity condition  155

Price elasticity  80

R
Random error  17
Regression

mathematical definition  16
definition of binary logistic regression  282
definition of multiple linear regression  130
definition of simple linear regression  17
through the origin  40–41

Residual sum of squares (RSS)  17–18, 28
Residuals

apparent normality of in small to moderate

samples  69

conditions under which patterns provide

direct information  155–156
correlation of for iid errors  60
definition  17, 121, 154
derivation of the variance of  60–61, 154
effects of autocorrelation  324
logistic regression  274–277, 281
matrix formulation  154
properties for valid models  48–49, 155
properties for invalid models  49–50,

155–156

standardized  59, 155
use in checking normality  69–70
weighted least squares  121

Response variable  15
R-squared  30, 136, 273
R-squared adjusted  137, 228

S
Serially correlated errors
autocorrelation  308
autoregressive process of order 1,

AR(1)  310

391

Cochrane-Orcutt transformation  315
effect on model diagnostics of ignoring

autocorrelation  322, 324

generalized least squares (GLS)  311–313
log-likelihood function  313
properties of least squares estimates

for AR(1) errors  311

Prais-Winsten transformation  316
transforming model with AR(1) errors
into one with iid errors  315–316
transforming GLS into LS  316–317

Shrinkage  3, 337, 339, 341
Spurious correlation

confounding covariate  213
explanation  210
first use of the term  211
observational studies  214–215
omitted variable  213

Standardized residuals

conditions under which patterns provide

direct information  155–156

definition  59, 155
examples of misleading patterns in

plots  161, 163

properties for valid models  155
properties for invalid models  155–156
use in identifying outliers  59–60
use in checking constant variance  73
use in checking normality of the errors

via Q-Q plots  70

T
Time series plot  306, 307
Transformations

Box-Cox method  89, 91–93, 95–96,

98–99, 172

Cochrane-Orcutt transformation  315
Inverse response plots  83–89, 169, 171
Important caution  94
Prais-Winsten transformation  316
Use of in overcoming non-constant

variance  76–79, 112,

Use of in estimating percentage

effects  79–83, 184

Use of in overcoming non-linearity

83–102

V
Valid models

benefits of using LS diagnostics based on

transformed data  324

Importance for conclusions  1–3
Importance for inference  66, 311

392

Index

Variable selection

Akaike’s information criterion

(AIC)  230–231

over-fitting  227
splitting the data into training and test

sets  248

Akaike’s information criterion corrected

stepwise methods  233, 236–237, 362,

(AICC)  231–232

all possible subsets  233–236
backward elimination  236–238
Bayesian information criterion (BIC)  232
choosing knots for regression

splines  364–365

comparison of AIC, AICC and

BIC  232–233

different goals of variable selection and

prediction  227

effect of influential points  248–249
forward selection  236–238
inference after variable selection  238–239
Kullback-Leibler information measure  230
LARS  251
LASSO  249, 251
leap and bound algorithm  233
model building using the training

data set  239–247

model comparison using the test

data set  247–248

364–365
test data set  239
training data set  239
under-fitting  227
Variance estimate  20
Variance

First order expression based on Taylor

series  76–77, 112
Variance inflation factors  203

W
Weighted least squares
criterion  115
effect of weights  115
estimates  116
leverage  118–119
prediction intervals  118
residuals  121
use of  121–122
using least squares to calculate  119–121

