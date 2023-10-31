h = 0.05; a = 0; b = 2;
n = (b - a) / h;
y(1) = 5; x(1) = 0;

for i = 1 : n
    x(i + 1) = a + (i - 1) * h;
    y(i + 1) = y(i) + h * (((x(i) * y(i)) - x(i)) / y(i));
    disp(y(i + 1));
end