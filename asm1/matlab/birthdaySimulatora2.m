function k = birthdaySimulatora2(n)
    map = zeros(1,n);
    k = 0;
    while 1
        x = randi(n);
        if map(x) == 1
            return;
        else
            map(x) = 1;
            k = k + 1;
        end
    end
end