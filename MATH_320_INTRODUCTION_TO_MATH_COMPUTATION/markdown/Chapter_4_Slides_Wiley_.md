Using Script Files and Managing Data

MATLAB  An Introduction With Applications, 6th Edition
Dr. Amos Gilat
The Ohio State University

Slide deck by
Dr. Greg Reese
Miami University

4.0

In this chapter will study
• How to input data into a script file
• How MATLAB stores data
• Ways to display and save data
• How to exchange data between
MATLAB and other programs

2

4.1 THE MATLAB WORKSPACE AND THE WORKSPACE WINDOW

MATLAB workspace made up of
variables that you define and store
during a MATLAB session. It
includes variables
• Defined in the Command Window
• Defined in script files
A script file can access all variables
that you defined in the Command
Window

3

4.1 THE MATLAB WORKSPACE AND THE WORKSPACE WINDOW

whos command is like who
command (Chapter 1) but with more
information

4

4.1 THE MATLAB WORKSPACE AND THE WORKSPACE WINDOW

Can also view workspace variables in
the Workspace Window

 To open Workspace Window, click on

Layout icon, then Workspace

5

4.1 THE MATLAB WORKSPACE AND THE WORKSPACE WINDOW

To edit (change) a variable in the
Workspace Window
1. Double-click on variable to get the

Variable Editor Window

2. In that window can modify numbers

6

4.1 THE MATLAB WORKSPACE AND THE WORKSPACE WINDOW

In Variable Editor Window
• To change a character, place cursor to

right of character and press BACKSPACE
or to left and press DELETE

• To delete a number, select it by dragging
or double-clicking, then press DELETE
or BACKSPACE

7

4.1 THE MATLAB WORKSPACE AND THE WORKSPACE WINDOW

To delete a variable from the Workspace
Window
• Select variable by dragging or double-

clicking, then
 Press DELETE or BACKSPACE

or

 Right click and select Delete

• Can also delete a variable from Command

Window with command
>> clear variable_name
e.g.,
>> clear g

8

4.2 INPUT TO A SCRIPT FILE

When MATLAB executes (runs) a
script file, any variables used in file
must already have values assigned to
them, i.e., the variables must already
be in the workspace

Can assign a value to a variable in
three ways

9

4.2 INPUT TO A SCRIPT FILE

1. Assign value in script file
• Assignment statement is part of script
• To use different value, must edit file, save

file, and run file again

Note – when variable value (a number)
is part of script, value is said to be
hard-coded

10

4.2 INPUT TO A SCRIPT FILE

11

4.2 INPUT TO A SCRIPT FILE

2. Assign value in Command Window
• Define variable and assign its value in

Command Window
 From before, know that script file will recognize

variable

• To use different value, assign new value in

Command Window and run file again
 Don't need to resave file
Instead of retyping entire command,
use up-arrow to recall command and
then edit it

T I P

12

4.2 INPUT TO A SCRIPT FILE

13

4.2 INPUT TO A SCRIPT FILE

14

4.2 INPUT TO A SCRIPT FILE

3. Assign by prompt in script file
• Script file prompts (asks) user to
enter a value, then script assigns
that value to a variable

Use MATLAB input command to
ask for and get value from user

15

4.2 INPUT TO A SCRIPT FILE

variable_name=input('prompt')
prompt is text that input command
displays in Command Window
• You must put text between single quotes

16

4.2 INPUT TO A SCRIPT FILE

variable_name=input('prompt')
When script executes input command
1. Displays prompt text in Command

2.

Window
Puts cursor immediately to right of
prompt

3. User types value and presses ENTER
Script assigns user's value to variable
4.
and displays value unless input
command had semicolon at end

17

4.2 INPUT TO A SCRIPT FILE

Script output (in Command Window)

18

4.2 INPUT TO A SCRIPT FILE

T I P

It's helpful to put a space, or a colon
and a space, at the end of the prompt
so that the user's entry is separated
from the prompt.
Example script file:

age = input('Age in 2012');

age = input('Age in 2012 ');

age = input('Age in 2012: ');

19

4.2 INPUT TO A SCRIPT FILE

Output of script shown with value of
"30" that user entered

T I P

Age in 201230
Age in 2012 30
Age in 2012: 30

bad

better

good

20

4.2 INPUT TO A SCRIPT FILE

Can also prompt for and assign a text
string to a variable.
Method 1
Use input as before but user must type
in beginning and ending quote marks

>> name = input( 'Your name: ' )
Your name: 'Joe'
name =
Joe

User must type quotes

21

4.2 INPUT TO A SCRIPT FILE

Method 2
Pass 's' as second argument to input.
User should not enter quotes

variable_name=input('prompt', 's')
>> name=input('Your name: ', 's')
Your name: Joe
name =
Joe

User enters without quotes

22

4.3 OUTPUT COMMANDS

When omit semicolon at end of
statement, MATLAB displays result
on screen. You have no control over
appearance of result, e.g., how many
lines, what precision in numbers.
Can use MATLAB command disp
for some control of appearance and
fprintf for full control

23

4.3.1 The disp Command

