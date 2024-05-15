function fill_poly(poly, fillopt = {}, centroid_text = [])
  pkg load geometry;

  ccw_poly = orientPolygon(poly);

  fill(ccw_poly(:, 1), ccw_poly(:, 2),  fillopt{:}); 

  if (ischar(centroid_text))
    c = shapeCentroid(polygon2shape(ccw_poly));
    text(c(1), c(2), centroid_text, "fontsize", 14, "horizontalalignment", "center");
  endif
endfunction

