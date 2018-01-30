function k = couponSimulatora2(n)
    map = ones(1,n);
    k = 0;
    length = n;
    while length > 0
        k = k + 1;
        x = randi(n);
        if map(x) == 0
            continue;
        else
            map(x) = 0;
            length = length - 1;
        end
    end
end