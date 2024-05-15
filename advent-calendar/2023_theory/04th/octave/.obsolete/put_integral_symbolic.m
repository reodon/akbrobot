function put_integral_symbolic()
  pkg load symbolic;

  syms x;

  s.g1 = f_21(x) - f_14(x);
  s.g2 = f_21(x) - f_13(x);
  s.g3 = f_11(x) - f_13(x);

  s.D1 = int(s.g1, -1, 0);
  s.D2 = int(s.g2, 0, 1);
  s.D3 = int(s.g3, 1, 2);

  s.D = s.D1 + s.D2 + s.D3;

  fd = fopen(strcat("./out.d/", dbstack.name, ".out"), "w");
  fprint_struct(fd, s); % 出力をフォーマットするため、ファイルに書き出します
endfunction

function fprint_struct(fd, s)

  fprintf(fd, "D ="); fdisp(fd, pretty(s.D));

  hr(fd);
  
  fprintf(fd, "D1 ="); fdisp(fd, pretty(s.D1));
  fprintf(fd, "g1 ="); lf(fd);lf(fd);
  fdisp(fd, pretty(s.g1));

  hr(fd);

  fprintf(fd, "D2 ="); fdisp(fd, pretty(s.D2));
  fprintf(fd, "g2 ="); lf(fd);lf(fd);
  fdisp(fd, pretty(s.g2));

  hr(fd);

  fprintf(fd, "D3 ="); fdisp(fd, pretty(s.D3));
  fprintf(fd, "g3 ="); lf(fd);lf(fd);
  fdisp(fd, pretty(s.g3));

  fclose(fd);
endfunction

function lf(fd)
  fprintf(fd, "\n");
endfunction

function hr(fd)
  fprintf(fd, "-----------------------\n\n");
endfunction

