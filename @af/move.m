function af=move(af)
p=af.c;
ppp=af.c;
x1=2*pi*rand();
x2=2*pi*rand();
x3=2*pi*rand();
x4=2*pi*rand();
x5=2*pi*rand();
pp1(1)=sin(x1);
pp1(2)=sin(x2);
pp1(3)=sin(x3);
pp1(4)=sin(x4);
pp1(5)=sin(x5);
ra=pp1;
p=p+ra*af.visual;

if(p(1)>300|p(1)<0)
   p(1)=ppp(1);
end
if(p(2)>70000|p(2)<30000)
   p(2)=ppp(2);
end
if(p(3)>1|p(3)<0)
   p(3)=ppp(3);
end
if(p(4)>1|p(4)<0)
   p(4)=ppp(4);
end
if(p(5)>1|p(5)<0)
   p(5)=ppp(5);
end
af.c=p;