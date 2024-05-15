function area_int_symbolic()
  pkg load symbolic;

  syms x;

  s.f_11a(x) = f_11a(x);
  s.f_11b(x) = f_11b(x);
  s.f_12a(x) = f_12a(x);
  s.f_12b(x) = f_12b(x);
  s.f_21(x) = f_21(x);

  s.g1 = s.f_21(x) - s.f_12b(x);
  s.g2 = s.f_21(x) - s.f_12a(x);
  s.g3 = s.f_11b(x) - s.f_12a(x);

  s.D1 = int(s.g1, -1, 0);
  s.D2 = int(s.g2, 0, 1);
  s.D3 = int(s.g3, 1, 2);

  s.D = s.D1 + s.D2 + s.D3;

  print_struct(s);
endfunction

function print_struct(s)
  fd = fopen("./out.d/symbolic.out", "w");

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

