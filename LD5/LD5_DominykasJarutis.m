% Dominykas Jarutis EF-25/2 2026-10-09

%% 1.

clear;
clc;
close all;

A = cell(2, 2);
A{1, 1} = 24;
A{1, 2} = 'MATLAB';
A{2, 1} = true;
A{2, 2} = int32(10);

B = cell(2, 2);
B{1, 1} = [1 2 3];
B{1, 2} = 'LD5';
B{2, 1} = false;
B{2, 2} = int32([4 5]);

disp('Masyvas A:');
disp(A);

disp('Masyvas B:');
disp(B);

C = cat(3, A, B);

disp('Masyvo C dydis:');
disp(size(C));

disp('Masyvo C matmenu skaicius:');
disp(ndims(C));

figure('Name', 'Celiu masyvo C sluoksniai');

subplot(1, 2, 1);
cellplot(C(:, :, 1));
title('Pirmas sluoksnis: A');

subplot(1, 2, 2);
cellplot(C(:, :, 2));
title('Antras sluoksnis: B');

disp('A celiu turinio duomenu tipai:');
disp(cellfun(@class, A, 'UniformOutput', false));

disp('A celiu turinio ilgiai:');
disp(cellfun(@length, A));

disp('Ar A celiu turinys realusis:');
disp(cellfun(@isreal, A));

disp('Ar A celiu turinys tuscias:');
disp(cellfun(@isempty, A));

disp('Kurios A celes turi double tipo turini:');
disp(cellfun('isclass', A, 'double'));

D = {1, 2; 3, 4};

disp('cell2mat rezultatas:');
disp(cell2mat(D));

%% 2.

clear;
clc;


while true
    m = input('Iveskite m: ');
    n = input('Iveskite n: ');

    if ~isnumeric(m) || ~isnumeric(n) || ...
            ~isscalar(m) || ~isscalar(n) || ...
            ~isreal(m) || ~isreal(n) || ...
            ~isfinite(m) || ~isfinite(n)
        disp('Iveskite po viena baigtini realuji skaiciu.');
        continue;
    end

    if m == n
        disp('m ir n vienodi. Programa baigta.');
        break;
    end

    if m <= 0 || n <= 0
        disp('Iveskite teigiamus skaicius.');
        continue;
    end

    if m > n
        didesnis = m;
        mazesnis = n;
    else
        didesnis = n;
        mazesnis = m;
    end

    while didesnis > mazesnis
        didesnis = didesnis - mazesnis;
    end

    disp('Maziausia teigiama reiksme:');
    disp(didesnis);
    disp('Noredami baigti, iveskite vienodus skaicius.');
end

%% Papildoma

clear;
clc;

x = input('Iveskite eiluciu skaiciu x: ');
y = input('Iveskite stulpeliu skaiciu y: ');

if ~isnumeric(x) || ~isnumeric(y) || ...
        ~isscalar(x) || ~isscalar(y) || ...
        ~isreal(x) || ~isreal(y) || ...
        ~isfinite(x) || ~isfinite(y)
    disp('x ir y turi buti baigtiniai realieji skaiciai.');
    return;
end

if x <= 0 || y <= 0 || x ~= fix(x) || y ~= fix(y)
    disp('x ir y turi buti teigiami sveikieji skaiciai.');
    return;
end

for k = 1:20
    m = randi(x);
    n = randi(y);

    A = zeros(x, y);
    A(m, n) = NaN;

    disp(['Iteracija: ', num2str(k), ' is 20']);
    disp(['m = ', num2str(m), ', n = ', num2str(n)]);
    disp(A);

    pause(0.5);
    clc;
end

disp('Atlikta 20 iteraciju. Programa baigta.');