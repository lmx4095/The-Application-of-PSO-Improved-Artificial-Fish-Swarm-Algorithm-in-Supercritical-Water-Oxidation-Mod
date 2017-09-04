function af=communication(af)
global best_af;
p=af.c;
ppp=af.c;
bc=best_af.c;
p=p+2*rand()*(bc-p);
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
if(foodconsistence(af)>foo(p))
af.c=p;
return;
end
af=move(af);
