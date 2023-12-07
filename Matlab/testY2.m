close all;
clear all;
clc;


L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

th3_angle = 0:-0.25:-8.75;
th3 = th3_angle*pi/180;

d1 = zeros(size(th3));
th2 = d1;
P = d1;
Rcx = d1;
Rcz = d1;

for i = 1:size(th3,2)
    [d1(i), th2(i)] = MGI(th3(i), L);
    [P(i), Rc, Ro, Rb] = contraintes(d1(i), th2(i), th3(i), L, 15);
    Rcx(i) = Rc(1,1);
    Rcz(i) = Rc(3,1);
    
end



%%

materiau = 'PLA';
type = 'col';
r = 2;
b = 5;
%theta = 1;
F = 25;

t =0.8:0.8:8;

VectRe = zeros(size(t));

figure(2)

for j=1:size(t,2)

for i = 1:size(th3,2)
VonMises(i)=cVonMises(materiau, type, t(j), r, b, th3(i), L, F);  
end

plot(th3, VonMises, 'DisplayName', ['t = ', num2str(t(j)),'mm']);
hold on;

end

legend('show');
hXlabel=xlabel('Angle $\theta_3$ [rad]');
hYlabel=ylabel('Von Mises $\sigma_{VM}$ [MPa]');
set(hXlabel,'Interpreter','latex');
set(hYlabel,'Interpreter','latex');
hTitle=title('Evolution de $\sigma_{VM}$ selon $\theta_{3}$');
set(hTitle,'Interpreter','latex');
grid on;

%limite élastique:

if strcmp(materiau, 'aluminium')
    Re = 40;
elseif strcmp(materiau, 'acier')
    Re = 250;
elseif strcmp(materiau, 'PLA')
    Re = 60;
elseif strcmp(materiau, 'ABS')
    Re = 40;
end

for i=1:size(th3,2)
VectRe(i) = Re;
end

plot(th3, VectRe,'DisplayName', 'Re')
