function plot_integral()
  clf; hold on;

  %p(1) = ezplot(@f_1, 201);
  %p(2) = ezplot(@f_2);
  %arrayfun(@(p) set(p, "linewidth", 2), p);
  plot_f1_f2; conf_axes;

  %conf_axes;

  %x = -1:.01:1;
  %y = [arrayfun(@f_21, x) repelems(-1, [1; length(x)])];
  %poly = [[x, flip(x)]' y']; 
  x = -1:.01:1;
  xs = [x, flip(x)];
  ys = [f_21(x) repelems(-1, [1; length(x)])];
  poly = [xs' ys']; 

  y = [arrayfun(@f_21, x) repelems(-1, [1; length(x)])];
  poly = [[x, flip(x)]' y']; 

  fill_poly(poly, {"y"}, "D_{man}");
  save_plot(dbstack.name);

  x1 = -1:.01:.99;
  x2 = 1:.01:1.99;
  x3 = 2:-.01:.01;
  x4 = 0:-.01:-.99;
  %x4 = flip(-.99:.01:0);

  x1 = -1:.01:1;
  x2 = 1:.01:2;
  x3 = 2:-.01:0;
  x4 = 0:-.01:-1;

  x = [x1, x2, x3, x4];
  y = [arrayfun(@(x) (x.^2 + 2*x - 1)/2, x1) arrayfun(@(x) -x + 2, x2) arrayfun(@(x) x - 2, x3) arrayfun(@(x) -x - 2, x4)];


  %display(polyarea(x, y));
  hold on; fill(x, y, 'r'); conf_axes({-2 2}); pause;
endfunction

