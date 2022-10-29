%%%%%%%%%%%%%%%%%%%%Editar Grafico%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lw = 3; %LineWidth
mz = 7; %MarkSize

%%%%%%%%%%%%%%%%%%%%%%%Posiciones de medición$$$$$$$$$$$$$$$$$$$$$$$$$
x0=[1,1,1,1,1,1,1,1,1,1,1];
x1=[22.2,22.2,22.2,22.2,22.2,22.2,22.2,22.2,22.2,22.2,22.2];
x2=[44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4,44.4];
x3=[66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6,66.6];
x4=[88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8,88.8];
x5=[111,111,111,111,111,111,111,111,111,111,111];
x6=[133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2,133.2];
x7=[155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4,155.4];
x8=[177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6,177.6];
x9=[199,199,199,199,199,199,199,199,199,199,199];
y1=[0,20,40,60,80,100,120,140,160,180,200];

%%%%%%%%%%%%%%%%%%%%%%%%Figura medialuna%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r = 50;
phi = -pi/2:0.01:pi/2;
x_1 = r*cos(phi)+75;
y_1 = r*sin(phi)+100;

%%%%%%%%%%%%%%%%%%%%%%%%Figura triángulo%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=[40,40];
b=[40,160];
c=[160,100];
x=[a(1) b(1) c(1) a(1)];
y=[a(2) b(2) c(2) a(2)];

%%%%%%%%%%%%%%%%%%%%%%  Gráfico Triángulo  %%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,1)
plot(x0,y1,'-','LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz);
hold on
plot(x1,y1,'-','LineWidth',lw,'color',[77/255,190/255,238/255],'MarkerSize',mz);
plot(x2,y1,'-','LineWidth',lw,'color',[119/255,172/255,48/255],'MarkerSize',mz);
plot(x3,y1,'-','LineWidth',lw,'color',[126/255,47/255,142/255],'MarkerSize',mz);
plot(x4,y1,'-','LineWidth',lw,'color',[237/255,177/255,32/255],'MarkerSize',mz);
plot(x5,y1,'-','LineWidth',lw,'color',[217/255,83/255,25/255],'MarkerSize',mz);
plot(x6,y1,'-','LineWidth',lw,'color',[0/255,114/255,189/255],'MarkerSize',mz);
plot(x7,y1,'-','LineWidth',lw,'color','b','MarkerSize',mz);
plot(x8,y1,'-','LineWidth',lw,'color','r','MarkerSize',mz);
plot(x9,y1,'-','LineWidth',lw,'color','m','MarkerSize',mz);
triangulo=patch(x,y,'black');
hold off
xlim([0 200])
ylim([0 200])
xlabel('Length (x-direction)')
%xticks([1,22.2,44.4,66.6,88.8,111.1,133.2,155.4,177.6,199.19])
%xticklabels({'0','L/9','2L/9','L/3','4L/9','5L/9','2L/3','7L/9','8L/9','L'})
xticks([0,200])
xticklabels({'0','L'})
yticks([0,200])
yticklabels({'0','L'})
ylabel('Length (y-direction)')
t = title('a)', 'Units', 'normalized', 'Position', [-0.3, 0.9, 0]); % Set Title with correct Position
%axis equal;
%%%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna  %%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,2)
plot(x0,y1,'-','LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz);
hold on
plot(x1,y1,'-','LineWidth',lw,'color',[77/255,190/255,238/255],'MarkerSize',mz);
plot(x2,y1,'-','LineWidth',lw,'color',[119/255,172/255,48/255],'MarkerSize',mz);
plot(x3,y1,'-','LineWidth',lw,'color',[126/255,47/255,142/255],'MarkerSize',mz);
plot(x4,y1,'-','LineWidth',lw,'color',[237/255,177/255,32/255],'MarkerSize',mz);
plot(x5,y1,'-','LineWidth',lw,'color',[217/255,83/255,25/255],'MarkerSize',mz);
plot(x6,y1,'-','LineWidth',lw,'color',[0/255,114/255,189/255],'MarkerSize',mz);
plot(x7,y1,'-','LineWidth',lw,'color','b','MarkerSize',mz);
plot(x8,y1,'-','LineWidth',lw,'color','r','MarkerSize',mz);
plot(x9,y1,'-','LineWidth',lw,'color','m','MarkerSize',mz);
plot(x_1,y_1,'b','LineWidth',5,'color','k','MarkerSize',mz);
hold off
xlim([0 200])
ylim([0 200])
xlabel('Length (x-direction)')
%xticks([1,22.2,44.4,66.6,88.8,111.1,133.2,155.4,177.6,199.19])
%xticklabels({'0','L/9','2L/9','L/3','4L/9','5L/9','2L/3','7L/9','8L/9','L'})
xticks([0,200])
xticklabels({'0','L'})
yticks([0,200])
yticklabels({'0','L'})
ylabel('Length (y-direction)')
t = title('b)', 'Units', 'normalized', 'Position', [-0.25, 0.9, 0]); % Set Title with correct Position
%axis equal;
%%%%%%%%%%%%%%%%%%%  Gráfico Triangulo 0.5  %%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,[3,5])
Array=csvread('salida - Triangulo - 0.5.csv');
A  = Array(:, 4);
AA = Array(:, 24);
BA = Array(:, 6);
CA = Array(:, 7);
DA = Array(:, 8);
EA = Array(:, 9);
FA = Array(:, 10);
GA = Array(:, 11);
HA = Array(:, 12);
IA = Array(:, 13);
JA = Array(:, 14);


