function [n,kf]=Butterworth_HP(ap,fp,as,fs)
    arguments
        ap=0;
        fp=0;
        as=0;
        fs=0;
    end
    n=(0.5*(log((10^(as/10)-1)/((10^(ap/10)-1)))/log(fp/fs)));
    display (n);
    n=ceil(n);wpn=1/((10^(ap/10)-1)^(0.5/n));
    wsn=1/((10^(as/10)-1)^(0.5/n));
    kf=2*pi*fp/wpn;
    display(wpn);
    display(wsn);
end