function display(af)
fprintf('这是一条人工鱼:\n');
fprintf('      位置:x=%d\n',af.x);
fprintf('           y=%d\n',af.y);
fprintf('      步长:step=%d\n',af.step);
fprintf('      视野:visual=%d\n',af.visual);
fprintf('  尝试次数:try_number=%d\n',af.try_number);
fprintf('拥挤度因子:delta=%d\n',af.delta);