function k = couponSimulatorb2(n, t)
    k = zeros(1, t);
    for i = 1:t
        k(i) = couponSimulatora2(n);
    end 
end