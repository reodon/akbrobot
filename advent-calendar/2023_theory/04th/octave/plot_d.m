function plot_d()
  clf; hold on;

  plot_f1_f2; conf_axes;

  x{1} = -1 :  .01 :  1;
  x{2} =  1 :  .01 :  2;
  x{3} =  2 : -.01 :  0;
  x{4} =  0 : -.01 : -1;

  y{1} = f_21(x{1});
  y{2} = f_11(x{2});
  y{3} = f_13(x{3});
  y{4} = f_14(x{4});

  xs = cell2mat(x); 
  ys = cell2mat(y); 

  fill_poly([xs' ys'], {"y"}, "D");

  save_plot(dbstack.name);
endfunction

