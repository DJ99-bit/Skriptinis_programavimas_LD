% Dominykas Jarutis EF-25/2 2026-09-25

%% 1a.

clear;
clc;
close all;

x = 0:0.5:2*pi;
y = sin(x) + cos(x).^2;

figure(1);
plot(x, y, 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y');

title('Funkcijos f(x) = sin(x) + cos^2(x) grafikas');
xlabel('x');
ylabel('f(x)');

grid on;
axis([min(x) max(x) min(y) max(y)]);
legend('f(x) = sin(x) + cos^2(x)', 'Location', 'northeastoutside');

%% 1b.

x2 = 0:0.01:1.2;
e = exp(1);

y1 = x2.^e;
y2 = x2.^(2*e);
y3 = x2.^(3*e);

figure(2);
plot(x2, y1, 'b-', x2, y2, 'r--', x2, y3, 'g-.', ...
    'LineWidth', 1.5);

title('Funkciju x^e, x^{2e} ir x^{3e} grafikai');
xlabel('x');
ylabel('f(x)');

grid on;
legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'northeastoutside');

%% 2a.

x3 = linspace(-2*pi, 2*pi, 41);
y3 = x3.^3 + sin(x3);

figure(3);
quiver(x3, zeros(size(x3)), zeros(size(x3)), y3, 0);

title('Funkcijos y = x^3 + sin(x) vektoriai');
xlabel('x');
ylabel('y');

grid on;

%% 2b.

figure(4);
barh(x3, y3);

title('x priklausomybe nuo y, kai y = x^3 + sin(x)');
xlabel('y');
ylabel('x');

grid on;

%% Papildoma uzduotis

t = 0:0.005:1.5;
A = 8;
f = 5;
sigma = 1.8;
U1 = 5;
U2 = 3;

s = A*cos(2*pi*f*t);
n = sigma*randn(size(t));
s = s + n;

s_filtruotas = s;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

%% a.

figure(5);
subplot(2, 1, 1);

plot(t, s, 'k');
hold on;
plot(t, s_filtruotas, 'Color', [0.5 0 0.5]);
yline(U1, '--');
yline(U2, '-');
hold off;

title('Pradinis ir filtruotas signalai');
xlabel('Laikas, s', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Itampa, V', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');

legend('Pradinis signalas', 'Filtruotas signalas', ...
    'U_1', 'U_2', 'Location', 'southwest');

axis([min(t) max(t) ...
    min([s s_filtruotas U1 U2])-1 max([s s_filtruotas U1 U2])+1]);
grid on;

%% b.

atranka = s > U1;
t_atrinktas = t(atranka);
s_atrinktas = s(atranka);

min_taskai = s_atrinktas == min(s_atrinktas);
max_taskai = s_atrinktas == max(s_atrinktas);

figure(5);
subplot(2, 1, 2);

stem(t_atrinktas, s_atrinktas);
hold on;

plot(t_atrinktas(min_taskai), s_atrinktas(min_taskai), ...
    'ys', 'MarkerFaceColor', 'y');

plot(t_atrinktas(max_taskai), s_atrinktas(max_taskai), 'ro');

hold off;

title('Pradinio signalo reiksmes, virsijancios U_1');
xlabel('Laikas, s', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Itampa, V', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');

legend('Reiksmes virs U_1', 'Minimali reiksme', ...
    'Maksimali reiksme', 'Location', 'southwest');

axis([min(t) max(t) 0 max(s_atrinktas)+1]);
grid on;