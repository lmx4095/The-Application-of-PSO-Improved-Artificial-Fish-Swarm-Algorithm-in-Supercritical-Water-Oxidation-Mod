tic;
global afs;
global af_total;
global afs_c;
global afs_value;
global b_c;
global b_value;
global iterate_times;
global passed_times;
global best_af;
global k;
global k1;
global k1_c;
global v;
afs=[];
afs_c={};
af_total=20;
afs_value=0;
b_value=10000;
passed_times=0;
iterate_times=30;
k1=[];
k1_c={};
for i=1:1:af_total
    k(i)=1000;
end
tic;
for i=1:1:af_total
    afs{i}=af();
    afs_c{i}=get(afs{i},'c');
end
for i=1:1:af_total
    k1{i}=afs{i};
    k1_c{i}=get(afs{i},'c');
end
for j=1:1:iterate_times
    passed_times=passed_times+1;
    if passed_times>1
        b_value(passed_times)=b_value(passed_times-1);
    else
        b_c=zeros(1,5);
        b_value(1)=10000;
    end
    best_af=af();
    best_c=zeros(1,5);
    best_num=0+eps;
    for i=1:1:af_total
        afs{i}=evaluate(afs{i},i);
        if foodconsistence(afs{i})<foodconsistence(best_af)
            best_af=afs{i};
        end
        afs_c{i}=get(afs{i},'c');
        if foodconsistence(afs{i})<b_value(passed_times)
            b_c=get(afs{i},'c');
            b_value(passed_times)=foodconsistence(afs{i});
        end
    end
    for v=1:1:af_total
        afs_c{v}=get(afs{v},'c');
        if foodconsistence(afs{v})<k(v)
            k(v)=foodconsistence(afs{v});
            k1{v}=afs{v};
        end
    end
    for i=1:1:af_total
        if dstc(afs{i},best_af)<1000
            best_c=best_c+get(afs{i},'c');
            best_num=best_num+1;
        end
    end
    best_c=best_c/best_num;
    afs_value(passed_times)=foo(best_c);
end
toc;
display(toc);
x_axes=1:1:passed_times;
plot(x_axes,b_value,'r');
hold on;
plot(x_axes,afs_value,'k');
axis([0,iterate_times,0,65]);
xlabel('迭代次数')
ylabel('f(x,y)')
title('鱼群算法')
toc
            