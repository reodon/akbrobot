function plot_integral()
  clf; hold on;

  plot_f1_f2; conf_axes;

  x{1} = -1: .01 : 0;
  x{2} =  0: .01 : 1;
  x{3} =  1: .01 : 2;

  ys{1} = [f_21(x{1}) f_14(flip(x{1}))];
  ys{2} = [f_21(x{2}) f_13(flip(x{2}))];
  ys{3} = [f_11(x{3}) f_13(flip(x{3}))];

  for i = 1:length(x)
    poly{i} = [[x{i}, flip(x{i})]' ys{i}']; 
  endfor

  fill_poly(poly{1}, {"y"}, "D_{1}");
  fill_poly(poly{2}, {"m"}, "D_{2}");
  fill_poly(poly{3}, {"c"}, "D_{3}");

  save_plot(dbstack.name);
endfunction

