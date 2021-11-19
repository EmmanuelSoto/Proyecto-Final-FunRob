clear
clc
L(1)=Link([0 4 0 pi/2 0]);
L(2)=Link([0 0 12 0 0]);
L(3)=Link([0 0 13 0 0]);


qli=[-pi pi;-pi pi; -pi pi]; 
qi=[-pi/2 0 -pi/4];
qf=[-pi/2 pi/2 2]; 
rrp=SerialLink(L,'name','RRP','qlim',qli); 
rrp.plotopt = {'workspace', [-20 20 -20 20 -20 20]}; 
rrp.plot(qi)   
q=jtraj(qi,qf,10); 
rrp.plot(q)
rrp.teach(qi)
rrp.fkine(qi)