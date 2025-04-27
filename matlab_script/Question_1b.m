%Question 1.b - Choose any arbitrary polynomial in s as n1(s) and n2(s),
%d1(s), d2(s). Obtain the transfer function n1(s)/d1(s) and n2(s)/d2(s)
n1=[1 -1];
d1=[-2 3 4];
g1=tf(n1,d1)

n2=[8 -4 3 7];
d2=[-1 -0.25];
g2=tf(n2,d2)