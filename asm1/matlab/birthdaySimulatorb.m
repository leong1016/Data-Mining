function k = birthdaySimulatorb(n, t)
    k = zeros(1, t);
    for i = 1:t
        k(i) = birthdaySimulatora(n);
    end
end