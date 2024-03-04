model lab3open_2
Real x;
Real y;
Real a = 0.39;
Real b = 0.84;
Real c = 0.42;
Real d = 0.49;
Real t = time;
initial equation
x =21050;
y =8900;
equation
der(x) = -a*x - b*y + abs(sin(2*t));
der(y) = -c*x*y - d*y + abs(cos(2*t)); 
end lab3open_2;
