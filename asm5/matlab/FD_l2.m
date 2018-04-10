function l = FD_l2(A, k)
    [U,S,V] = svd(A);
    Uk = U(:,1:k);
    Sk = S(1:k,1:k);
    Vk = V(:,1:k);
    Ak = Uk*Sk*Vk';
    froNorm = norm(A-Ak, 'fro')^2
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

