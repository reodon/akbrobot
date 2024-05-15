function plot_ready()
  clf; hold on;

  plot_f1_f2(true); conf_axes;

  pin_axis_x(-1 + sqrt(2), "-1 + √2");
  pin_axis_x(-1 - sqrt(2), "-1 - √2");

  save_plot(dbstack.name);
endfunction

function pin_axis_x(x, t)
  line(repelem(x, 2), [-.1 .1], "color", [128 128 128]./256, "linewidth", 1.5);
  text(x, -.1, t, "fontsize", 14, "verticalalignment", "top", "horizontalalignment", "center");
endfunction

