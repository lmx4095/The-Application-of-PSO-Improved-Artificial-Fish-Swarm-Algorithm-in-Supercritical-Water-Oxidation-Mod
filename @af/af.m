function af=af()
af.c(1)=300*rand();
af.c(2)=40000*rand()+30000;
af.c(3)=rand();
af.c(4)=rand();
af.c(5)=rand();
af.visual=20000;
af.try_number=5;
af.delta=0.2;
af=class(af,'af');