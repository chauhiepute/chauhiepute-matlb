%syms t1 t2 t3 l1 l2 l3 l4 l5 l6 l7 l8;
%T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
%T2=[1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R1=[cos(t1) 0 -sin(t1) 0; 0 1 0 0; sin(t1) 0 cos(t1) 0; 0 0 0 1];
%T3=[1 0 0 0; 0 1 0 l3; 0 0 1 0; 0 0 0 1];
%R2=[cos(-t1) 0 -sin(-t1) 0; 0 1 0 0; sin(-t1) 0 cos(-t1) 0; 0 0 0 1];
%T4=[1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R3=[cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
%T5=[1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%T6=[1 0 0 0; 0 1 0 -l8; 0 0 1 0; 0 0 0 1];
%R4=[cos(t3) 0 -sin(t3) 0; 0 1 0 0; sin(t3) 0 cos(t3) 0; 0 0 0 1];
%T7=[1 0 0 0; 0 1 0 l6; 0 0 1 0; 0 0 0 1];
%T8=[1 0 0 l7; 0 1 0 0; 0 0 1 0; 0 0 0 1];%P=[0; 0; 0; 1];
%simplify(T1*T2*P1*T3*P2*T4*P3*T5*T6*P4*T7*T8*P)

syms t1 t2 t3 pi;
l1=70; l2=50; l3=15; l4=20; l5=15; l6=8; l7=20; l8=5; s=10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
          Px= l4*cos(t1 + t2) + l2*cos(t1);
          Py= l4*sin(t1 + t2) + l2*sin(t1);
          Pz= l1 + l3 - l5 + s;
          plot3(Px,Py,Pz,'*');
          hold on   
        end
    end
end