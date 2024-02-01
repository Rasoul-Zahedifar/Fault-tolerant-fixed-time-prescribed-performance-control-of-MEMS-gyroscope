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
sim('Sim_MEMSFixed_CS2.slx')
close all
Simoutput1=ans;

sim('Sim_MEMSFinite_CS2.slx')
close all
Simoutput2=ans;

lw=2;fs=13;

figure(1);
subplot(2,1,1)
hold on;
patch([0,10,10,0],[2,2,-3,-3],[0 0.6 0.8],'EdgeColor',[0 0.6 0.8],'LineWidth',0.0001);
tt= 0 : 0.001:10;
t2 = [tt,fliplr(tt)];
inBetween1 = [-Simoutput1.p1'+Simoutput1.x1des',fliplr(Simoutput1.p1'+Simoutput1.x1des')];
fill(t2,inBetween1, [0 1 0.5],'EdgeColor',[0 1 0.5],'LineWidth',0.0001);
h1=plot(Simoutput1.t,Simoutput1.q11,'-.','color',[0 0 1],'LineWidth',lw);
h2=plot(Simoutput1.t,Simoutput1.x1des,'--','color',[0 0 0],'LineWidth',lw);
h3=plot(Simoutput1.t,Simoutput1.p1+Simoutput1.x1des,'color',	[0.6350 0.0780 0.1840],'LineWidth',lw-0.75);
h4=plot(Simoutput1.t,-Simoutput1.p1+Simoutput1.x1des,'color',	[0.8500 0.3250 0.0980],'LineWidth',lw-0.75);
lgnd1=legend('NAA','AA','\itx','\itx_{1d}','upper bound','lower bound','Location','NorthEast','Orientation','horizontal','NumColumns',2);set(lgnd1,'color','w','EdgeColor','w','FontSize',7);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'x','(Fixed-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-3 2]);
hold off;
subplot(2,1,2);
hold on;
patch([0,10,10,0],[2,2,-3,-3],[0 0.6 0.8],'EdgeColor',[0 0.6 0.8],'LineWidth',0.0001);
inBetween2 = [-Simoutput2.p1'+Simoutput2.x1des',fliplr(Simoutput2.p1'+Simoutput2.x1des')];
fill(t2,inBetween2, [0 1 0.5],'EdgeColor',[0 1 0.5],'LineWidth',0.0001);
h5=plot(Simoutput2.t,Simoutput2.q11,'-.','color',[0 0 1],'LineWidth',lw);
h6=plot(Simoutput2.t,Simoutput2.x1des,'--','color',[0 0 0],'LineWidth',lw);
h7=plot(Simoutput2.t,Simoutput2.p1+Simoutput2.x1des,'color',	[0.6350 0.0780 0.1840],'LineWidth',lw-0.75);
h8=plot(Simoutput2.t,-Simoutput2.p1+Simoutput2.x1des,'color',	[0.8500 0.3250 0.0980],'LineWidth',lw-0.75);
lgnd2=legend('NAA','AA','\itx','\itx_{1d}','upper bound','lower bound','Location','NorthEast','Orientation','horizontal','NumColumns',2);set(lgnd2,'color','w','EdgeColor','w','FontSize',7);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'x','(Finite-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-3 2]);
hold off;


