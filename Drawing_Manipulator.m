clear all;
clc;
close all;


a1 = 15; a2 = 15; 
%  theta        kinematic: joint angle
%  d            kinematic: link offset
%  a            kinematic: link length
%  alpha        kinematic: link twist
Mipie = SerialLink([Link([0 0 0 0], 'modified');
                   Link([0 0 a1 0], 'modified');
                   Link([0 0 a2 0], 'modified')
                   ],'name', 'Mipie');
               
               
shape = 10;

while shape ~= 0

clc;
disp("Choose a shape that you would like Mipie to draw!");
disp("1. Triangle");
disp("2. hexagon");
disp("0. Exit, please :)");
shape = input("Enter your choice:");


    switch shape
        
        case 1
            s = input("Enter the side length:");
            draw_triangle(s,Mipie);
        case 2
            s = input("Enter the length:");
            draw_hexagon(s,Mipie);
        case 0
            return  
        otherwise
            disp('Invalid choice! Try again.');
            pause(2);
    end

end



