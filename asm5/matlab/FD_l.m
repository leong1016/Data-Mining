function l = FD_l(A)
    froNorm = norm(A, 'fro')^2
    l = 1;
    while 1
        B = FD(A, l);
        error = norm(A'*A - B'*B, 2)
        if error <= froNorm/10
            break
        end
        l = l + 1;
    end
end

