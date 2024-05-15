function plot_montecarlo(n = 10 ^ 4)
  n = arg2num(n);
  limit = 3; % x, y の絶対値の最大値

  x = (rand(n, 1)*2 - 1) * limit;
  y = (rand(n, 1)*2 - 1) * limit;
  condition = @(x, y) f_1(x, y) <= 0 && f_2(x, y) >= 0;

  hold on;

  true_points = find(arrayfun(condition, x, y));
  plot(x(true_points), y(true_points), ".r");

  %% 領域外の点もプロットする場合
  % false_points = find(arrayfun(@(x, y) !(condition(x, y)), x, y));
  % plot(x(false_points), y(false_points),".b");

  plot_f1_f2; conf_axes;

  save_plot(strcat(dbstack.name, ".", num2str(round(n))));
endfunction

