Chapter 10
Three-Dimensional
Plots

Three-dimensional (3-D) plots can be a useful way to present data that consists
of more than two variables. MATLAB provides various options for displaying
three-dimensional  data.  They  include  line  and  wire,  surface,  mesh  plots,  and
many others. The plots can also be formatted to have a specific appearance and
special effects. Many of the three-dimensional plotting features are described in
this chapter. Additional information can be found in the Help Window under
Plotting and Data Visualization.

In many ways this chapter is a continuation of Chapter 5, where two-dimen-
sional plots were introduced. The 3-D plots are presented in a separate chapter
because not all MATLAB users use them. In addition, new users of MATLAB
will probably find it easier to practice 2-D plotting first and learn the material in
Chapters 6–9 before attempting 3-D plotting. It is assumed throughout the rest
of this chapter that the reader is familiar with 2-D plotting.

10.1 LINE PLOTS

A three-dimensional line plot is a line that is obtained by connecting points in
three-dimensional space. A basic 3-D plot ‘is created with the plot3 command,
which is very similar to the plot command and has the form:

plot3(x,y,z,‘line specifiers’,‘PropertyName’,property value)

x, y, and z are
vectors  of  the
coordinates  of
the points.

(Optional)  Specifiers  that
define  the  type  and  color
of the line and markers.

(Optional) Properties with val-
ues that can be used to specify
the  line  width,  and  marker’s
size and edge and fill colors.

• The  three  vectors  with  the  coordinates of the  data  points  must  have the same

number of elements.

324

Chapter 10: Three-Dimensional Plots

• The line specifiers, properties, and property values are the same as in 2-D plots

(see Section 5.1).

For example, if the coordinates x, y, and z are given as a function of the parame-
ter t by

x

=

t

sin

2t

y

z

=

=

cos

t
0.5t

2t

a plot of the points for

 can be produced by the following script file:

t=0:0.1:6*pi;

x=sqrt(t).*sin(2*t);

y=sqrt(t).*cos(2*t);

z=0.5*t;

plot3(x,y,z,'k','linewidth',1)

grid on

xlabel('x'); ylabel('y'); zlabel('z')

The plot shown in Figure 10-1 is created when the script is executed.

z

10

8

6

4

2

0
5

0

y

-5

-5

5

0
x

Figure 10-1: A plot of the function

x

=

t

sin

2t

,

y

=

t

cos

2t

,

z

=

0.5t

 for

.

10.2 MESH AND SURFACE PLOTS

z

=

f x y,

Mesh and surface plots are three-dimensional plots used for plotting functions
 where x and y are the independent variables and z is the
of the form
dependent variable. It means that within a given domain the value of z can be
calculated for any combination of x and y. Mesh and surface plots are created in
three  steps.  The  first  step  is  to  create  a  grid  in  the  x  y  plane  that  covers  the
domain of the function. The  second step is to calculate the value of  z at each

10.2 Mesh and Surface Plots

325

point  of  the  grid.  The  third  step  is  to  create  the  plot.  The  three  steps  are
explained next.

Creating a grid in the x y plane (Cartesian coordinates):

The grid is a set of points in the x y plane in the domain of the function. The
density of the grid (number of points used to define the domain) is defined by
. In this
the user. Figure 10-2 shows a grid in the domain

 and

Figure 10-2: A grid in the x y plane for the domain
                     spacing of 1.

 and

 with

grid the distance between the points is one unit. The points of the grid can be
defined  by  two  matrices,  X  and  Y.  Matrix  X  has  the  x  coordinates  of  all  the
points, and matrix Y has the y coordinates of all the points:

  and

The X matrix is made of identical rows since in each row of the grid the points
have the same x coordinate. In the same way the Y matrix is made of identical
columns since in each column of the grid the y coordinate of the points is the
same.

MATLAB has a built-in function, called meshgrid, that can be used for

326

Chapter 10: Three-Dimensional Plots

creating the X and Y matrices. The form of the meshgrid function is:

[X,Y] = meshgrid(x,y)

X is the  matrix of the  x  coordi-
nates of the grid points.
Y  is  the  matrix  of  the  y  coordi-
nates of the grid points.

x is a vector that divides the domain of x.
y is a vector that divides the domain of y.

In the vectors x and y the first and last elements are the respective boundaries of
the domain. The density of the grid is determined by the number of elements in
the vectors. For example, the mesh matrices X and Y that correspond to the grid
in Figure 10-2 can be created with the meshgrid command by:

>> x=-1:3;

>> y=1:4;

>> [X,Y]=meshgrid(x,y)

X =
    -1     0     1     2     3
    -1     0     1     2     3
    -1     0     1     2     3
    -1     0     1     2     3
