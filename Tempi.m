  function Tempi
    global tS;
    global tP;
    x = linspace(0.09,2,4000);
    n = linspace(100,3000,30);
    y1=(x-0.08).^2;
    y2=x.^3;
    prodottoM;
    sommaM;
    subplot(2,1,1);
    loglog(n,tS,y1);
    legend("tS","x^2");
    subplot(2,1,2);
    loglog(n,tP,y2);
    legend("tP","x^3");
    end
