function area_polyarea(step = .01)
  step = arg2num(step);

  x{1} = -1 :  step :  1;
  x{2} =  1 :  step :  2;
  x{3} =  2 : -step :  0;
  x{4} =  0 : -step : -1;

  y{1} = f_21(x{1});
  y{2} = f_11(x{2});
  y{3} = f_13(x{3});
  y{4} = f_14(x{4});

  D = polyarea(cell2mat(x), cell2mat(y));

  fprintf(stderr, "%f\n", D);
endfunction

