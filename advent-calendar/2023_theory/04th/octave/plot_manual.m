function plot_manual()
  clf; hold on;

  plot_f1_f2; conf_axes;

  x = -1 : .01 : 1;

  xs = [x, flip(x)];
  ys = [f_21(x) repelems(-1, [1; length(x)])];

  fill_poly([xs' ys'], {"y"}, "D_{man}");
  save_plot(dbstack.name);
endfunction

