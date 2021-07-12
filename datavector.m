function[X]=datavector(x)
mu1=[1 2 3]';
mu2=[5 10 15]';
sigma1=[6 2 4;2 5 1;4 1 4];
sigma2=[8 3 5;3 5 1;5 1 4];
k=[];
ga=randn(3,1);
if(x==1)    
    [S,Q1] = eig(sigma1);
    Q = sqrtm(Q1);
    A = S*Q1;
    X = A*ga + mu1;
    
else
    [S,Q1] = eig(sigma2);
    Q = sqrtm(Q1) ;
    A = S*Q1;
    X = A*ga + mu2;
    
end
end