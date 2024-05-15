function area_polyarea()
  x{1} = -1: .01: 1;
  x{2} =  1: .01: 2;
  x{3} =  2:-.01: 0;
  x{4} =  0:-.01:-1;

  y{1} = f_21(x{1});
  y{2} = f_11(x{2});
  y{3} = f_13(x{3});
  y{4} = f_14(x{4});

  D = polyarea(cell2mat(x), cell2mat(y));

  fprintf(stderr, "%f\n", D);
endfunction

