function FdT=fdt_del_mfb(R1,C2,R3,R4,C5)

num=-(R4/R1)*(1/(R3*R4*C2*C5));
den=[1 1 1];
den(1,2)=(1/C2)*(1/R1+1/R3+1/R4);
den(1,3)=1/(R3*R4*C2*C5);
FdT=tf(num,den);
end