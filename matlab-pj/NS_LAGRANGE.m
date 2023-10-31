function [u] = NS_LAGRANGE(n, x, y, z)
    for k = 1 : length(z)  
        pn = 0;
        for i = 1 : n + 1
            q = y(i);
            for j = 1 : n + 1
                if i ~= j
                    q = q * (z(k) - x(j)) / (x(i)-x(j));
                end
            end
            pn = pn + q;
        end
        kq(k) = pn;
    end
    u = kq;
    disp('Ket qua noi suy')
    disp('           xi           yi');
    for i = 1 : length(z)
        fprintf('%15.8f%15.8f\n', z(i), u(i));
    end
end

                  