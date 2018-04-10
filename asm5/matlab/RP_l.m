function result = RP_l(A)
    froNorm = norm(A, 'fro')^2
    result = 0;
    for j = 1:100
        l = 150;
        while 1
            cnt = 0;
            for i = 1:100
                B = RP(A,l);
                error = norm(A'*A-B'*B, 2);
                if error <= froNorm/10
                    cnt = cnt + 1;
                end
            end
            if cnt > 99
                break
            end
            l = l + 1
        end
        result = result + l
    end
    result = result / 100;
end

