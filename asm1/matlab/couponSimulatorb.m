function k = couponSimulatorb(n, t)
    k = zeros(1, t);
    for i = 1:t
        k(i) = couponSimulatora(n);
    end 
end