function time = couponPlot(m)
    time = zeros(1,10);
    for i=1:10
        tic;
        couponSimulatorb2(i*2000,m);
        a= toc
        time(i) = a;
    end
end
