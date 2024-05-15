%% グラフの設定
function conf_axes(limits = {-3, 3})
  [min, max] = limits{:};

  grid on;
  grid minor; % minor grid が表示されない...
  axis square;

  line([min max], [0 0], "color", "k", "linewidth", 1); % x軸
  line([0 0], [min max], "color", "k", "linewidth", 1); % y軸

  plot(0, 0, ".k");
  % text(0, 0, "●", "fontsize", 14, "horizontalalignment", "center"); % 原点の黒丸を大きくしたい場合

  text(max - .1, .1, "x", "fontsize", 14, "verticalalignment", "bottom", "horizontalalignment", "right");
  text(.1, max - .1, "y", "fontsize", 14, "verticalalignment", "top");

  xlim([min max]);
  ylim([min max]);

  title({}); xlabel({}); ylabel({}); % タイトルと各ラベルを非表示

  set(gca, "xtick", min:1:max, "ytick", min:1:max);
  set(gca, "gridalpha", .8, "gridlinestyle", "-");
  % set(gca, "xaxislocation", "origin", "yaxislocation", "origin"); % 軸を原点に合わせる場合
endfunction