disp (display) command displays
variable values or text on screen
• Displays each time on new line
• Doesn't print variable name
disp(variable_name) or
disp('text string')

24

4.3.1 The disp Command

Can display tables with headers using

disp
• Clumsy because no control of
column width – must adjust
headers by inserting blanks
• Better to use fprintf

25

4.3.2 The fprintf Command

fprintf
• Means file print formatted

 formatted text is text that can be read by people
 unformatted text looks random to people but

computers can read it

• Can write to screen or to a file
• Can mix numbers and text in output
• Have full control of output display
• Complicated to use

26

4.3.2 The fprintf Command

Using the fprintf command to display text:
Display text with

fprintf('Text to display')
Example

>> fprintf( 'Howdy neighbor' )
Howdy neighbor>>
Problem – Command Window
displays prompt (>>) at end of text,
not at start of next line!

Yikes!

27

4.3.2 The fprintf Command

T I P

To make the next thing that
MATLAB writes (after a use of
fprintf) appear on the start of a
new line, put the two characters "\n"
at the end of the fprintf text
>> fprintf( 'Howdy neighbor\n' )
Howdy neighbor
>>

28

4.3.2 The fprintf Command

Can also use \n in middle of text to
make MATLAB display remainder of
text on next line

>> fprintf('A man\nA
plan\nPanama\n')
A man
A plan
A canal
Panama
>>

29

4.3.2 The fprintf Command

\n is an escape character, a special
combination of two characters that
makes fprintf do something
instead of print the two characters
\n – makes following text come out
at start of next line
\t – horizontal tab
There are a few more

30

4.3.2 The fprintf Command

fprintf( format, n1, n2, n3 )

Conversion specifier

>> fprintf( 'Joe weighs %6.2f kilos', n1 )

Argument

Format string

31

4.3.2 The fprintf Command

>> fprintf( 'Joe weighs %6.2f kilos', n1 )

Format string
• May contain text and/or conversion
specifiers
• Must be enclosed in SINGLE quotes,
not double quotes, aka quotation
marks (" ")

32

4.3.2 The fprintf Command

>> fprintf( 'Joe is %d weighs %f kilos', age, weight )

Arguments
• Number of arguments and conversion
specifiers must be the same
• Leftmost conversion specifier formats
leftmost argument, 2nd to left specifier
formats 2nd to left argument, etc.

33

4.3.2 The fprintf Command

Conversion specifier

>> fprintf( 'Joe weighs %f kilos', n1 )
Common conversion specifiers
%f   fixed point (decimal always

between 1's   and 0.1's place,
e.g., 3.14, 56.8

%e  scientific notation, e.g, 2.99e+008
%d  integers (no decimal point shown)
%s  string of characters

34

4.3.2 The fprintf Command

Conversion specifier

>> fprintf( 'Joe weighs %6.2f kilos', n1 )
To control display in fixed or scientific,
use    %w.pf or %w.pe
• w = width: the minimum number of

characters to be displayed

• p = “precision”: the number of digits to the

right of the decimal point

If you omit "w", MATLAB will
display correct precision and just
the right length

T I P

35

4.3.2 The fprintf Command

>> e = exp( 1 );
>> fprintf( 'e is about %4.1f\n', e )
e is about  2.7
>> fprintf( 'e is about %10.8f\n', e )
e is about 2.71828183
>> fprintf( 'e is about %10.8e', e )
e is about 2.71828183e+000
>> fprintf( 'e is about %10.2e', e )
e is about  2.72e+000
>> fprintf( 'e is about %f\n', e )
e is about 2.718282

36

4.3.2 The fprintf Command

Use escape characters to display
characters used in conversion specifiers
• To display a percent sign, use  %%  in

the text

• To display a single quote, use   ' '     in

the text  (two sequential single quotes)
• To display a backslash, use   \\   in the

text (two sequential backslashes)

37

4.3.2 The fprintf Command

Make the following strings
• Mom's apple 3.14
• Mom's apple 3.1415926
• Mom's apple 3.1e+000

>> fprintf( 'Mom''s apple %.2f\n', pi )
Mom's apple 3.14
>> fprintf( 'Mom''s apple %.7f\n', pi )
Mom's apple 3.1415927
>> fprintf( 'Mom''s apple %.1e\n', pi )
Mom's apple 3.1e+000

38

4.3.2 The fprintf Command

Format strings are often long. Can
break a string by
1.

Put an open square bracket ( [ ) in front of first
single quote

2. Put a second single quote where you want to stop

the line

3. Follow that quote with an ellipsis (three periods)
4. Press ENTER, which moves cursor to next line
5. Type in remaining text in single quotes
6. Put a close square bracket ( ] )
7. Put in the rest of the fprintf command

39

4.3.2 The fprintf Command

Example

>> weight = 178.3;
>> age = 17;
>> fprintf( ['Tim weighs %.1f lbs'...
' and is %d years old'], weight, age )

 Tim weighs 178.3 lbs and is 17 years old

40

4.3.2 The fprintf Command

fprintf is vectorized, i.e., when
vector or matrix in arguments,
command repeats until all elements
displayed
• Uses matrix data column by column

41

4.3.2 The fprintf Command

42

4.3.2 The fprintf Command

Using the fprintf command to save output to a file:
Takes three steps to write to a file
Step a: – open file

fid=fopen('file_name','permission')
fid – file identifier, lets fprintf know
what file to write its output in
permission – tells how file will be
used, e.g., for reading, writing, both, etc.

43

4.3.2 The fprintf Command

Some common permissions
• r - open file for reading
• w - open file for writing. If file exists,  content
deleted. If file doesn't exist, new file created
• a - same as w except if file exists the written
data is appended to the end of the file
• If no permission code specified, fopen uses r
See Help on fopen for all permission
codes

44

4.3.2 The fprintf Command

Step b:
Write to file with fprintf. Use it
exactly as before but insert fid
before the format string, i.e.,

fprintf(fid,'format
string',variables)

The passed fid is how fprintf
knows to write to the file instead of
display on the screen

45

4.3.2 The fprintf Command

Step c:
When you're done writing to the file,
close it with the command

fclose(fid)
• Once you close it, you can't use that
fid anymore until you get a new
one by calling fopen

Make sure to close every file you
open. Too many open files
creates problems for MATLAB

46

4.3.2 The fprintf Command

Miscellaneous
• If the file name you give to fopen has no
path, MATLAB writes it to the current
directory, also called the working directory

• You can have multiple files open
simultaneously and use fprintf to write to
all of them just by passing it different fids
• You can read the files you make with
fprintf in any text editor, e.g., MATLAB's
Editor window or Notepad

47

4.4 THE SAVE AND LOAD COMMANDS

Use save  command to save
workspace or data

Use load command to retrieve
stored workspace or data

Can use both to exchange data with
non-MATLAB programs

48

4.4 THE SAVE AND LOAD COMMANDS

Use save  command to save some or
all workspace variables to hard drive
Two forms
save file_name
save('file_name')
Either one saves all workspace
variables, including their name, type,
size, value

49

4.4 THE SAVE AND LOAD COMMANDS

To only save specific variables, list variables
after file name. For example, to save two
variables named var1 and var2

save file_name var1 var2
save('file_name','var1','var2')

50

4.4.1 The save Command

All forms store variables in file called
"file_name.mat"
• Called "mat" file
• Unformatted (binary) file

 Only MATLAB can read mat file, not other

programs

 Can't read file in text editor, or MATLAB

Editor Window

51

4.4.1 The save Command

To save as formatted text (also called ASCII text)

save file_name –ascii
IMPORTANT – only saves values of variables, no
other info, even their names!
• Can also just save certain variables, as before
• Usually just use to save value of one variable

52

4.4.2 The load Command

To load data in a mat file into workspace

load file_name
load( 'file_name')
To load only specific variables from mat
file, e.g., var1 and var2

load file_name var1 var2
load('file_name','var1','var2')

• If variable already exists in workspace, it
is overwritten (its value is replaced by
value in file)

53

4.4.2 The load Command

To load data in a text file into workspace

load file_name
variable = load( 'file_name')
• In first form, creates variable called
file_name and stores all file data in it
• If all rows in file don't have same number of

columns, MATLAB displays an error

• Even if data created from multiple variables
all with same number of columns, load
still reads all data into one variable
 Not very useful in this case

54

4.5 IMPORTING AND EXPORTING DATA

• MATLAB often used to analyze data collected

by other programs

• Sometimes need to transfer MATLAB data to

other programs

• In this section will only discuss numerical data
 MATLAB has commands to load and save data

from a number of other programs

 Can also tell MATLAB what format data is in

55

4.5.1 Commands for Importing and Exporting Data

Will illustrate transferring data with a
specific program by discussing
Microsoft Excel
• Commonly used to store data
• Works with many programs that
gathers data
• Used often by people with technical
data but for which MATLAB is overkill

56

4.5.1 Commands for Importing and Exporting Data

Importing and exporting data into and from Excel:
Import (read) data from Excel with

variable_name=xlsread('filename')
• Stores all data in one variable
• If Excel file has multiple sheets, reads

first one
 To read from other sheets, pass command

the sheet name

• Can read rectangular section of sheet by

specifying range in command

57

4.5.1 Commands for Importing and Exporting Data

Export (write) data to Excel file with

xlswrite('filename',variable_name)

• Can specify in command name of sheet and

range to write to

58

4.5.2 Using the Import Wizard

MATLAB's import wizard is semi-
automatic way to read data from any file
• Wizard shows what it thinks format is
• User can then adjust format
Two ways to start Import Wizard
1.

In MATLAB desktop,
click Import Data icon
2. With command uiimport

59

4.5.2 Using the Import Wizard

First Wizard display
• Wizard displays file-selection dialog box
• User picks file
• Wizard shows some of data as it is in file and

as how Wizard interprets it
 User can change column separator or number of

text header lines (that Wizard will not try to read)

60

4.5.2 Using the Import Wizard

Second Wizard display
• Shows name and size of variable it will create
• When user selects Finish, Wizard creates

that variable in workspace
 Variable name is file name

61

