function plot_1()
  clf; hold on;

  % 大量の数値が標準出力に表示される...。`@(x, y) abs(x) + abs(y) - 2` を渡す場合には表示されない
  p1 = ezplot(@f_1, 201);
  p2 = ezplot(@f_2);

  set(p1, "linewidth", 2);
  set(p2, "linewidth", 2);

  legend([p1 p2], {"|x| + |y| - 2 = 0", "x^2 + 2x - 2y - 1 = 0"}, "location", "northwest");
  title({}); xlabel({}); ylabel({});

  line(repelem(-1 + sqrt(2), 2), [-.1 .1], "color", [128 128 128]./256, "linewidth", 1.5);
  text(-1 + sqrt(2), -.1, "-1 + √2", "fontsize", 14, "verticalalignment", "top", "horizontalalignment", "center");

  line(repelem(-1 - sqrt(2), 2), [-.1 .1], "color", [128 128 128]./256, "linewidth", 1.5);
  text(-1 - sqrt(2), -.1, "-1 - √2", "fontsize", 14, "verticalalignment", "top", "horizontalalignment", "center");

  conf_axes;

  name = dbstack.name;
  saveas(gcf, strcat("./out.d/", name, ".svg"));
  system(strcat("inkscape -z -w 1200 -e ./out.d/", name, ".png -f ./out.d/", name, ".svg"));


  % saveas(gcf, "./plot_1.png"); % .png を直接出力すると√が文字化けする...
  % shg; fprintf(stderr, "press enter to continue..."); pause; % インタラクティブにグラフを操作したい場合
  % print(h, "./plots.png", "-S1200,900"); % 画像サイズを指定したい場合
endfunction
