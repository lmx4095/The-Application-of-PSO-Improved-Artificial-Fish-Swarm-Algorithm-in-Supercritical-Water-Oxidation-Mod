function af=follow(af,v)
global afs;
global af_total;
global afs_c;
global k1;
global k;
global k1_c;
n=0;
f_max=Inf;
max_i=1;
for i=1:1:af_total
    if(dstc(af,afs{i})<af.visual)
        n=n+1;
        if(foodconsistence(afs{i})<f_max)
            f_max=foodconsistence(afs{i});
            max_i=i;
        end
    end
end
if((f_max*n)<(af.delta*foodconsistence(af)))&(afs{max_i}.c~=af.c)
    p=af.c;
    ppp=af.c;
    pp1(1)=rand();
    pp1(2)=rand();
    pp1(3)=rand();
    pp1(4)=rand();
    pp1(5)=rand();
    pp2(1)=rand();
    pp2(2)=rand();
    pp2(3)=rand();
    pp2(4)=rand();
    pp2(5)=rand();
    ra=pp1;
    rb=pp2;
    k1_c{v}=get(k1{v},'c');
    p=p+rand()*(afs{max_i}.c-p)+rand()*(k1_c{v}-p);
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
else
    af=prey(af,v);
end