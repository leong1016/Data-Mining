function [B] = RP(A, l)
    [n, d] = size(A);
    S = normrnd(0,1,[l,n])/l^0.5;
    B = S*A;
end

