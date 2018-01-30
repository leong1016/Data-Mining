function k = couponSimulatora(n)
    map = containers.Map('KeyType','int32', 'ValueType','int8');
    k = 0;
    while 1
        x = randi(n);
        if isKey(map, x)
            k = k + 1;
            continue;
        else
            map(x) = 1;
            k = k + 1;
        if length(map) == n
            break;
        end
        end
    end
end