Y =
     1     1     1     1     1
     2     2     2     2     2
     3     3     3     3     3
     4     4     4     4     4

Once the grid matrices exist, they can be used for calculating the value of z at
each grid point.

Calculating the value of z at each point of the grid:

The value of z at each point is calculated by using element-by-element calcula-
tions in the same way it is used with vectors. When the independent variables x
and  y  are  matrices  (they  must  be  of  the  same  size),  the  calculated  dependent
variable is also a matrix of the same size. The value of z at each address is calcu-
lated from the corresponding values of x and y. For example, if z is given by

z

=

xy2
------------------
y2+
x2

the value of z at each point of the grid above is calculated by:

>> Z = X.*Y.^2./(X.^2 + Y.^2)

10.2 Mesh and Surface Plots

327

Z =
  -0.5000        0   0.5000   0.4000   0.3000
  -0.8000        0   0.8000   1.0000   0.9231
  -0.9000        0   0.9000   1.3846   1.5000
  -0.9412        0   0.9412   1.6000   1.9200

Once the three matrices have been created, they can be used to plot mesh or sur-
face plots.

Making mesh and surface plots:

A mesh or surface plot is created with the mesh or surf command, which has
the form:

mesh(X,Y,Z)

surf(X,Y,Z)

where X and Y are matrices with the coordinates of the grid and Z is a matrix
with the value of z at the grid points. The mesh plot is made of lines that connect
the points. In the surface plot, areas within the mesh lines are colored.

As an  example,  the following  script  file contains  a complete program  that
creates  the  grid  and  then  makes  a  mesh  (or  surface)  plot  of  the  function

z

=

xy2
------------------
y2+
x2

 over the domain

 and

.

x=-1:0.1:3;

y=1:0.1:4;

[X,Y]=meshgrid(x,y);

Z=X.*Y.^2./(X.^2+Y.^2);

mesh(X,Y,Z)

Type surf(X,Y,Z) for surface plot.

xlabel('x'); ylabel('y'); zlabel('z')

Note that in the program above the vectors x and y have a much smaller spacing
than the spacing earlier in the section. The smaller spacing creates a denser grid.
The figures created by the program are:

z

2

1

0

-1
4

3

y

2

1

-2

Mesh plot

4

2

0

x

z

2

1

0

-1
4

3

y

2

1
Surface plot

4

2

0

x

-2

328

Chapter 10: Three-Dimensional Plots

Additional comments on the mesh command:

• The plots that are created have colors that vary according to the magnitude of z.
The variation in color adds to the three-dimensional visualization of the plots.
The color can be changed to be a constant either by using the Plot Editor in the
Figure Window (select the edit arrow, click on the figure to open the Property
Editor Window, then change the color in the Mesh Properties list), or by using
the colormap(C) command. In this command C is a three-element vector in
which the first, second, and third elements specify the intensity of Red, Green,
and Blue (RGB) colors, respectively. Each element can be a number between 0
(minimum intensity) and 1 (maximum intensity). Some typical colors are:

C = [0 0 0]   black
C = [0 0 1]   blue
C = [0.5 0.5 0.5]   gray

C = [1 0 0]   red
C = [0 1 0]   green
C = [1 1 0]   yellow C = [1 0 1]   magenta

• When the mesh command executes, the grid is on by default. The grid can be

turned off with the grid off command.

• A box can be drawn around the plot with the box on command.

• The mesh and surf commands can also be used with the form mesh(Z) and
surf(Z).  In  this  case  the  values  of  Z  are  plotted  as  a  function  of  their
addresses in the matrix. The row number is on the x axis and the column number
is on the y axis.

There  are  several  additional  plotting  commands  that  are  similar  to  the
mesh and surf commands that create plots with different features. Table 10-1
shows a summary of the mesh and surface plotting commands. All the examples

in the    table are plots of the function
 and
domain

.

 over the

Plot type

Example of plot

Program

Table 10-1: Mesh and surface plots

Mesh Plot

Function for-
mat:
mesh(X,Y,Z)

0.4

0.2

z

0

-0.2

