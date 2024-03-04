model lab3open_1
Real x;
Real y;
Real a = 0.32;
Real b = 0.74;
Real c = 0.44;
Real d = 0.54;
Real t = time;
initial equation
x =21050;
y =8900;
equation
der(x) = -a*x - b*y + 2*(abs(sin(t)));
der(y) = -c*x - d*y + 2*(abs(cos(t))); 
end lab3open_1;
