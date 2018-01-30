function v = couponAnalysis(n)
    sum = 0;
    for i = 1:n
        sum = sum + 1/i;
    end
    v = sum * n
end

