function [B] = FD(A,l)
    [n,d] = size(A);

    B = zeros(2*l,d);

    % fill in the rest here
    for i = 1:n
        idx = find(all(B==0,2),1);
        B(idx,:) = A(i,:);
        idx = find(all(B==0,2),1);
        if isempty(idx)
            [U,S,V] = svd(B);
            delta = S(l,l)^2;
            for j = 1:l-1
                S(j,j) = (S(j,j)^2-delta)^0.5;
            end
            for j = l:l*2
                S(j,j) = 0;
            end
            B = S*V';
        end
    end
end