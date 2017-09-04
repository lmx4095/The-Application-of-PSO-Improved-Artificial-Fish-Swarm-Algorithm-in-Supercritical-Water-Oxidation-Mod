function af=set(af,argin1,argin2)
switch argin1
    case 'x'
        af.x=argin2;
    case 'y'
        af.y=argin2;
    case 'step'
        af.step=argin2;
    case 'visual'
        af.visual=argin2;
    case 'try_number'
        af.try_number=argin2;
    case 'delta'
        af.delta=argin2;
    otherwise
        fprintf('²ÎÊı´íÎó£¡\n');
end