function af=swarm(af,v)
global afs;
global af_total;
global afs_c;
global k1;
global k;
global k1_c;
n=0;
c_center=zeros(1,5);
for i=1:1:af_total
    if dstc(af,afs{i})<af.visual
        n=n+1;
        c_center=c_center+afs{i}.c;
    end
end
if n~=0
    c_center=c_center/n;
    if(foo(c_center)*n<foodconsistence(af)*af.delta)&(c_center~=af.c)
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
    p=p+rand()*(c_center-p)+rand()*(k1_c{v}-p);
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
    return;
    end
end
af=prey(af,v);