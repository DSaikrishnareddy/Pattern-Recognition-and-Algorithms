clc
x=rand(1000);
c1=0;
c2=0;
s=[];
for i=1:1000
    if(x(i)>0.7)
        c1=c1+1;
        s(i)=1;
    else
        c2=c2+1;
        s(i)=2;
    end
end
dv=[];
c11=0;
c12=0;
for i=1:1000
    [dv(i,:)]=datavector(s(i));
    y(i)=Decision_Boundary((dv(i,:))');
    if(y(i)==s(i))
        c11=c11+1;
    else
        c12=c12+1;
    end
end
c1
c2
c11
c12
accuracy=c11/10