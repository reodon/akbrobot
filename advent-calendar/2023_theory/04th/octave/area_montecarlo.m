function area_montecarlo(n = 10^4)
  n = arg2num(n);
  limit = 3; % x, y の絶対値の最大値

  x = (rand(n, 1)*2 - 1) * limit;
  y = (rand(n, 1)*2 - 1) * limit;
  condition = @(x, y) f_1(x, y) <= 0 && f_2(x, y) >= 0;

  true_points = find(arrayfun(condition, x, y));
  trues_count = length(true_points);
  p = trues_count / n;
  D = p * (limit*2)^2;

  fprintf(stderr, "%f\n", D);
endfunction

