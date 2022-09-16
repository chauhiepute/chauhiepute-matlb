syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 
l1 = 30;l2 = 40;l3 = 50;l4 = 50 ;l5 = 40;l6 = 20;
for t1 = 0: 0.5 : 2*pi
    for t2 = 0: 0.5 : 2*pi
        for t3 = 0 : 0.5 : 2*pi
            for t4 = 0: 0.5 : 2*pi
                Px = -sin(t1)*(l4*cos(t2 + t3) + l3*cos(t2) + l6*cos(t2 + t3 + t4) + l5*sin(t2 + t3 + t4));
                Py = cos(t1)*(l4*cos(t2 + t3) + l3*cos(t2) + l6*cos(t2 + t3 + t4) + l5*sin(t2 + t3 + t4));
                Pz = l1 + l2 + l4*sin(t2 + t3) + l3*sin(t2) - l5*cos(t2 + t3 + t4) + l6*sin(t2 + t3 + t4);
                plot3(Px,Py,Pz,'*');
                hold on
            end
        end
    end
end