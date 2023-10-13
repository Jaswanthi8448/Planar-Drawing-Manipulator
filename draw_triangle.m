function draw_triangle(side,Mipie)
   

xlim([-25 25]);
 ylim([-25 25]);
 
    start = [0 0 0];
    points = [side 0 0; side/2 side/2 0; start];
    point0 = transl(start);
    q00 = Mipie.ikine(point0,'q0',[-1 2 0],'mask', [1 1 0 0 0 0]);
    plot(Mipie, q00)

    for i=1:size(points)
        if i==1
            p1 = start;
        else
            p1 = [points(i-1,1),points(i-1,2),0];
        end

        p2 = [points(i,1),points(i,2),0];
        T1 = transl(p1);
        T2 = transl(p2);
        CT = ctraj(T1,T2,5);
        q = Mipie.ikine(CT,'q0',q00, 'mask', [1 1 0 0 0 0]); 
        q00 = q(5,:);
        plot(Mipie, q)

        hold on
        x = [p1(1) ; p2(1) ];
        y = [p1(2) ; p2(2) ];
        plot(x,y,'LineWidth',2,'color','r')

    end


end