%plot(A, AA,'-x','LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)
%hold on
loglog(A,BA,'-','LineWidth',lw,'color',[77/255,190/255,238/255],'MarkerSize',mz);
hold on
loglog(A,CA,'-','LineWidth',lw,'color',[119/255,172/255,48/255],'MarkerSize',mz);
loglog(A,DA,'-','LineWidth',lw,'color',[126/255,47/255,142/255],'MarkerSize',mz);
loglog(A,EA,'-','LineWidth',lw,'color',[237/255,177/255,32/255],'MarkerSize',mz);
loglog(A,FA,'-','LineWidth',lw,'color',[217/255,83/255,25/255],'MarkerSize',mz);
loglog(A,GA,'-','LineWidth',lw,'color',[0/255,114/255,189/255],'MarkerSize',mz);
loglog(A,HA,'-','LineWidth',lw,'color','b','MarkerSize',mz);
loglog(A,IA,'-','LineWidth',lw,'color','r','MarkerSize',mz);
loglog(A,JA,'-','LineWidth',lw,'color','m','MarkerSize',mz);

[CA_max,index] = max(CA);
A_max=A(index);
plot(A_max,CA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[BA_max,index] = max(BA);
A_max=A(index);
plot(A_max,BA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[DA_max,index] = max(DA);
A_max=A(index);
plot(A_max,DA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[EA_max,index] = max(EA);
A_max=A(index);
plot(A_max,EA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[FA_max,index] = max(FA);
A_max=A(index);
plot(A_max,FA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[GA_max,index] = max(GA);
A_max=A(index);
plot(A_max,GA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[HA_max,index] = max(HA);
A_max=A(index);
plot(A_max,HA_max,'v','MarkerSize',3,'LineWidth',5,'color','k');


hold off
xlim([0 600])
ylabel('Heat Flux [J/J*]')
xlabel('Frecuency [\omega/\Omega]','FontSize',10)
set(gca,'YScale','log')
ylim([0.01 1000])
t = title('c)', 'Units', 'normalized', 'Position', [-0.3, 0.95, 0]); % Set Title with correct Position

%%%%%%%%%%%%%%%%%%%  Gráfico Medialuna 0.5  %%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,[4,6])

Array=csvread('salida - Medialuna - 0.5.csv');
A1 = Array(:, 4);
AA1 = Array(:, 24);
BA1 = Array(:, 6);
CA1 = Array(:, 7);
DA1 = Array(:, 8);
EA1 = Array(:, 9);
FA1 = Array(:, 10);
GA1 = Array(:, 11);
HA1 = Array(:, 12);
IA1 = Array(:, 13);
JA1 = Array(:, 14);

%plot(A, AA,'-x','LineWidth',lw,'color',[162/255,20/255,47/255],'MarkerSize',mz)
%hold on
loglog(A1,BA1,'-','LineWidth',lw,'color',[77/255,190/255,238/255],'MarkerSize',mz);
hold on
loglog(A1,CA1,'-','LineWidth',lw,'color',[119/255,172/255,48/255],'MarkerSize',mz);
loglog(A1,DA1,'-','LineWidth',lw,'color',[126/255,47/255,142/255],'MarkerSize',mz);
loglog(A1,EA1,'-','LineWidth',lw,'color',[237/255,177/255,32/255],'MarkerSize',mz);
loglog(A1,FA1,'-','LineWidth',lw,'color',[217/255,83/255,25/255],'MarkerSize',mz);
loglog(A1,GA1,'-','LineWidth',lw,'color',[0/255,114/255,189/255],'MarkerSize',mz);
loglog(A1,HA1,'-','LineWidth',lw,'color','b','MarkerSize',mz);
loglog(A1,IA1,'-','LineWidth',lw,'color','r','MarkerSize',mz);
loglog(A1,JA1,'-','LineWidth',lw,'color','m','MarkerSize',mz);

[CA1_max,index] = max(CA1);
A1_max=A1(index);
plot(A1_max,CA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[BA1_max,index] = max(BA1);
A1_max=A1(index);
plot(A1_max,BA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[DA1_max,index] = max(DA1);
A1_max=A1(index);
plot(A1_max,DA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[EA1_max,index] = max(EA1);
A1_max=A1(index);
plot(A1_max,EA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[FA1_max,index] = max(FA1);
A1_max=A1(index);
plot(A1_max,FA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[GA1_max,index] = max(GA1);
A1_max=A1(index);
plot(A1_max,GA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');

[HA1_max,index] = max(HA1);
A1_max=A1(index);
plot(A1_max,HA1_max,'v','MarkerSize',3,'LineWidth',5,'color','k');


hold off
xlim([0 600])
ylabel('Heat Flux [J/J*]')
xlabel('Frecuency [\omega/\Omega]','FontSize',10)
set(gca,'YScale','log')
ylim([0.01 1000])
t = title('d)', 'Units', 'normalized', 'Position', [-0.25, 0.95, 0]); % Set Title with correct Position

x0=10;
y0=10;
width=500;
height=700
set(gcf,'position',[x0,y0,width,height])
