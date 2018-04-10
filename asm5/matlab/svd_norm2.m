function k = svd_norm2(A, U, S, V)
    normA = norm(A,2);
    k = 1;
    while 1
        Ak = U(:,1:k) * S(1:k,1:k) * V(:,1:k)';
        sse = norm(A-Ak,2);
        if sse >= 0.1*normA
            k = k+1;
        else
            break
        end
    end
end
