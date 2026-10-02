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