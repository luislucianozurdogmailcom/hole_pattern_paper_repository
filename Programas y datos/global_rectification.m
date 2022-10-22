%%%%%%%%%%%%%%%%%%%%Editar Grafico%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lw = 3; %LineWidth
mz = 5; %MarkSize
fz = 10; %FontSize

%%%%%%%%%%%%%%%%%%%%%%%Posiciones de medición$$$$$$$$$$$$$$$$$$$$$$$$$
x0=[1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200,1/200];
y1=[0,20/200,40/200,60/200,80/200,100/200,120/200,140/200,160/200,180/200,200/200];


%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.25  %%%%%%%%%%%%%%%%%%%%%%%
subplot(6,2,[1,3])
Array=csvread('salida - Triangulo - 0.25.csv');
A = Array(:, 4);
AB = (Array(:, 5)- Array(:, 24));

% Metemos un spline para suavizar curvas
A_spline = linspace(min(A), max(A), 300);
AB       = spline(A,AB, A_spline);
A        = A_spline;

AC = max(Array(:, 5))
AD = max(Array(:, 24))
AE = max(AC,AD)

plot(A, (AB/AE)*100,'LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)

xlim([0 300])
ylim([-0.28,0.27])
ylabel('Rectification [%]','FontSize',fz)
t = title('a)', 'Units', 'normalized', 'Position', [-0.2, 1, 0],'FontSize',fz); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.25  %%%%%%%%%%%%%%%%%%%%%%%
subplot(6,2,[2,4])
Array1=csvread('salida - Medialuna - 0.25.csv');
A1 = Array1(:, 4);
AB1 = (Array1(:, 5)- Array1(:, 24))

% Metemos un spline para suavizar curvas
A1_spline = linspace(min(A1), max(A1), 300);
AB1       = spline(A1,AB1, A1_spline);
A1        = A1_spline;

AC1 = max(Array1(:, 5))
AD1 = max(Array1(:, 24))
AE1 = max(AC1,AD1)

plot(A1, (AB1/AE1)*100,'LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)


xlim([0 250])
ylim([-0.12, 0.12]);
ylabel('Rectification [%]','FontSize',fz)
t = title('b)', 'Units', 'normalized', 'Position', [-0.2, 1, 0],'FontSize',fz); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.5  %%%%%%%%%%%%%%%%%%%%%%%
subplot(6,2,[5,7])
Array2=csvread('salida - Triangulo - 0.5.csv');
A2 = Array2(:, 4);
AB2 = (Array2(:, 5)- Array2(:, 24))

% Metemos un spline para suavizar curvas
A2_spline = linspace(min(A2), max(A2), 300);
AB2       = spline(A2,AB2, A2_spline);
A2        = A2_spline;

AC2 = max(Array2(:, 5))
AD2 = max(Array2(:, 24))
AE2 = max(AC2,AD2)

plot(A2, (AB2/AE2)*100,'LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)

xlim([0 300])
ylim([-2.2,1.7])
ylabel('Rectification [%]','FontSize',fz)
t = title('c)', 'Units', 'normalized', 'Position', [-0.2, 1, 0],'FontSize',fz); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.5  %%%%%%%%%%%%%%%%%%%%%%%
subplot(6,2,[6,8])
Array3=csvread('salida - Medialuna - 0.5.csv');
A3 = Array3(:, 4);
AB3 = (Array3(:, 5)- Array3(:, 24))

% Metemos un spline para suavizar curvas
A3_spline = linspace(min(A3), max(A3), 300);
AB3       = spline(A3,AB3, A3_spline);
A3        = A3_spline;

AC3 = max(Array3(:, 5))
AD3 = max(Array3(:, 24))
AE3 = max(AC3,AD3)

plot(A3, (AB3/AE3)*100,'LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)

xlim([0 250])
ylim([-0.6,0.65])
ylabel('Rectification [%]','FontSize',fz)
t = title('d)', 'Units', 'normalized', 'Position', [-0.2, 1, 0],'FontSize',fz); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.75  %%%%%%%%%%%%%%%%%%%%%%%
subplot(6,2,[9,11])
Array4=csvread('salida - Triangulo - 0.75.csv');
A4 = Array4(:, 4);
AB4 = (Array4(:, 5)- Array4(:, 24))

% Metemos un spline para suavizar curvas
A4_spline = linspace(min(A4), max(A4), 300);
AB4       = spline(A4,AB4, A4_spline);
A4        = A4_spline;

AC4 = max(Array4(:, 5))
AD4 = max(Array4(:, 24))
AE4 = max(AC4,AD4)

plot(A4, (AB4/AE4)*100,'LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)

xlim([0 500])
ylim([-7.5, 6])
xlabel('Frecuency [\omega/\Omega]','FontSize',fz)
ylabel('Rectification [%]','FontSize',fz)
t = title('e)', 'Units', 'normalized', 'Position', [-0.2, 1, 0],'FontSize',fz); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.75  %%%%%%%%%%%%%%%%%%%%%%%
subplot(6,2,[10,12])
Array5=csvread('salida - Medialuna - 0.75.csv');
A5 = Array5(:, 4);
AB5 = (Array5(:, 5)- Array5(:, 24))

% Metemos un spline para suavizar curvas
A5_spline = linspace(min(A5), max(A5), 300);
AB5       = spline(A5,AB5, A5_spline);
A5        = A5_spline;

AC5 = max(Array5(:, 5))
AD5 = max(Array5(:, 24))
AE5 = max(AC5,AD5)

plot(A5, (AB5/AE5)*100,'LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)

xlim([0 250])
ylim([-1.3, 1.8])
xlabel('Frecuency [\omega/\Omega]','FontSize',fz)
ylabel('Rectification [%]','FontSize',fz)
t = title('f)', 'Units', 'normalized', 'Position', [-0.2, 1, 0],'FontSize',fz); % Set Title with correct Position

x0=10;
y0=10;
width=700;
height=700
set(gcf,'position',[x0,y0,width,height])
