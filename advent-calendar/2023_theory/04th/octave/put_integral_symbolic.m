function put_integral_symbolic()
  pkg load symbolic;

  syms x;

  s.g(1) = f_21(x) - f_14(x);
  s.g(2) = f_21(x) - f_13(x);
  s.g(3) = f_11(x) - f_13(x);

  s.D(1) = int(s.g(1), -1, 0);
  s.D(2) = int(s.g(2), 0, 1);
  s.D(3) = int(s.g(3), 1, 2);

  fd = fopen(strcat("./out.d/", dbstack.name, ".out"), "w");

  fprint_struct(fd, s); % 出力をフォーマットするため、ファイルに書き出します

  fclose(fd);
endfunction

function fprint_struct(fd, s)
  fprint_lf(fd);

  fprintf(fd, "D ="); fdisp(fd, pretty(sum(s.D)));

  for i = 1:length(s.g)
    fprint_hr(fd);

    fprintf(fd, strcat("D", num2str(i), " =")); fdisp(fd, pretty(s.D(i)));
    fprintf(fd, strcat("g", num2str(i), " =")); fprint_lf(fd); fprint_lf(fd);
    fdisp(fd, pretty(s.g(i)));
  endfor
endfunction

