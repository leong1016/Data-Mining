function LR(Xtrain,Ytrain,Xtest,Ytest)
    result = zeros(1,6);
    s = [0 0.1 0.3 0.5 1.0 2.0];
    for i = 1:6
        C = inv(Xtrain'*Xtrain+s(i)^2*eye(15))*Xtrain'*Ytrain;
        result(i) = norm(Ytest-Xtest*C,2);
    end
    for i = 1:6
        fprintf('C%.1f & %f \\\\ \n',s(i),result(i));
    end
end

