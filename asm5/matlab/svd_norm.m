function result = svd_norm(A, U, S, V)
    result = zeros(10,1);
    for k = 1:10
        Ak = U(:,1:k) * S(1:k,1:k) * V(:,1:k)';
        result(k) = norm(A-Ak,2)
    end
end
