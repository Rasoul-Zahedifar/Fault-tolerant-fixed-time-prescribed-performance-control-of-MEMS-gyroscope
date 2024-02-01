function output=MEMS_fault_tolerant(in)

global k1 k2 k3 k4 landa landabar beta betabar delta deltabar kesi kesibar pp p0 pinf taw eps ll

q11=in(1);
q12=in(2);
q21=in(3);
q22=in(4);
gamahat1=in(5);
gamahat2=in(6);
sigmahat1=in(7);
sigmahat2=in(8);
dhat1=in(9);
dhat2=in(10);
rohat1=in(11);
rohat2=in(12);
t=in(13);

q1=[q11 q12];
q2=[q21 q22];
gamahat=[gamahat1 gamahat2];
sigmahat=[sigmahat1 sigmahat2];
dhat=[dhat1 dhat2];
rohat=[rohat1 rohat2];
% rohat=[1 1];
% x1des=0.1+0.25*sin(pi*t/2);
% x1desdot=0.25*pi*0.5*cos(pi*t/2);
% x1desddot=-0.25*pi*pi*0.5*0.5*sin(pi*t/2);
% 
% y1des=-0.1+0.25*cos(pi*t);
% y1desdot=-0.25*pi*sin(pi*t);
% y1desddot=-0.25*pi*pi*cos(pi*t);

% x1des=sin(4.17*t);
% x1desdot=4.17*cos(4.17*t);
% x1desddot=-4.17*4.17*sin(4.17*t);
% 
% y1des=0.7*sin(5.67*t);
% y1desdot=0.7*5.67*cos(5.67*t);
% y1desddot=-0.7*5.67*5.67*sin(5.67*t);

x1des=-1.2+0.85*sin(4.64*t);
x1desdot=0.85*4.64*cos(4.64*t);
x1desddot=-0.85*4.64*4.64*sin(4.64*t);

y1des=-1+0.7*sin(5.26*t);
y1desdot=0.7*5.26*cos(5.26*t);
y1desddot=-0.7*5.26*5.26*sin(5.26*t);

q1des=[x1des y1des];
q1desdot=[x1desdot y1desdot];
q1desddot=[x1desddot y1desddot];

p=[(p0-pinf)*exp(-taw*t)+pinf (p0-pinf)*exp(-taw*t)+pinf];
pdot=-taw*[(p0-pinf)*exp(-taw*t) (p0-pinf)*exp(-taw*t)];


e1=q1-q1des;
e1dot=q2-q1desdot;

H=e1./(ll.*p);
Hdot=(e1dot.*p-pdot.*e1)./(ll.*p.^2);

epsilon=(1/(eps))*log(sqrt(abs(((H+1)./(1-H)))));
epsilondot=(1/(eps))*(1./([1 1]-H.^2)).*(e1dot.*p-e1.*pdot)./p.^2;

alpha=q1desdot-taw*e1.*(1-(pinf./p))+eps*ll.*p.*([1 1]-H.^2).*(-(0.5^0.75)*k1*epsilon.^0.5-(0.5^2)*k2*epsilon.^3);
alphadot=q1desddot-taw*e1dot.*(1-(pinf./p))-taw*e1.*(pinf.*pdot./p.^2)+eps*ll.*pdot.*([1 1]-H.^2).*(-(0.5^0.75)*k1*epsilon.^0.5-(0.5^2)*k2*epsilon.^3)+eps*ll.*p.*(2*H.*Hdot./([1 1]-H.^2).^2).*(-(0.5^0.75)*k1*epsilon.^0.5-(0.5^2)*k2*epsilon.^3)+eps*ll.*p.*([1 1]-H.^2).*(-(0.5^0.75)*0.5*k1*epsilondot.*epsilon.^(-0.5)-(0.5^2)*3*k2*epsilondot.*epsilon.^2);

e2=q2-alpha;

% if rohat(1)>=1  
%     rohat(1)=1;
% end
% if rohat(1)<=-1 
%     rohat(1)=-1;
% end
% if rohat(2)>=1
%     rohat(2)=1;
% end 
% if rohat(2)<=-1
%     rohat(2)=-1;
% end 

                
uprim=alphadot-gamahat-sigmahat-dhat-epsilon.*(1/eps).*(1./p).*(1./ll).*(1./([1 1]-H.^2))-(0.5^0.75)*k3*e2.^0.5-(0.5^2)*k4*e2.^3;
u=pp*(uprim./rohat);
if u(1)>=8000  
    u(1)=8000;
end
if u(1)<=-8000 
    u(1)=-8000;
end
if u(2)>=8000
    u(2)=8000;
end
if u(2)<=-8000
    u(2)=-8000;
end 

gamahatdot=e2-landa*gamahat-landabar*gamahat.^3;
sigmahatdot=e2-beta*sigmahat-betabar*sigmahat.^3;
dhatdot=e2-delta*dhat-deltabar*dhat.^3;
rohatdot=e2.*uprim./rohat-kesi.*rohat-kesibar*rohat.^3;



% dxx=1.8*10^(-6);dxy=3.6*10^(-7);dyy=1.8*10^(-6);
dxx=0.4*10^(-6);dxy=0.04*10^(-6);dyy=0.04*10^(-6);
w0=1000; 
m=1.8*10^(-7);
D=[dxx dxy;dxy dyy];
% M=D+2*[0 -100;100 0];
M=D+2*[0 -0.1;0.1 0];
% m=1.8*10^(-7);
% kxx=63.955;kyy=95.92;kxy=12.779;
kxx=63.955;kyy=95.92;kxy=12.779;
wx=sqrt(kxx/(m*w0^2));
wy=sqrt(kyy/(m*w0^2));
wxy=kxy/(m*w0^2);
k=[wx^2 wxy;wxy wy^2];
% % dxx=1.8*10^(-6);dxy=3.6*10^(-7);dyy=1.8*10^(-6);
% dxx=0.01;dxy=0.002;dyy=0.01;
% D=[dxx dxy;dxy dyy];
% % M=D+2*[0 -100;100 0];
% M=D+2*[0 -0.1;0.1 0];
% % m=1.8*10^(-7);
% m=0.57*10^(-8);
% % kxx=63.955;kyy=95.92;kxy=12.779;
% kxx=81;kyy=71;kxy=5;
% w0=1000; 
% wx=sqrt(355.3);
% wy=sqrt(532.9);
% wxy=70.99;
% k=[wx^2 wxy;wxy wy^2];
gama=(-M*q1'-k*q2')';
sigma=[-1*exp(0.8*t) -1*exp(0.8*t)];
% d=[10*rand(1) 10*rand(1)];
d=[0.5 0.5];
if t>=5 && t<=6
   d=[-2100 -2120]; 
end

ro=[0.6 0.6];
q1dot=q2;
q2dot=gama+ro.*u+sigma+d;

output=[q1dot q2dot gamahatdot sigmahatdot dhatdot rohatdot u epsilon e1 e2 p q1des gama sigma d ro];


