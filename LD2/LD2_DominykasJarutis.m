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