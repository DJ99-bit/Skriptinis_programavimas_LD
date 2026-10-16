function rezultatas = specfunkc(a, b)
if nargin == 1
    rezultatas = a^2;
elseif nargin == 2
    a = a^3;
    b = b^2;
    rezultatas = sin(max(a, b));
else
    error('Reikia pateikti viena arba du argumentus.')
end
end