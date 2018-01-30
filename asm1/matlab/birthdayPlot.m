function time = birthdayPlot(m)
    time = zeros(1,10);
    for i=1:10
        tic;
        birthdaySimulatorb2(i*100000,m);
        a = toc
        time(i) = a;
    end
end