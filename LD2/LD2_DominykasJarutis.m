% Dominykas Jarutis EF-25/2 2026-09-18

clear
%% 1. Vienmaciai masyvai
% a)
v1 = (-5:0.6:5)';

% b)
v2 = sqrt(v1);

% c)
paskutinis = v2(end);

% d)
v3 = (v1 .* v2) ./ paskutinis;
%% 2. Dvimaciai masyvai
% a)
X = [2*sqrt(2), log(2); 2^5, 2*pi; 3*sqrt(2), exp(2)]

% b)
Xm = [2*sqrt(2); 5; 2^-2]
X = [X(:,1), Xm, X(:,2)]

% c)
determinantas = det(X)
%% 3. Praktinis veiksmu su masyvais taikymas

t = 0:0.005:1.5;
A = 8;
f = 5;
sigma = 1.8;
U1 = 5;
U2 = 3;

s = A*cos(2*pi*f*t);
n = sigma*randn(size(t));
s = s +n;

% a)
virs_U1 = s(s > U1)

% b)
s_filtruotas = s;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

% c)
nefiltruoto_signalo_dydis = length(s)

% d)
atrinktu_reiksmiu_dydis = length(virs_U1)

% e)
didziausia_itampa = max(s_filtruotas)
maziausia_itampa = -max(-s_filtruotas)

%% Papildoma uzduotis

A = [0 1 0 2 3 0 4;
    0 0 0 0 0 0 0;
    0 5 0 6 7 0 8;
    0 9 0 1 2 0 3;
    0 0 0 0 0 0 0;
    0 4 0 5 6 0 7];

eilutes = any(A ~= 0, 2)

stulpeliai = any(A ~= 0, 1)

B = A(eilutes, stulpeliai)