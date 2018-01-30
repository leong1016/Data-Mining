function k = birthdaySimulatora(n)
    map = containers.Map('KeyType','int32','ValueType','int8');
    k = 0;
    while 1
        x = randi(n);
        if isKey(map, x)
            return;
        else
            map(x) = 1;
            k = k + 1;
        end
    end
end