function[y]=Decision_Boundary(x)
mu1=[1 2 3]';
mu2=[5 10 15]';
sigma1=[6 2 4;2 5 1;4 1 4];
sigma2=[8 3 5;3 5 1;5 1 4];
A=inv(sigma1)-inv(sigma2);
B=-2*(inv(sigma2))*mu2 - (inv(sigma1))*mu1;
C=-2*log(0.7)+2*log(0.3)+log(det(sigma2))-log(det(sigma1))+(mu2')*(inv(sigma2))*(mu2)-(mu1')*(inv(sigma1))*(mu1);
D=(x')*A*x+(B')*x+C;
if(D>0)
    y=1;
else
    y=2;
end
end