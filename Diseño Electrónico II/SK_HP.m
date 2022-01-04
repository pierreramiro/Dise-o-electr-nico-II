function [C4,R2,R5]=SK_HP(kf,bo,C,G)
    arguments
        kf=1;
        bo=1;
        C=1;
        G=-1;
    end
    wo=kf;
    Q=wo/bo;
    k=wo*C;
    C4=-C1/G;
    R2=1/(Q*k*(2-1/G));
    R5=G*Q*(1/G-2)/k;
end