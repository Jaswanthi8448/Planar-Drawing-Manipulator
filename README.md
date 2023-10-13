# Planar-Drawing-Manipulator
Design and implant a planar robotic manipulator with a suitable degree of freedom to draw basic shapes (Hexagon and Triangle). The type of shape and its dimensions should be input for the system.

# Introduction
This project deals with the design of a planar robotic manipulator that can draw basic shapes such as a Triangle or a rectangle etc.…
The manipulator is called "Mipie". The type of shape to be drawn, and its dimensions are taken as input from the user.

# Manipulator
A robotic manipulator is an arm-like structure joined to the body of a robot reprogrammable and multifunctional device.
A robotic manipulator can move automatically depending upon its given number of degrees of freedom.
n DOF manipulator – n independent joint link variables are required to specify the location of the end effector in space 
Six DOF – three in arm for positioning, three in wrist for orientation 

# DH parameteres 
The DH parameters define the geometry of how each rigid body attaches to its parent via a joint.

Joint Angle(θ) - Angle of rotation for the x-axis along the previous z-axis
Joint Offset(d) - Offset along the z-axis, till Intersection of Z axis and Common Normal
Link Length(a) - Translate X (a) till Intersection of Common Normal and Line
Twist Angle(α)  - Angle of rotation so that Z axis aligns with common Normal
