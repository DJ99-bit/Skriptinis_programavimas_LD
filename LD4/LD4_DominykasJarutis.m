% Dominykas Jarutis EF-25/2 2026-10-02

%% 1 a.

clear;
clc;
close all;

x = -1:0.05:1;
y = -1:0.05:1;

[X, Y] = meshgrid(x, y);

r = sqrt(X.^2 + Y.^2);
Z = exp(r.^2);

figure(1);
surf(X, Y, Z);

colormap('jet');
shading interp;
view(30, 30);

title('Pavirsiaus z = e^{r^2} grafikas');
xlabel('x');
ylabel('y');
zlabel('z');

%% 1b.

x2 = -2:0.05:1;
y2 = -2:0.05:1;

[X2, Y2] = meshgrid(x2, y2);

Z2 = 1 - 2*X2.^2 - 3*Y2.^2;

figure(2);
surf(X2, Y2, Z2);

colormap('hot');
shading interp;
view(45, 45);

title('Pavirsiaus f(x,y) = 1 - 2x^2 - 3y^2 grafikas');
xlabel('x');
ylabel('y');
zlabel('f(x,y)');