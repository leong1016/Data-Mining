function k = birthdaySimulatorb2(n, t)
    k = zeros(1, t);
    for i = 1:t
        k(i) = birthdaySimulatora2(n);
    end
end