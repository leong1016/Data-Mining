function v = birthdayAnalysis(n)
    prob = 1;
    for i = 1:n
        if (prob <= 0.5)
            v = i;
            return;
        end
        prob = prob * (n-i)/n;
    end
end

