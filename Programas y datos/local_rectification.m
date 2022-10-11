%%%%%%%%%%%%%%%%%%%%Editar Grafico%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lw = 3; %LineWidth
mz = 7; %MarkSize

%%%%%%%%%%%%%%%%%%%%%%%Posiciones de medición$$$$$$$$$$$$$$$$$$$$$$$$$
x0=[1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200];
y1=[0,20/200,40/200,60/200,80/200,100/200,120/200,140/200,160/200,180/200,200/200];

x1=[22.2/200,22.2/200,22.2/200,22.2/200,22.2/200,22.2/200,22.2/200,22.2/200,22.2/200,22.2/200,22.2/200];
x2=[44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4];
x3=[66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6];
x4=[88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8];
x5=[111,111,111,111,111,111,111,111,111,111,111];
x6=[133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2];
x7=[155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4];
x8=[177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6];
x9=[199,199,199,199,199,199,199,199,199,199,199];

%rescaleo
x2 = x2/200
x3 = x3/200
x4 = x4/200
x5 = x5/200
x6 = x6/200
x7 = x7/200
x8 = x8/200
x9 = x9/200

%%%%%%%%%%%%%%%%%%%%%%%%Figura medialuna%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r = 50/200;
phi = -pi/2:0.01:pi/2;
x_1 = r*cos(phi)+75/200;
y_1 = r*sin(phi)+100/200;

%%%%%%%%%%%%%%%%%%%%%%%%Figura triángulo%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=[40/200,40/200];
b=[40/200,160/200];
c=[160/200,100/200];
x=[a(1) b(1) c(1) a(1)];
y=[a(2) b(2) c(2) a(2)];

