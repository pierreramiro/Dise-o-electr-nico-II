function [n,kf]=Chebyshev(ap,fp,as,fs)
    arguments
        ap=0;
        fp=0;
        as=0;
        fs=0;
    end
    epsilon_2=10^(ap/10)-1;
    epsilon=sqrt(epsilon_2);
    display(epsilon);
    Cn=sqrt((10^(as/10)-1)/epsilon_2);
    display(Cn);
    kf=2*pi*fp;
    wsn=2*pi*fs/kf;
    display(wsn);
    if wsn>1
        n=(acosh(Cn)/acosh(wsn));
        display (n);
        n=ceil(n);
    else
        n=(acos(Cn)/acos(wsn)); 
        display (n);
        n=ceil(n);
    end
end