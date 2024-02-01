close all
clear
clc

global k1 k2 k3 k4 landa landabar beta betabar delta deltabar kesi kesibar pp p0 pinf taw eps ll
pp=1;
p0=1;
pinf=0.25;
taw=0.25;
eps=0.004;
k1=0.0005;
k2=0.001;
k3=0.0005;
k4=0.001;
landa=0.1;
landabar=0.1;
beta=0.1;
betabar=0.1;
delta=0.01;
deltabar=0.01;
kesi=0.001;
kesibar=0.0001;
ll=[1 1];
sim('Sim_MEMSPP_CS1.slx')
close all
Simoutput=ans;

lw=2;fs=13;

figure(1);
hold on;
patch([0,10,10,0],[1.5,1.5,-5,-5],[0 0.6 0.8],'EdgeColor',[0 0.6 0.8],'LineWidth',0.0001);
tt= 0 : 0.001:10;
t2 = [tt,fliplr(tt)];
inBetween1 = [-Simoutput.p1'+Simoutput.x1des',fliplr(Simoutput.p1'+Simoutput.x1des')];
fill(t2,inBetween1, [0 1 0.5],'EdgeColor',[0 1 0.5],'LineWidth',0.0001);
h1=plot(Simoutput.t,Simoutput.q11,'-.','color',[0 0 1],'LineWidth',lw);
h2=plot(Simoutput.t,Simoutput.x1des,'--','color',[0 0 0],'LineWidth',lw);
h3=plot(Simoutput.t,Simoutput.p1+Simoutput.x1des,'color',		[0.6350 0.0780 0.1840],'LineWidth',lw-0.75);
h4=plot(Simoutput.t,-Simoutput.p1+Simoutput.x1des,'color',			[0.8500 0.3250 0.0980],'LineWidth',lw-0.75);
lgnd1=legend('NAA','AA','\itx','\itx_{1d}','upper bound','lower bound','Location','NorthEast','Orientation','horizontal','NumColumns',2);set(lgnd1,'color',[1 1 1],'EdgeColor',[1 1 1],'FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel('x','FontSize',fs,'FontName','cambria');
ylim([-5 1.5]);
hold off;

figure(2);
hold on;
patch([0,10,10,0],[1.5,1.5,-5,-5],[0 0.6 0.8],'EdgeColor',[0 0.6 0.8],'LineWidth',0.0001);
inBetween2 = [-Simoutput.p2'+Simoutput.y1des',fliplr(Simoutput.p2'+Simoutput.y1des')];
fill(t2,inBetween2, [0 1 0.5],'EdgeColor',[0 1 0.5],'LineWidth',0.0001);
h5=plot(Simoutput.t,Simoutput.q12,'-.','color',[0 0 1],'LineWidth',lw);
h6=plot(Simoutput.t,Simoutput.y1des,'--','color',[0 0 0],'LineWidth',lw);
h7=plot(Simoutput.t,Simoutput.p2+Simoutput.y1des,'color',[0.6350 0.0780 0.1840],'LineWidth',lw-0.75);
h8=plot(Simoutput.t,-Simoutput.p2+Simoutput.y1des,'color',[0.8500 0.3250 0.0980],'LineWidth',lw-0.75);
lgnd2=legend('NAA','AA','\ity','\ity_{1d}','upper bound','lower bound','Location','NorthEast','Orientation','horizontal','NumColumns',2);set(lgnd2,'color',[1 1 1],'EdgeColor',[1 1 1],'FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel('y','FontSize',fs,'FontName','cambria');
ylim([-5 1.5]);
hold off;

figure(3);
subplot(2,1,1)
hold on;
box on;
h10=plot(Simoutput.t,Simoutput.e11,'-.','color',[1 0 0],'LineWidth',lw);
h11=plot(Simoutput.t,Simoutput.e12,'--','color',[0 0 1],'LineWidth',lw);
lgnd3=legend('\ite_{11}','\ite_{12}','Location','NorthEast','Orientation','horizontal');set(lgnd3,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel('Position Error','FontSize',fs,'FontName','cambria');
ylim([-4 4]);
hold off;
subplot(2,1,2);
hold on;
box on;
h13=plot(Simoutput.t,Simoutput.e21,'-.','color',[1 0 0],'LineWidth',lw);
h14=plot(Simoutput.t,Simoutput.e22,'--','color',[0 0 1],'LineWidth',lw);
lgnd4=legend('\ite_{21}','\ite_{22}','Location','NorthEast','Orientation','horizontal');set(lgnd4,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel('Velocity Error','FontSize',fs,'FontName','cambria');
ylim([-12 20]);
hold off;

figure(4);
hold on;
box on;
h15=plot(Simoutput.t,Simoutput.u1,'color',[0 0.4470 0.7410],'LineWidth',lw);
h16=plot(Simoutput.t,Simoutput.u2,'color',[0.8500 0.3250 0.0980],'LineWidth',lw);
lgnd5=legend('\itu_x','\itu_y','Location','NorthEast','Orientation','horizontal');set(lgnd5,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel('Input','FontSize',fs,'FontName','cambria');
ylim([-8500 8500]);
hold off;

