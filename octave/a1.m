

pkg load symbolic      # Load the octave symbolic library
syms x1 x2 x1_dot x2_dot         # Define symbolic variables x1 and x1
x1_dot = -x1 + 2*x1^3 + x2;       # Write the expressions for x1_dot and x2_dot
x2_dot = -x1 - x2;   # YOU CAN MODIFY THESE 2 LINES TO TEST OUT OTHER EQUATIONS

syms x_1 x_2
[x_1,x_2]=solve([-x1 + 2*x1^3 + x2==0,-x1 - x2==0],[x1,x2])
