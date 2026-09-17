% Dominykas Jarutis EF-25/2 2026-09-11

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2 [-x-]')
%% Papildoma
N = 9;
v = N+1:0.5:N+4;
A = [N N+1 N+2; N+3 N+4 N+5; N+6 N+7 N+8];
a = A(3,2);
b = A(2:3,1:2);
c = A([1 3],[1 3]);
v_mod = v(1:3);
Av = [A; v_mod];