-0.4
4

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
mesh(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

2

0

y

-2

-4

-4

-2

0

x

4

2

10.2 Mesh and Surface Plots

329

Table 10-1: Mesh and surface plots (Continued)

Plot type

Example of plot

Program

Surface Plot

Function for-
mat:
surf(X,Y,Z)

0.4

0.2

z

0

-0.2

-0.4
4

Mesh Curtain
Plot (draws a
curtain around
the mesh)

Function for-
mat:
meshz(X,Y,Z)

Mesh and Con-
tour Plot (draws
a contour plot
beneath the
mesh)

Function for-
mat:
meshc(X,Y,Z)

Surface and
Contour Plot
(draws a contour
plot beneath the
surface)

Function for-
mat:
surfc(X,Y,Z)

0.4

0.2

z

0

-0.2

-0.4
4

0.4

0.2

z

0

-0.2

-0.4
4

0.4

0.2

z

0

-0.2

-0.4
4

2

0y

-2

-4

-4

-2

0

x

4

2

2

0y

-2

-4

-4

x0

-2

4

2

2

0

y

-2

-4

-4

0

x

-2

4

2

2

0

y

-2

-4

-4

-2

0

x

4

2

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
surf(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
meshz(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
meshc(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
surfc(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

330

Chapter 10: Three-Dimensional Plots

Table 10-1: Mesh and surface plots (Continued)

Plot type

Example of plot

Program

Surface Plot
with Lighting

Function for-
mat:
surfl(X,Y,Z)

Waterfall Plot
(draws a mesh in
one direction
only)

Function for-
mat:
water-
fall(X,Y,Z)

3-D Contour
Plot

Function for-
mat:
contour3(X,
Y,Z,n)

n is the number
of contour lev-
els (optional)
2-D Contour
Plot
(draws projec-
tions of contour
levels on the x y
plane)
Function format:
contour
(X,Y,Z,n)
n is the number
of contour lev-
els (optional)

0.4

0.2

z

0

-0.2

-0.4
4

0.4

0.2

z

0

-0.2

-0.4
4

0.4

0.2

z

0

-0.2

-0.4
4

3

2

1

y

0

-1

-2

-3

-3

2

0

y

-2

0

x

-2

-4

-4

4

2

2

0

y

-2

-4

-4

-2

4

2

x0

2

0

y

-2

-4

-4

0x

-2

4

2

-2

-1

0             1            2            3
x

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
surfl(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
waterfall(X,Y,Z)
xlabel('x');
ylabel('y')
zlabel('z')

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
contour3(X,Y,Z,15)
xlabel('x');
ylabel('y')
zlabel('z')

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y ]=meshgrid(x,y);
[X,Y] = meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
contour(X,Y,Z,15)
xlabel('x');
ylabel('y')
zlabel('z')

10.3 Plots with Special Graphics

331

10.3 PLOTS WITH SPECIAL GRAPHICS

MATLAB has additional functions for creating various types of special three-
dimensional plots. A complete list can be found in the Help Window under Plot-
ting and Data Visualization. Several of these 3-D plots are presented in Table
10-2. The  examples  in  the  table  do  not  show  all  the  options  available

Table 10-2: Specialized 3-D plots

Plot type

Example of plot

Plot a Sphere

Function format:
sphere
Returns the x, y,
and z coordi-
nates of a unit
sphere with 20
faces.
sphere(n)
Same as above
with n faces.

Plot a Cylinder

Function format:
[X,Y,Z]=
cylinder(r)
Returns the x, y,
and z coordi-
nates of cylinder
with profile r.

1

0

-1
1

1

0.8

0.6

0.4

0.2

0
2

0

-1

-1

1

0

0

-2

-2

2

0

3-D Bar Plot

Function format:
bar3(Y)
Each element in Y
is one bar. Col-
umns are grouped
together.

8

6

4

2

0

1

2

3

4

5

6

7

3

2

1

Program

sphere

or:

[X,Y,Z]=sphere(20);
surf(X,Y,Z)

t=linspace(0,pi,20);
r=1+sin(t);
[X,Y,Z]=cylinder(r);
surf(X,Y,Z)
axis square

Y=[1 6.5 7; 2 6 7;
3 5.5 7; 4 5 7; 3 4
7; 2 3 7; 1 2 7];
bar3(Y)

332

Chapter 10: Three-Dimensional Plots

Table 10-2: Specialized 3-D plots (Continued)

Plot type

Example of plot

Program

3-D Stem Plot
(draws sequen-
tial points with
markers and ver-
tical lines from
the x y plane)

Function format:
stem3(X,Y,Z)

3-D Scatter Plot

Function format:
scatter3(X,
Y,Z)

40

30

20

z

10

0
1

40

30

20

z

10

0
1

0

y

-1

0

5

x

0

y

-1

0

5

x

3-D Pie Plot

Function format:
pie3(X,
explode)

10%

19%

42%

29%

10

10

t=0:0.2:10;
x=t;
y=sin(t);
z=t.^1.5;
stem3(x,y,z,'fill')
grid on
xlabel('x');
ylabel('y')
zlabel('z')

t=0:0.4:10;
x=t;
y=sin(t);
z=t.^1.5;
scatter3(x,y,z,'filled')
grid on
colormap([0.1 0.1 0.1])
xlabel('x');
ylabel('y')
zlabel('z')

X=[5 9 14 20];
explode=[0 0 1 0];
pie3(X,explode)

explode is a vector
(same length as X) of
0’s and 1’s. 1 offsets
the slice from the
center.

with each plot type. More details on each type of plot can be obtained
in the Help Window, or by typing help  command_name in the Com-
mand Window.

Polar coordinates grid in the x y plane:

A 3-D plot of a function in which the value of z is given in polar coordinates (for
example
r=
• Create a grid of values of

) can be done by following these steps:

 and r with the meshgrid function.

z

• Calculate the value of z at each point of the grid.

10.4  The view Command

333

• Convert the polar coordinates grid to a grid in Cartesian coordinates. This can
be done with MATLAB’s built-in function pol2cart (see example below).

• Make a 3-D plot using the values of z and the Cartesian coordinates.

For example, the following script creates a plot of the function
domain

 and

.

z

r=

 over the

[th,r]=meshgrid((0:5:360)*pi/180,0:.1:2);

Z=r.*th;

[X,Y] = pol2cart(th,r);

mesh(X,Y,Z)

Type surf(X,Y,Z) for surface plot.

The figures created by the program are:

z

15

10

5

0
2

z

15

10

5

0
2

0

y

-2

-2

0

x

Mesh plot

2

0

y

-2
Surface plot

-2

2

0

x

10.4 THE view COMMAND

The view command controls the direction from which the plot is viewed. This
is  done  by  specifying  a  direction  in  terms  of  azimuth  and  elevation  angles,  as
seen  in  Figure  10-3,  or  by  defining  a  point  in  space  from  which  the  plot  is
viewed. To set the viewing angle of the plot, the view command has the form:

view(az,el)  or    view([az,el])

• az  is  the  azimuth,  which  is  an  angle  (in  degrees)  in  the  x  y  plane  measured
relative  to  the  negative  y  axis  direction  and  defined  as  positive  in  the
counterclockwise direction.

• el is the angle of elevation (in degrees) from the x y plane. A positive value cor-

responds to opening an angle in the direction of the z axis.

• The default view angles are az = –37.5°, and el = 30°.

334

Chapter 10: Three-Dimensional Plots

Figure 10-3: Azimuth and elevation angles.

As an example, the surface plot from Table 10-1 is plotted again in Figure 10-4,
with viewing angles az = 20° and el = 35°.

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y]=meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
surf(X,Y,Z)
view(20,35)

0.4

0.2

z

0

-0.2

-0.4
-4

4

2

0

y

-2

-2

0

x

2

-4

4

Figure 10-4: A surface plot of the function

viewing angles of az = 20° and el = 35°.

 with

• With  the  choice  of  appropriate  azimuth  and  elevation  angles,  the  view  com-
mand can be used to plot projections of 3-D plots on various planes according
to the following table:

Projection plane

az value

el value

x y (top view)

x z (side view)

y z (side view)

0

0

90

90

0

0

An example of a top view is shown next. Figure 10-5 shows the top view of the
function that is plotted in Figure 10-1. Examples of projections onto the x z and
y  z  planes  are  shown  next,  in  Figures  10-6  and  10-7,  respectively.  The  figures
show mesh plot projections of the function plotted in Table 10-1.

10.4 The view Command

335

0.4

0.3

0.2

0.1

0

-0.1

-0.2

-0.3

t=0:0.1:6*pi;
x=sqrt(t).*sin(2*t);
y=sqrt(t).*cos(2*t);
z=0.5*t;
plot3(x,y,z,'k','linewidth',1)
view(0,90)
grid on
xlabel('x'); ylabel('y')
zlabel('z')

-0.4

-3

-2

-1

0
x

1

2

3

Figure 10-5: A top view plot of the function

x

=

t

sin

2t

,

y

=

t

cos

2t

,

z

=

0.5t

 for

.

0.4

0.3

0.2

0.1

z

0

-0.1

-0.2

-0.3

-0.4

-3

-2

-1

0
x

1

2

3

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y]=meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
mesh(X,Y,Z)
view(0,0)

Figure 10-6: Projections onto the x z plane of the function.

.

0.4

0.3

0.2

0.1

z

0

-0.1

-0.2

-0.3

-0.4

-3

-2

-1

0
y

1

2

3

x=-3:0.25:3;
y=-3:0.25:3;
[X,Y]=meshgrid(x,y);
Z=1.8.^(-1.5*sqrt(X.^2+
Y.^2)).*cos(0.5*Y).*sin(X);
surf(X,Y,Z)
view(90,0)

Figure 10-7: Projections onto the y-z plane of the function.

.

336

Chapter 10: Three-Dimensional Plots

• The view command can also set a default view:

view(2)

view(3)

sets the default to the top view, which is a projection onto the
x-y plane with az = 0°, and el = 90°.
sets the default to the standard 3-D view with az = –37.5° and
el = 30°.

• The viewing direction can also be set by selecting a point in space from which
the  plot
is  viewed.  In  this  case  the  view  command  has  the  form
view([x,y,z]),  where  x,  y,  and  z  are  the  coordinates  of  the  point.  The
direction is determined by the direction from the specified point to the origin of
the coordinate system and is independent of the distance. This means that the
view is the same with point [6, 6, 6] as with point [10, 10, 10]. Top view can be set
up with [0, 0, 1]. A side view of the x z plane from the negative y direction can be
set with [0, –1, 0], and so on.

10.5 EXAMPLES OF MATLAB APPLICATIONS

Sample Problem 10-1: 3-D projectile trajectory

A projectile is fired with an initial velocity of
250 m/s at an angle of
 = 65° relative to the
ground.  The  projectile  is  aimed  directly
north.  Because  of  a  strong  wind  blowing  to
the  west,  the  projectile  also  moves  in  this
direction  at  a  constant  speed  of  30  m/s.
Determine and plot the trajectory of the pro-
jectile  until it  hits  the ground. For  compari-
son, plot also (in the same figure) the trajectory that the projectile would have
had if there was no wind.

Solution

As shown in the figure, the coordinate system is set up such that the x and y axes
point in the east and north directions, respectively. Then the motion of the pro-
jectile can be analyzed by considering the vertical direction z and the two hori-
zontal components x and y. Since the projectile is fired directly north, the initial
 can be resolved into a horizontal y component and a vertical z com-
velocity
ponent:

v0

v0y

=

v0 cos

    and

v0z

=

v0 sin

In addition, due to the wind the projectile has a constant velocity in the negative
x direction,

m/s.

The initial position of the projectile (x0, y0, z0) is at point (3000, 0, 0). In the ver-
tical direction the velocity and position of the projectile are given by:

10.5 Examples of MATLAB Applications

337

  and

The  time  it  takes  the  projectile  to  reach  the  highest  point

vz

0=

  is

thmax

=

v0z
-------
g

. The total flying time is twice this time,

ttot

=

2thmax

. In the hori-

zontal direction the velocity is constant (both in the x and y directions), and the
position of the projectile is given by:
vxt+

  and

v0yt

x0

y0

+

=

=

x

y

The following MATLAB program written in a script file solves the problem by
following the equations above.

v0=250; g=9.81; theta=65;

x0=3000; vx=-30;

v0z=v0*sin(theta*pi/180);

v0y=v0*cos(theta*pi/180);

t=2*v0z/g;

tplot=linspace(0,t,100);

Creating a time vector with 100 elements.

z=v0z*tplot-0.5*g*tplot.^2;

y=v0y*tplot;

x=x0+vx*tplot;

xnowind(1:length(y))=x0;

Calculating the x, y, and z coordi-
nates of the projectile at each time.

plot3(x,y,z,'k-',xnowind,y,z,'k--')

Constant x coordinate when no wind.
Two 3-D line plots.

grid on

axis([0 6000 0 6000 0 2700])

xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)')

The figure generated by the program is shown below.

2500

2000

)

m

(

z

1500

1000

500

0
6000

4000

y (m)

2000

0

0

2000

1000

5000

4000

6000

3000

x (m)

338

Chapter 10: Three-Dimensional Plots

Sample Problem 10-2: Electric potential of two point charges

The electric potential V around a charged particle is given by

V

=

1
-------------
4
0

q
--
r

where

0

C
---------------
N m2

 is the permittivity constant, q is the magni-

tude of the charge in coulombs, and r is the distance from the particle in meters.
The electric field of two or more particles is calculated by using superposition.
For example, the electric potential at a point due to two particles is given by

V

=

1
-----------
4
0

q1
-----
r1

q2
-----+
r2

,
q1 q2

where
the point to the corresponding particle, respectively.

, and

r2

r1

,

 are the charges of the particles and the distance from

Two  particles  with  a  charge  of

C and

 C are posi-
tioned in the x y plane at points (0.25, 0, 0)
and  (–0.25,  0,  0),  respectively,  as  shown.
Calculate and plot the electric potential due
to  the  two  particles  at  points  in  the  x  y
plane  that  are  located  in  the  domain
 (the units
in the x y plane are meters). Make the plot
such that the x y plane is the plane of the points, and the z axis is the magnitude
of the electric potential.

 and

Solution

The problem is solved by following these steps:
(a) A  grid  is  created  in  the  x  y  plane  with  the  domain

  and

.

(b) The distance from each grid point to each of the charges is calculated.
(c) The electric potential at each point is calculated.
(d) The electric potential is plotted.
The following is a program in a script file that solves the problem.

eps0=8.85e-12; q1=2e-10; q2=3e-10;

k=1/(4*pi*eps0);

x=-0.2:0.01:0.2;

y=-0.2:0.01:0.2;

[X,Y]=meshgrid(x,y);

r1=sqrt((X+0.25).^2+Y.^2);

Creating a grid in the x y plane.
Calculating the distance r1 for each grid point.

10.5 Examples of MATLAB Applications

339

r2=sqrt((X-0.25).^2+Y.^2);

V=k*(q1./r1+q2./r2);

mesh(X,Y,V)

Calculating the distance r2 for each grid point.
Calculating the electric potential V at each grid point.

xlabel('x (m)'); ylabel('y (m)'); zlabel('V (V)')

The plot generated when the program runs is:

60

50

40

30

20

)

V

(

V

10
0.2

0.1

0

y (m)

-0.1

-0.1

0

x (m)

-0.2

-0.2

0.2

0.1

Sample Problem 10-3: Heat conduction in a square plate

Three sides of a rectangular plate (a = 5 m, b = 4
m) are kept at a temperature of 0°C and one side
is  kept  at  a  temperature
°C,  as  shown  in
the  figure.  Determine  and  plot  the  temperature
distribution T(x, y) in the plate.

80=

T1

Solution

y

b

T=0

T=80oC

T=0

x

T=0

a

The temperature distribution, T(x, y) in the plate can be determined by solving
the two-dimensional heat equation. For the given boundary conditions T(x, y)
can  be  expressed  analytically  by  a  Fourier  series  (Erwin  Kreyszig,  Advanced
Engineering Mathematics, John Wiley and Sons, 1993):

n

1=

A program in a script file that solves the problem is listed below. The program
follows these steps:
(a) Create an X, Y grid in the domain

. The length of the
plate, a, is divided into 20 segments, and the width of the plate, b, is divided
into 16 segments.

 and

(b) Calculate the  temperature at each  point of the  mesh.  The  calculations  are

340

Chapter 10: Three-Dimensional Plots

done point by point using a double loop. At each point the temperature is
determined by adding k terms of the Fourier series.

(c) Make a surface plot of T.

a=5; b=4; na=20; nb=16; k=5; T0=80;

clear T

x=linspace(0,a,na);

y=linspace(0,b,nb);

[X,Y]=meshgrid(x,y);

for i=1:nb

    for j=1:na

        T(i,j)=0;

        for n=1:k

            ns=2*n-1;

Creating a grid in the x y plane.
First loop, i, is the index of the grid’s row.

Second loop, j, is the index of the grid’s column.

Third loop, n, is the nth term of the Fourier
series, k is the number of terms.

      T(i,j)=T(i,j)+sin(ns*pi*X(i,j)/a).*sinh(ns*pi*Y(i,j)/
a)/(sinh(ns*pi*b/a)*ns);

        end

        T(i,j) = T(i,j)*4*T0/pi;

    end

end

mesh(X,Y,T)

xlabel('x (m)'); ylabel('y (m)'); zlabel('T ( ^oC)')

The  program  was  executed  twice,  first  using  five  terms  (k  =  5)  in  the  Fourier
series to calculate the temperature at each point, and then with k = 50. The mesh
plots created in each execution are shown in the figures below. The temperature
should be uniformly 80°C at y = 4 m. Note the effect of the number of terms (k)
on the accuracy at y = 4 m.

k = 5

)

C

o

(
T

100

80

60

40

20

0
4

k = 50

)

C

o

(
T

100

80

60

40

20

0
4

3

2

y (m)

1

0

0

1

5

4

2

3
x (m)

3

2
y (m)

1

0

0

1

5

4

2

3
x (m)

10.6 Problems

10.6 PROBLEMS

341

1. The position of a moving particle as a function of time is given by:

Plot the position of the particle for

2. A  staircase  of  height  h  is  modeled  by  the

parametric equations:

x

=

r

cos

t

y

=

r

sin

t

z

=

ht
----------
2 n

,

50=

where
,
and
m  is  the  staircase  height.
h
Make a 3-D plot (shown) of the staircase.
(Create a vector t for the domain 0 to
,
2 n
and use the plot3 command.)

4=

n

s.

)
m
(

z

60

40

20

0
50

0
y (m)

-50

-50

50

0

x (m)

3. The  ladder  of  a  fire  truck  can  be  ele-
),  rotated
vated  (increase  of  angle
about the z axis (increase of angle  ),
and  extended  (increase  of  r).  Initially
the  ladder  rests  on  the  truck  (
,
0=
m). Then the ladder
8=
is moved to a new position by raising
the ladder at a rate of 5 deg/s, rotating
at a rate of 8 deg/s, and extending the
ladder at a rate of 0.6 m/s. Determine and plot the position of the tip of the
ladder for 10 s.

, and

0=

r

4. Make a 3-D surface plot of the function

 in the domain

 and

.

5. Make a 3-D surface plot of the function

 in the domain

 and

.

6. Make a 3-D surface plot of the function

 in the domain

 and

.

7. Make a 3-D mesh plot of the function

, where

R

=

x2

y2+

 in

the domain

 and

.

342

Chapter 10: Three-Dimensional Plots

8. Make a 3-D surface plot of the function
.

in the domain

 and

9. Make a plot of the ice cream cone shown in the fig-
ure.  The  cone  is  8  in.  tall  with  a  4-in.  diameter
base. The ice cream at the top is a 4-in. diameter
hemisphere.
A parametric equation for the cone is:

,

,

z

4r=

with

  and

10

8

6

4

2

0
2

A parametric equation for a sphere is:
,
,
z
y
  and

x
=
with

cos

sin

sin

sin

=

r

r

=

r cos

2

0

0

−2

−2

10. A monochromatic light that passes through a
slit produces on a screen a diffraction pattern
consisting  of  bright  and  dark  fringes.  The
intensity of the bright fringes, I, as a function
of

 can be calculated by:

where

,

 is the light wave

length, a is the width of the slits. Make
a 3-D plot (shown) that shows the rela-
  as  a  function  of
tive  intensity
, and a function of
.

 for

 for

11. Molecules  of  a  gas  in  a  container  are  moving  around  at  different  speeds.
 as a

Maxwell’s speed distribution law gives the probability distribution
function of temperature and speed:

P v

where M is the molar mass of the gas in kg/mol,
J/(mol K), is the
gas constant, T is the temperature in kelvins, and v is the molecule’s speed in
m/s.

8.31

R

=

Make a 3-D plot of

P v

 as a function of v and T for

m/s

and

K for oxygen (molar mass 0.032 kg/mol).

10.6 Problems

343

12. Plank’s  distribution  law  gives  the  black-
body emissive power (amount of radiation
energy  emitted)  as  a  function  of  tempera-
ture and wavelength:

W
----------------
m2 m

where

 W m4/m2,

  mK, T is the temperature in degrees K, and

length in  m. Make a 3-D plot (shown in the figure) of

 is the wave-
 as a function of
K. Use a logarithmic scale for

E

 (
. This can be done with the command: set(gca,'xscale','log').

m) and T for

13. Consider steady-state vibration of a fric-
tion-free  spring-mass-damper  system
subjected  to  harmonic  applied  force.
The  normalized  amplitude  of  the  mass
is given by:

  is  the  frequency  ratio,
where
and
 is the damping ratio. Make a 3-D
plot  (shown)  of  the  normalized  ampli-
tude  (z  axis)  as  a  function  of  the  fre-
quency  ratio
,  and  a
function  of  the  damping  ratio  for

for

.

14. An  RLC  circuit  with  an  alternating
voltage  source  is  shown.  The  source
by
voltage
vs
,
2 fd
dt
vm
vs
=
 is the driving frequency.
in which
The  amplitude  of  the  current,  I,  in
this circuit is given by:

is
,  where

given
=

sin
fd

d

8

6

4

e
d
u

t
i
l

p
m
A
d
e
z

i
l

2

a
m
r
0
o
0.6N

0.4

0.2

Damping Ratio

00

2

1.5

1

0.5

Frequency Ratio

where  R  and  C  are  the  resistance  of  the  resistor  and  capacitance  of  the
capacitor,  respectively.  For  the  circuit
F,
vm

in  the  figure

H, and

24=

V.

(a) Make  a  3-D  plot  of  I  (z  axis)  as  a  function  of

  (x  axis)  for

d

344

Chapter 10: Three-Dimensional Plots

Hz, and as a function of R (y axis) for

..

(b) Make a plot that is a projection on the x z plane. Estimate from this plot
the  natural  frequency  of  the  circuit  (the  frequency  at  which  I  is  maxi-

mum). Compare the estimate with the calculated value of

.

15. In the solution of elasticity problem of a normal point load applied to the
surface of a half plane that was solved by Boussinesq in 1878, the stresses

 and

 are given by:

  and

where

  is  Poisson’s  ratio.  For

lb  and
, plot the stress components (each in a sep-
arate  figure)  as  a  function  of  r  and  z  in  the
domain
in. Plot the
coordinates  r  and  z  in  the  horizontal  plane  and
the stresses in the vertical direction.

 and

16. A high-pass filter passes signals with frequencies
that  are  higher  than  a  certain  cutoff  frequency.
In  this  filter  the  ratio  of  the  magnitudes  of  the
voltages is given by:

C

Vi

R

Vo

where

 is the frequency of the input signal.

(a) Make  a  3-D  mesh  plot  of

  (z  axis)  as  a  function  of  f  (x  axis)  for

Hz,

and

as

a

function  of  RC

(y

axis)

for

be

done

s.  Use  a  logarithmic  scale  for  the  x  axis.  This
can
command
the  MATLAB
set(gca,'Xscale','log') following the mesh command. A vec-
tor with constant spacing on a logarithmic scale can be created with the
command logspace(a,b,n).

typing

by

(b) Make a plot that is a projection on the x z plane.

17. The equation for the streamlines for uniform flow over a cylinder is

. Since
where
 is the stream function. For example, if
0=
the equation is satisfied for all x, the x axis is the zero (
) streamline.
Observe that the collection of points where
 is also a streamline.
Thus, the stream function above is for a cylinder of radius 1. Make a 2-D

, then
0=

y2+

1=

x2

10.6 Problems

345

contour plot of the streamlines around a cylinder with 1 in. radius. Set up
the domain for x and y to range between –3 and 3. Use 100 for the number
of contour levels. Add to the figure a plot of a circle with a radius of 1. Note
that MATLAB also plots  streamlines inside the  cylinder. This  is a mathe-
matical artifact.

18. The deflection w of a clamped circular membrane of radius

rd

 subjected to

pressure P is given by (small deformation theory):

where r is the radial coordinate, and

, where E, t, and

 are the

elastic  modulus,  thickness,  and  Poisson’s  ratio  of  the  membrane,  respec-
tively.  Consider  a  membrane  with
psi,
t

. Make a surface plot of the membrane.

in., and

15=

15=

psi,

in.,

0.08

rd

=

P

19. The Verhulst model, given in the following equation, describes the growth of
a  population  that  is  limited  by  various  factors  such  as  overcrowding  and
lack of resources:

N

 is the number of individuals in the population,

where
N t
population size,
ious limiting factors, and r is a rate constant. Make a surface plot of
versus  t and
and 100 and

 is the initial
 is the maximum population size possible due to the var-
N t
. Let  t vary between  0

 assuming
r
 between 100 and 1,000.

s–1, and

0.1=

10=

N
N

N0

N0

20. The geometry of a ship hull (Wigley
hull)  can  be  modeled  by  the  equa-
tion:

where  x,  y,  and  z  are  the  length,
width,  and  height,  respectively.  Use
MATLAB  to  make  a  3-D  figure  of
the  hull  as  shown.  Use
,
1.2=
L
0.5=

B
, and

4=

,

T

,

0

z

−0.2

−0.4

1

y

0

.

2

0

x

−1

−2

346

Chapter 10: Three-Dimensional Plots

21. The  stress  fields  near  a  crack  tip  of  a
linear  elastic  isotropic  material  for
mode II loading are given by:

=

ksi

300

For
KII
domain
horizontal plane, and the stresses in the vertical direction.

  plot  the  stresses  (each  in  a  separate  figure)  in  the
 in. Plot the coordinates x and y in the

 and

22. A  ball  thrown  up  falls  back  to  the  floor
and  bounces  many  times.  For  a  ball
thrown  up  in  the  direction  shown  in  the
figure,  the  position  of  the  ball  as  a  func-
tion of time is given by:

y

x

=

=

=

sin

cos

vxt

v0 cos

initial

velocity

vx
sin
the

vyt
The velocities in the x and y directions are
constants  throughout the  motion  and are
given  by
and
v0
.  In  the  vertical  z
v0
vy
=
sin
direction
is
, and when the ball impacts
vz
=
the floor its rebound velocity is 0.8 of the
vertical velocity at the start of the previous
bounce.  The  time  between  bounces  is
given by
 is the verti-
cal component of the velocity at the start
of the bounce. Make a 3-D plot (shown in
the figure) that shows the trajectory of the
ball during the first five bounces. Take

, where

vz

g

=

9.81

m/s2.

10

)

m

(

z

5

0
150

100
y (m)

50

0

0

100

50

x (m)

m/s,

30=

,

25=

, and

v0

20=

