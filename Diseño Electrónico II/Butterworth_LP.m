function [n,kf]=Butterworth_LP(ap,fp,as,fs) %lowpass
    arguments
        ap=0;
        fp=0;
        as=0;
        fs=0;
    end
    n=(0.5*(log((10^(as/10)-1)/((10^(ap/10)-1)))/log(fs/fp)));
    display (n);
    n=ceil(n);
    wpn=(10^(ap/10)-1)^(0.5/n);
    wsn=(10^(as/10)-1)^(0.5/n);
    kf=2*pi*fp/wpn;
    display(wpn);
    display(wsn);
end