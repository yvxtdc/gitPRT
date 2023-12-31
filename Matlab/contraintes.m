function [P, Rc, Ro, Rb] = contraintes(d1, th2, th3, L, Ch)

% Recuperation des longueurs
l2 = L(2);
l3 = L(3);
l4 = L(4);
l5 = L(5);

% Raideur de la liaison
Ck = 0;

% PFS Bras
F = -(Ck+(cos(th3)*l4-sin(th3)*l5)*Ch)/(cos(th2)*cos(th3)*l2+cos(th3)*sin(th2)*l3+sin(th3)*cos(th2)*l3-sin(th3)*sin(th2)*l2); % Force dans la bielle
RxC = F*sin(th2)-Ch;  % Force selon x dans la laison pivot
RzC = -F*cos(th2);     % Force selon z dans la liaison pivot

% PFS Piston
RxO = -F*sin(th2);
MrO = -F*sin(th2)*d1;
P = -F*cos(th2);

% Attributions
Rb = [-F*sin(th2) 0 ; 0 0 ; F*cos(th2) 0];
Rc = [RxC 0 ; 0 0 ; RzC 0];
Ro = [RxO 0 ; 0 MrO ; 0 0];



