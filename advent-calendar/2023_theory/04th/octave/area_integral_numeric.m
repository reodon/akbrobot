function area_integral_numeric()
  D(1) = quad(@(x) f_21(x) - f_14(x), -1, 0);
  D(2) = quad(@(x) f_21(x) - f_13(x),  0, 1);
  D(3) = quad(@(x) f_11(x) - f_13(x),  1, 2);

  fprintf(stderr, "%f\n", sum(D));
endfunction

