set
r "U.S. Crude Oil Rotary Rigs in Operation (Count)" /rigs/,
d "U.S. Product Supplied of Crude Oil and Petroleum Products (Thousand Barrels)"        /Kbarrels/;

Parameter
c(d,r) "Growth of Index (Percent Change)";

Positive Variables
P "Cushing, OK WTI Spot Price FOB (Dollars per Barrel)";

Equation
Price(d).. averageif(P, c(d)> 0) = Phigh
Price(r).. averageif(P, c(r)> 0) = Plow;

Model ;

Solve ;

Display Phigh, Plow;
