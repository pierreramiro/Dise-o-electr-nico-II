function [R1,C2,R3,R4]=MFB(fdt,C5)
num=fdt.num{1};
den=fdt.den{1};
wo=sqrt(den(1,3));
display(wo)
G=-num(1,3)/den(1,3);
Q=wo/den(1,2);
display(Q)
k=wo*C5;
display(k)
C2=4*Q*Q*(G+1)*C5;
R1=1/(2*Q*G*k);
R3=1/(2*(G+1)*k);
R4=1/(2*Q*k);
end