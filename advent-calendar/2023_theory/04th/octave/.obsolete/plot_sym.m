function plot_sym()
  clf; hold on;

  p1 = ezplot(@f_1, 201);
  p2 = ezplot(@f_2);
  set(p1, "linewidth", 2);
  set(p2, "linewidth", 2);

  %x = (-1+sqrt(2)):.01:1;
  %y = (@(x) (x.^2 + 2*x - 1) / 2)(x);
  %area(x, y, "edgecolor", "y", "facecolor", "y");
  %area(x, y, "facecolor", "y");
  %area(x, y, "facecolor", "y", "linestyle", "none");

  %x = 1:.01:2;
  %y = (@(x) -x + 2)(x);
  %area(x, y, "edgecolor", "y", "facecolor", "y");
  %area(x, y, "facecolor", "y", "linestyle", "none");

  % x1 = -1:.01:1;
  % x2 = 1:.01:2;
  % x3 = 2:-.01:0;
  % x4 = 0:-.01:-1;

  % x = [x1, x2, x3, x4];
  % y = [arrayfun(@f_21, x1) arrayfun(@f_11b, x2) arrayfun(@f_12a, x3) arrayfun(@f_12b, x4)];

  % %display(polyarea(x, y));
  % fill(x, y, 'y'); 
  % fprintf(stderr, "%f\n", polyarea(x, y));

  x1 = -1:.01:0;
  x2 = 0:.01:1;
  x3 = 1:.01:2;

  y1 = [arrayfun(@f_21, x1) arrayfun(@f_12b, flip(x1))];
  y2 = [arrayfun(@f_21, x2) arrayfun(@f_12a, flip(x2))];
  y3 = [arrayfun(@f_11b, x3) arrayfun(@f_12a, flip(x3))];

  conf_axes;

  %display(polyarea(x, y));
  %fill(x, y, 'y'); 
  fill([x1, flip(x1)], y1, 'y'); 
  fill([x2, flip(x2)], y2, 'm'); 
  fill([x3, flip(x3)], y3, 'c'); 
  %fill(repmat(x1, [1 2]), y1, 'y'); 
  %fill(repmat(x2, [1 2]), y2, 'g'); 
  %fill(repmat(x3, [1 2]), y3, 'b'); 
  %fprintf(stderr, "%f\n", polyarea(x, y));

  %line(repelem(-1 + sqrt(2), 2), [-.1 .1], "color", [128 128 128]./256, "linewidth", 1.5);
  %text(x1(find(x1 == median(x1))), y1(find(y1 == median(y1))), "D1", "fontsize", 14, "verticalalignment", "top", "horizontalalignment", "center");
  %text( x1(find(x1 == median(x1))), y1(find(y1 == median(y1))), "D1" );
  text(mean(x1), mean(y1), "D_1", "fontsize", 14, "horizontalalignment", "center");
  text(mean(x2), mean(y2), "D_2", "fontsize", 14, "horizontalalignment", "center");
  text(mean(x3), mean(y3), "D_3", "fontsize", 14, "horizontalalignment", "center");

  title({}); xlabel({}); ylabel({});


  saveas(gcf, "./out.d/plot_2.svg");
  system("inkscape -z -w 1200 -e ./out.d/plot_2.png -f ./out.d/plot_2.svg");

  shg; fprintf(stderr, "press enter to continue..."); pause; % インタラクティブにグラフを操作したい場合
endfunction

