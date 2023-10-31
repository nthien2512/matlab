x= [1 1.5 2 2.5 3 3.5];
y = [5.23401 2.09242 1.40563 -1.20224 -1.32105 0.01501];
xbp = 0;
xi = 0;
yi = 0;
sum = 0;
for i = 1 : 6
    xbp = xbp + x(i) * x(i);
    xi = xi + x(i);
    yi = yi + y(i);
    sum = sum + x(i) * y(i);
end

b = (xi * sum - yi * xbp) / (xi * xi - 6 * xbp);
a = (sum - xi * b) / xbp;

disp(a);
disp(b);