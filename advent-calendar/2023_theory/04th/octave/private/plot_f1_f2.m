function plot_f1_f2(show_legend = false)
  p(1) = ezplot(@f_1, 201);
  p(2) = ezplot(@f_2);
  arrayfun(@(p) set(p, "linewidth", 2), p);

  if (show_legend)
    l{1} = "|x| + |y| - 2 = 0";
    l{2} = "x^2 + 2x - 2y - 1 = 0";
    legend(p, l, "location", "northwest");
  endif
endfunction

