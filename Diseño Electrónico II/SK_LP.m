function [C1,C2]=SK_LP(kf,bo,R)
    wo=kf;
    Q=wo/bo;
    C1=1/(2*Q*wo*R);
     C2=2*Q/(wo*R);
%     display(C1)
%     display(C2)
end