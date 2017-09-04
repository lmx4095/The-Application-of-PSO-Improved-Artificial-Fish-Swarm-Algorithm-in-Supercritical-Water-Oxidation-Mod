function out=get(af,argin)
switch argin
    case 'c'
        out=af.c;
    case 'visual'
        out=af.visual;
    case 'step'
        out=af.step;
    case 'try_number'
        out=af.try_number;
    case 'delta'
        out=af.delta;
    otherwise
        fprintf('²ÎÊı´íÎó£¡\n');
end