%%%%%%%%%%%%%%%%%%%%%%  Gráfico Triángulo  %%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,1)
plot(x0,y1,'-','LineWidth',lw,'color','#A2142F','MarkerSize',mz);
hold on
plot(x1,y1,'-','LineWidth',lw,'color','#4DBEEE','MarkerSize',mz);
plot(x2,y1,'-','LineWidth',lw,'color','#77AC30','MarkerSize',mz);
plot(x3,y1,'-','LineWidth',lw,'color','#7E2F8E','MarkerSize',mz);
plot(x4,y1,'-','LineWidth',lw,'color','#EDB120','MarkerSize',mz);
plot(x5,y1,'-','LineWidth',lw,'color','#D95319','MarkerSize',mz);
plot(x6,y1,'-','LineWidth',lw,'color','#0072BD','MarkerSize',mz);
plot(x7,y1,'-','LineWidth',lw,'color','b','MarkerSize',mz);
plot(x8,y1,'-','LineWidth',lw,'color','r','MarkerSize',mz);
plot(x9,y1,'-','LineWidth',lw,'color','m','MarkerSize',mz);
triangulo=patch(x,y,'black');
hold off
xlim([0 1])
yticks([0,0.5,1])
yticklabels({'0','0.5','1'})
ylabel('Length [L]')
ylabel('Length [L]')
ylim([0 1])
t = title('a)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna  %%%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,2)
plot(x0,y1,'-','LineWidth',lw,'color','#A2142F','MarkerSize',mz);
hold on
plot(x1,y1,'-','LineWidth',lw,'color','#4DBEEE','MarkerSize',mz);
plot(x2,y1,'-','LineWidth',lw,'color','#77AC30','MarkerSize',mz);
plot(x3,y1,'-','LineWidth',lw,'color','#7E2F8E','MarkerSize',mz);
plot(x4,y1,'-','LineWidth',lw,'color','#EDB120','MarkerSize',mz);
plot(x5,y1,'-','LineWidth',lw,'color','#D95319','MarkerSize',mz);
plot(x6,y1,'-','LineWidth',lw,'color','#0072BD','MarkerSize',mz);
plot(x7,y1,'-','LineWidth',lw,'color','b','MarkerSize',mz);
plot(x8,y1,'-','LineWidth',lw,'color','r','MarkerSize',mz);
plot(x9,y1,'-','LineWidth',lw,'color','m','MarkerSize',mz);
plot(x_1,y_1,'b','LineWidth',5,'color','k','MarkerSize',mz);
hold off
xlim([0 1])
ylim([0 1])
yticks([0,0.5,1])
yticklabels({'0','0.5','1'})
xlabel('Length [L]')
ylabel('Length [L]')
t = title('b)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.25  %%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,[3,5])
Array=csvread('salida - Triangulo - 0.25.csv');
A = Array(:, 4);

AB = (Array(:, 5)- Array(:, 24))
AC = max(Array(:, 5))
AD = max(Array(:, 24))
AE = max(AC,AD)

BB = (Array(:, 6)- Array(:, 23))
BC = max(Array(:, 6))
BD = max(Array(:, 23))
BE = max(BC,BD)

CB = (Array(:, 7)- Array(:, 22))
CC = max(Array(:, 7))
CD = max(Array(:, 22))
CE = max(CC,CD)

DB = (Array(:, 8)- Array(:, 21))
DC = max(Array(:, 8))
DD = max(Array(:, 21))
DE = max(DC,DD)

EB = (Array(:, 9)- Array(:, 20))
EC = max(Array(:, 9))
ED = max(Array(:, 20))
EE = max(EC,ED)

FB = (Array(:, 10)- Array(:, 19))
FC = max(Array(:, 10))
FD = max(Array(:, 19))
FE = max(FC,FD)

GB = (Array(:, 11)- Array(:, 18))
GC = max(Array(:, 11))
GD = max(Array(:, 18))
GE = max(GC,GD)

HB = (Array(:, 12)- Array(:, 17))
HC = max(Array(:, 12))
HD = max(Array(:, 17))
HE = max(HC,HD)

IB = (Array(:, 13)- Array(:, 16))
IC = max(Array(:, 13))
ID = max(Array(:, 16))
IE = max(IC,ID)

JB = (Array(:, 14)- Array(:, 15))
JC = max(Array(:, 14))
JD = max(Array(:, 15))
JE = max(JC,JD)

plot(A, (AB/AE)*100,'LineWidth',lw,'color','#A2142F','MarkerSize',mz)

hold on
plot(A, (BB/BE)*100, 'LineWidth',lw,'color','#4DBEEE','MarkerSize',mz)
plot(A, (CB/CE)*100, 'LineWidth',lw,'color','#77AC30','MarkerSize',mz)
plot(A, (DB/DE)*100, 'LineWidth',lw,'color','#7E2F8E','MarkerSize',mz)
plot(A, (EB/EE)*100, 'LineWidth',lw,'color','#EDB120','MarkerSize',mz)
plot(A, (FB/FE)*100, 'LineWidth',lw,'color','#D95319','MarkerSize',mz)
plot(A, (GB/GE)*100, 'LineWidth',lw,'color','#0072BD','MarkerSize',mz)
plot(A, (HB/HE)*100, 'LineWidth',lw,'color','b','MarkerSize',mz)
plot(A, (IB/IE)*100, 'LineWidth',lw,'color','r','MarkerSize',mz)
plot(A, (JB/JE)*100, 'LineWidth',lw,'color','m','MarkerSize',mz)
hold off
xlim([0 50])
%xlabel('Frecuency[1/s]')
ylabel('Rectification [%]')
t = title('c)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.25  %%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,[4,6])
Array1=csvread('salida - Medialuna - 0.25.csv');
A1 = Array1(:, 4);

AB1 = (Array1(:, 5)- Array1(:, 24))
AC1 = max(Array1(:, 5))
AD1 = max(Array1(:, 24))
AE1 = max(AC1,AD1)

BB1 = (Array1(:, 6)- Array1(:, 23))
BC1 = max(Array1(:, 6))
BD1 = max(Array1(:, 23))
BE1 = max(BC1,BD1)

CB1 = (Array1(:, 7)- Array1(:, 22))
CC1 = max(Array1(:, 7))
CD1 = max(Array1(:, 22))
CE1 = max(CC1,CD1)

DB1 = (Array1(:, 8)- Array1(:, 21))
DC1 = max(Array1(:, 8))
DD1 = max(Array1(:, 21))
DE1 = max(DC1,DD1)

EB1 = (Array1(:, 9)- Array1(:, 20))
EC1 = max(Array1(:, 9))
ED1 = max(Array1(:, 20))
EE1 = max(EC1,ED1)

FB1 = (Array1(:, 10)- Array1(:, 19))
FC1 = max(Array1(:, 10))
FD1 = max(Array1(:, 19))
FE1 = max(FC1,FD1)

GB1 = (Array1(:, 11)- Array1(:, 18))
GC1 = max(Array1(:, 11))
GD1 = max(Array1(:, 18))
GE1 = max(GC1,GD1)

HB1 = (Array1(:, 12)- Array1(:, 17))
HC1 = max(Array1(:, 12))
HD1 = max(Array1(:, 17))
HE1 = max(HC1,HD1)

IB1 = (Array1(:, 13)- Array1(:, 16))
IC1 = max(Array1(:, 13))
ID1 = max(Array1(:, 16))
IE1 = max(IC1,ID1)

JB1 = (Array1(:, 14)- Array1(:, 15))
JC1 = max(Array1(:, 14))
JD1 = max(Array1(:, 15))
JE1 = max(JC1,JD1)

plot(A1, (AB1/AE1)*100,'LineWidth',lw,'color','#A2142F','MarkerSize',mz)

hold on
plot(A1, (BB1/BE1)*100, 'LineWidth',lw,'color','#4DBEEE','MarkerSize',mz)
plot(A1, (CB1/CE1)*100, 'LineWidth',lw,'color','#77AC30','MarkerSize',mz)
plot(A1, (DB1/DE1)*100, 'LineWidth',lw,'color','#7E2F8E','MarkerSize',mz)
plot(A1, (EB1/EE1)*100, 'LineWidth',lw,'color','#EDB120','MarkerSize',mz)
plot(A1, (FB1/FE1)*100, 'LineWidth',lw,'color','#D95319','MarkerSize',mz)
plot(A1, (GB1/GE1)*100, 'LineWidth',lw,'color','#0072BD','MarkerSize',mz)
plot(A1, (HB1/HE1)*100, 'LineWidth',lw,'color','b','MarkerSize',mz)
plot(A1, (IB1/IE1)*100, 'LineWidth',lw,'color','r','MarkerSize',mz)
plot(A1, (JB1/JE1)*100, 'LineWidth',lw,'color','m','MarkerSize',mz)
hold off
xlim([0 50])
%xlabel('Frecuency[1/s]')
ylabel('Rectification [%]')
t = title('d)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.5  %%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,[7,9])
Array2=csvread('salida - Triangulo - 0.5.csv');
A2 = Array2(:, 4);

AB2 = (Array2(:, 5)- Array2(:, 24))
AC2 = max(Array2(:, 5))
AD2 = max(Array2(:, 24))
AE2 = max(AC2,AD2)

BB2 = (Array2(:, 6)- Array2(:, 23))
BC2 = max(Array2(:, 6))
BD2 = max(Array2(:, 23))
BE2 = max(BC2,BD2)

CB2 = (Array2(:, 7)- Array2(:, 22))
CC2 = max(Array2(:, 7))
CD2 = max(Array2(:, 22))
CE2 = max(CC2,CD2)

DB2 = (Array2(:, 8)- Array2(:, 21))
DC2 = max(Array2(:, 8))
DD2 = max(Array2(:, 21))
DE2 = max(DC2,DD2)

EB2 = (Array2(:, 9)- Array2(:, 20))
EC2 = max(Array2(:, 9))
ED2 = max(Array2(:, 20))
EE2 = max(EC2,ED2)

FB2 = (Array2(:, 10)- Array2(:, 19))
FC2 = max(Array2(:, 10))
FD2 = max(Array2(:, 19))
FE2 = max(FC2,FD2)

GB2 = (Array2(:, 11)- Array2(:, 18))
GC2 = max(Array2(:, 11))
GD2 = max(Array2(:, 18))
GE2 = max(GC2,GD2)

HB2 = (Array2(:, 12)- Array2(:, 17))
HC2 = max(Array2(:, 12))
HD2 = max(Array2(:, 17))
HE2 = max(HC2,HD2)

IB2 = (Array2(:, 13)- Array2(:, 16))
IC2 = max(Array2(:, 13))
ID2 = max(Array2(:, 16))
IE2 = max(IC2,ID2)

JB2 = (Array2(:, 14)- Array2(:, 15))
JC2 = max(Array2(:, 14))
JD2 = max(Array2(:, 15))
JE2 = max(JC2,JD2)

plot(A2, (AB2/AE2)*100,'LineWidth',lw,'color','#A2142F','MarkerSize',mz)

hold on
plot(A2, (BB2/BE2)*100, 'LineWidth',lw,'color','#4DBEEE','MarkerSize',mz)
plot(A2, (CB2/CE2)*100, 'LineWidth',lw,'color','#77AC30','MarkerSize',mz)
plot(A2, (DB2/DE2)*100, 'LineWidth',lw,'color','#7E2F8E','MarkerSize',mz)
plot(A2, (EB2/EE2)*100, 'LineWidth',lw,'color','#EDB120','MarkerSize',mz)
plot(A2, (FB2/FE2)*100, 'LineWidth',lw,'color','#D95319','MarkerSize',mz)
plot(A2, (GB2/GE2)*100, 'LineWidth',lw,'color','#0072BD','MarkerSize',mz)
plot(A2, (HB2/HE2)*100, 'LineWidth',lw,'color','b','MarkerSize',mz)
plot(A2, (IB2/IE2)*100, 'LineWidth',lw,'color','r','MarkerSize',mz)
plot(A2, (JB2/JE2)*100, 'LineWidth',lw,'color','m','MarkerSize',mz)
hold off
xlim([0 50])
%xlabel('Frecuency[1/s]')
ylabel('Rectification [%]')
t = title('e)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.5  %%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,[8,10])
Array3=csvread('salida - Medialuna - 0.5.csv');
A3 = Array3(:, 4);

AB3 = (Array3(:, 5)- Array3(:, 24))
AC3 = max(Array3(:, 5))
AD3 = max(Array3(:, 24))
AE3 = max(AC3,AD3)

BB3 = (Array3(:, 6)- Array3(:, 23))
BC3 = max(Array3(:, 6))
BD3 = max(Array3(:, 23))
BE3 = max(BC3,BD3)

CB3 = (Array3(:, 7)- Array3(:, 22))
CC3 = max(Array3(:, 7))
CD3 = max(Array3(:, 22))
CE3 = max(CC3,CD3)

DB3 = (Array3(:, 8)- Array3(:, 21))
DC3 = max(Array3(:, 8))
DD3 = max(Array3(:, 21))
DE3 = max(DC3,DD3)

EB3 = (Array3(:, 9)- Array3(:, 20))
EC3 = max(Array3(:, 9))
ED3 = max(Array3(:, 20))
EE3 = max(EC3,ED3)

FB3 = (Array3(:, 10)- Array3(:, 19))
FC3 = max(Array3(:, 10))
FD3 = max(Array3(:, 19))
FE3 = max(FC3,FD3)

GB3 = (Array3(:, 11)- Array3(:, 18))
GC3 = max(Array3(:, 11))
GD3 = max(Array3(:, 18))
GE3 = max(GC3,GD3)

HB3 = (Array3(:, 12)- Array3(:, 17))
HC3 = max(Array3(:, 12))
HD3 = max(Array3(:, 17))
HE3 = max(HC3,HD3)

IB3 = (Array3(:, 13)- Array3(:, 16))
IC3 = max(Array3(:, 13))
ID3 = max(Array3(:, 16))
IE3 = max(IC3,ID3)

JB3 = (Array3(:, 14)- Array3(:, 15))
JC3 = max(Array3(:, 14))
JD3 = max(Array3(:, 15))
JE3 = max(JC3,JD3)

plot(A3, (AB3/AE3)*100, 'LineWidth',lw,'color','#A2142F','MarkerSize',mz)

hold on
plot(A3, (BB3/BE3)*100, 'LineWidth',lw,'color','#4DBEEE','MarkerSize',mz)
plot(A3, (CB3/CE3)*100, 'LineWidth',lw,'color','#77AC30','MarkerSize',mz)
plot(A3, (DB3/DE3)*100, 'LineWidth',lw,'color','#7E2F8E','MarkerSize',mz)
plot(A3, (EB3/EE3)*100, 'LineWidth',lw,'color','#EDB120','MarkerSize',mz)
plot(A3, (FB3/FE3)*100, 'LineWidth',lw,'color','#D95319','MarkerSize',mz)
plot(A3, (GB3/GE3)*100, 'LineWidth',lw,'color','#0072BD','MarkerSize',mz)
plot(A3, (HB3/HE3)*100, 'LineWidth',lw,'color','b','MarkerSize',mz)
plot(A3, (IB3/IE3)*100, 'LineWidth',lw,'color','r','MarkerSize',mz)
plot(A3, (JB3/JE3)*100, 'LineWidth',lw,'color','m','MarkerSize',mz)
hold off
xlim([0 50])
%xlabel('Frecuency[1/s]')
ylabel('Rectification [%]')
t = title('f)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.75  %%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,[11,13])
Array4=csvread('salida - Triangulo - 0.75.csv');
A4 = Array4(:, 4);

AB4 = (Array4(:, 5)- Array4(:, 24))
AC4 = max(Array4(:, 5))
AD4 = max(Array4(:, 24))
AE4 = max(AC4,AD4)

BB4 = (Array4(:, 6)- Array4(:, 23))
BC4 = max(Array4(:, 6))
BD4 = max(Array4(:, 23))
BE4 = max(BC4,BD4)

CB4 = (Array4(:, 7)- Array4(:, 22))
CC4 = max(Array4(:, 7))
CD4 = max(Array4(:, 22))
CE4 = max(CC4,CD4)

DB4 = (Array4(:, 8)- Array4(:, 21))
DC4 = max(Array4(:, 8))
DD4 = max(Array4(:, 21))
DE4 = max(DC4,DD4)

EB4 = (Array4(:, 9)- Array4(:, 20))
EC4 = max(Array4(:, 9))
ED4 = max(Array4(:, 20))
EE4 = max(EC4,ED4)

FB4 = (Array4(:, 10)- Array4(:, 19))
FC4 = max(Array4(:, 10))
FD4 = max(Array4(:, 19))
FE4 = max(FC4,FD4)

GB4 = (Array4(:, 11)- Array4(:, 18))
GC4 = max(Array4(:, 11))
GD4 = max(Array4(:, 18))
GE4 = max(GC4,GD4)

HB4 = (Array4(:, 12)- Array4(:, 17))
HC4 = max(Array4(:, 12))
HD4 = max(Array4(:, 17))
HE4 = max(HC4,HD4)

IB4 = (Array4(:, 13)- Array4(:, 16))
IC4 = max(Array4(:, 13))
ID4 = max(Array4(:, 16))
IE4 = max(IC4,ID4)

JB4 = (Array4(:, 14)- Array4(:, 15))
JC4 = max(Array4(:, 14))
JD4 = max(Array4(:, 15))
JE4 = max(JC4,JD4)

plot(A4, (AB4/AE4)*100, 'LineWidth',lw,'color','#A2142F','MarkerSize',mz)

hold on
plot(A4, (BB4/BE4)*100, 'LineWidth',lw,'color','#4DBEEE','MarkerSize',mz)
plot(A4, (CB4/CE4)*100, 'LineWidth',lw,'color','#77AC30','MarkerSize',mz)
plot(A4, (DB4/DE4)*100, 'LineWidth',lw,'color','#7E2F8E','MarkerSize',mz)
plot(A4, (EB4/EE4)*100, 'LineWidth',lw,'color','#EDB120','MarkerSize',mz)
plot(A4, (FB4/FE4)*100, 'LineWidth',lw,'color','#D95319','MarkerSize',mz)
plot(A4, (GB4/GE4)*100, 'LineWidth',lw,'color','#0072BD','MarkerSize',mz)
plot(A4, (HB4/HE4)*100, 'LineWidth',lw,'color','b','MarkerSize',mz)
plot(A4, (IB4/IE4)*100, 'LineWidth',lw,'color','r','MarkerSize',mz)
plot(A4, (JB4/JE4)*100, 'LineWidth',lw,'color','m','MarkerSize',mz)
hold off
xlim([0 50])
xlabel('Frecuency[1/\tau]')
ylabel('Rectification [%]')
t = title('g)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.75  %%%%%%%%%%%%%%%%%%%%%%%
subplot(7,2,[12,14])
Array5=csvread('salida - Medialuna - 0.75.csv');
A5 = Array5(:, 4);

AB5 = (Array5(:, 5)- Array5(:, 24))
AC5 = max(Array5(:, 5))
AD5 = max(Array5(:, 24))
AE5 = max(AC5,AD5)

BB5 = (Array5(:, 6)- Array5(:, 23))
BC5 = max(Array5(:, 6))
BD5 = max(Array5(:, 23))
BE5 = max(BC5,BD5)

CB5 = (Array5(:, 7)- Array5(:, 22))
CC5 = max(Array5(:, 7))
CD5 = max(Array5(:, 22))
CE5 = max(CC5,CD5)

DB5 = (Array5(:, 8)- Array5(:, 21))
DC5 = max(Array5(:, 8))
DD5 = max(Array5(:, 21))
DE5 = max(DC5,DD5)

EB5 = (Array5(:, 9)- Array5(:, 20))
EC5 = max(Array5(:, 9))
ED5 = max(Array5(:, 20))
EE5 = max(EC5,ED5)

FB5 = (Array5(:, 10)- Array5(:, 19))
FC5 = max(Array5(:, 10))
FD5 = max(Array5(:, 19))
FE5 = max(FC5,FD5)

GB5 = (Array5(:, 11)- Array5(:, 18))
GC5 = max(Array5(:, 11))
GD5 = max(Array5(:, 18))
GE5 = max(GC5,GD5)

HB5 = (Array5(:, 12)- Array5(:, 17))
HC5 = max(Array5(:, 12))
HD5 = max(Array5(:, 17))
HE5 = max(HC5,HD5)

IB5 = (Array5(:, 13)- Array5(:, 16))
IC5 = max(Array5(:, 13))
ID5 = max(Array5(:, 16))
IE5 = max(IC5,ID5)

JB5 = (Array5(:, 14)- Array5(:, 15))
JC5 = max(Array5(:, 14))
JD5 = max(Array5(:, 15))
JE5 = max(JC5,JD5)

plot(A5, (AB5/AE5)*100,'LineWidth',lw,'color','#A2142F','MarkerSize',mz)

hold on
plot(A5, (BB5/BE5)*100, 'LineWidth',lw,'color','#4DBEEE','MarkerSize',mz)
plot(A5, (CB5/CE5)*100, 'LineWidth',lw,'color','#77AC30','MarkerSize',mz)
plot(A5, (DB5/DE5)*100, 'LineWidth',lw,'color','#7E2F8E','MarkerSize',mz)
plot(A5, (EB5/EE5)*100, 'LineWidth',lw,'color','#EDB120','MarkerSize',mz)
plot(A5, (FB5/FE5)*100, 'LineWidth',lw,'color','#D95319','MarkerSize',mz)
plot(A5, (GB5/GE5)*100, 'LineWidth',lw,'color','#0072BD','MarkerSize',mz)
plot(A5, (HB5/HE5)*100, 'LineWidth',lw,'color','b','MarkerSize',mz)
plot(A5, (IB5/IE5)*100, 'LineWidth',lw,'color','r','MarkerSize',mz)
plot(A5, (JB5/JE5)*100, 'LineWidth',lw,'color','m','MarkerSize',mz)
hold off
xlim([0 50])
xlabel('Frecuency[1/\tau]')
ylabel('Rectification [%]')
t = title('h)', 'Units', 'normalized', 'Position', [-0.15, 0.8, 0]); % Set Title with correct Position