figure(2);
subplot(2,1,1)
hold on;
patch([0,10,10,0],[2,2,-3,-3],[0 0.6 0.8],'EdgeColor',[0 0.6 0.8],'LineWidth',0.0001);
inBetween3 = [-Simoutput1.p2'+Simoutput1.y1des',fliplr(Simoutput1.p2'+Simoutput1.y1des')];
fill(t2,inBetween3, [0 1 0.5],'EdgeColor',[0 1 0.5],'LineWidth',0.0001);
h9=plot(Simoutput1.t,Simoutput1.q12,'-.','color',[0 0 1],'LineWidth',lw);
h10=plot(Simoutput1.t,Simoutput1.y1des,'--','color',[0 0 0],'LineWidth',lw);
h11=plot(Simoutput1.t,Simoutput1.p2+Simoutput1.y1des,'color',[0.6350 0.0780 0.1840],'LineWidth',lw-0.75);
h12=plot(Simoutput1.t,-Simoutput1.p2+Simoutput1.y1des,'color',[0.8500 0.3250 0.0980],'LineWidth',lw-0.75);
lgnd3=legend('NAA','AA','\ity','\ity_{1d}','upper bound','lower bound','Location','NorthEast','Orientation','horizontal','NumColumns',2);set(lgnd3,'color','w','EdgeColor','w','FontSize',7);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'y','(Fixed-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-3 2]);
hold off;
subplot(2,1,2)
hold on;
patch([0,10,10,0],[2,2,-3,-3],[0 0.6 0.8],'EdgeColor',[0 0.6 0.8],'LineWidth',0.0001);
inBetween4 = [-Simoutput2.p2'+Simoutput2.y1des',fliplr(Simoutput2.p2'+Simoutput2.y1des')];
fill(t2,inBetween4, [0 1 0.5],'EdgeColor',[0 1 0.5],'LineWidth',0.0001);
h13=plot(Simoutput2.t,Simoutput2.q12,'-.','color',[0 0 1],'LineWidth',lw);
h14=plot(Simoutput2.t,Simoutput2.y1des,'--','color',[0 0 0],'LineWidth',lw);
h15=plot(Simoutput2.t,Simoutput2.p2+Simoutput2.y1des,'color',[0.6350 0.0780 0.1840],'LineWidth',lw-0.75);
h16=plot(Simoutput2.t,-Simoutput2.p2+Simoutput2.y1des,'color',[0.8500 0.3250 0.0980],'LineWidth',lw-0.75);
lgnd4=legend('NAA','AA','\ity','\ity_{1d}','upper bound','lower bound','Location','NorthEast','Orientation','horizontal','NumColumns',2);set(lgnd4,'color','w','EdgeColor','w','FontSize',7);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'y','(Finite-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-3 2]);
hold off;


figure(3);
subplot(2,1,1)
hold on;
box on;
h17=plot(Simoutput1.t,Simoutput1.e11,'-.','color',[1 0 0],'LineWidth',lw);
h18=plot(Simoutput1.t,Simoutput1.e12,'--','color',[0 0 1],'LineWidth',lw);
lgnd5=legend('\ite_{11}','\ite_{12}','Location','NorthEast','Orientation','horizontal');set(lgnd5,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Position Error','(Fixed-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-4 4]);
hold off;
subplot(2,1,2)
hold on;
box on;
h19=plot(Simoutput2.t,Simoutput2.e11,'-.','color',[1 0 0],'LineWidth',lw);
h20=plot(Simoutput2.t,Simoutput2.e12,'--','color',[0 0 1],'LineWidth',lw);
lgnd6=legend('\ite_{11}','\ite_{12}','Location','NorthEast','Orientation','horizontal');set(lgnd6,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Position Error','(Finite-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-4 4]);
hold off;

figure(4)
subplot(2,1,1);
hold on;
box on;
h21=plot(Simoutput1.t,Simoutput1.e21,'-.','color',[1 0 0],'LineWidth',lw);
h22=plot(Simoutput1.t,Simoutput1.e22,'--','color',[0 0 1],'LineWidth',lw);
lgnd7=legend('\ite_{21}','\ite_{22}','Location','NorthEast','Orientation','horizontal');set(lgnd7,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Velocity Error','(Fixed-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-8 8]);
hold off;
subplot(2,1,2);
hold on;
box on;
h23=plot(Simoutput2.t,Simoutput2.e21,'-.','color',[1 0 0],'LineWidth',lw);
h24=plot(Simoutput2.t,Simoutput2.e22,'--','color',[0 0 1],'LineWidth',lw);
lgnd8=legend('\ite_{21}','\ite_{22}','Location','NorthEast','Orientation','horizontal');set(lgnd8,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Velocity Error','(Finite-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-8 8]);
hold off;


figure(5);
subplot(2,1,1);
hold on;
box on;
h25=plot(Simoutput1.t,Simoutput1.u1,'--','color',[0 0.4470 0.7410],'LineWidth',lw);
h26=plot(Simoutput1.t,Simoutput1.u2,'-.','color',[0.8500 0.3250 0.0980],'LineWidth',lw);
lgnd9=legend('\itu_x','\itu_y','Location','NorthEast','Orientation','horizontal');set(lgnd9,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Input','(Fixed-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-5000 5000]);
hold off;
subplot(2,1,2);
hold on;
box on;
h27=plot(Simoutput2.t,Simoutput2.u1,'--','color',[0 0.4470 0.7410],'LineWidth',lw);
h28=plot(Simoutput2.t,Simoutput2.u2,'-.','color',[0.8500 0.3250 0.0980],'LineWidth',lw);
lgnd10=legend('\itu_x','\itu_y','Location','NorthEast','Orientation','horizontal');set(lgnd10,'color','w','EdgeColor','w','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Input','(Finite-Time)'},'FontSize',fs,'FontName','cambria');
ylim([-5000 5000]);
hold off;

