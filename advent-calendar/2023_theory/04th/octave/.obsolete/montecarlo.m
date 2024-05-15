function montecarlo(n = 10 ^ 4)
  %function p = pifast( n, l = 3 )
  %  x = (rand(n, 1)*2 - 1) * l;
  %  y = (rand(n, 1)*2 - 1) * l;
  %  %cnt = length(find(x.^2+y.^2 < l^2));
  %  %cnt = length(find(f1_v2(x, y) <= 0 && f2_v2(x, y) >= 0));
  %  f = @(x, y) f1_v2(x, y) <= 0 && f2_v2(x, y) >= 0;
  %  cnt = length(find(arrayfun(f, x, y)));
  %
  %
  %  p = (cnt / n) * (l*2)^2;
  %
  %  %fprintf(stderr, "cnf: %f, n: %f, p: %f\n", cnt, n, p);
  %endfunction
  %
  %format short;
  %
  %%n = input("n = ");
  %
  %n = 100;
  %sum = 0;
  %for i = 1:n
  %  sum += pifast(10000, 2);
  %endfor
  %
  %fprintf(stderr, "%f\n", sum / n);
  %

  %hold on;
  if (length(argv) >= 1)
    arg_n = str2num(argv{end});

    if (isnumeric(arg_n))
      n = arg_n;
    endif
  endif

  limit = 3;

  x = (rand(n, 1)*2 - 1) * limit;
  y = (rand(n, 1)*2 - 1) * limit;
  cond_fun = @(x, y) f_1(x, y) <= 0 && f_2(x, y) >= 0;

  ts = find(arrayfun(cond_fun, x, y));

  cnt = length(ts);

  p = (cnt / n) * (limit*2)^2;

  fprintf(stderr, "%f\n", p);
endfunction

