function save_plot(name)
  path_prefix = "./out.d/";

  saveas(gcf, strcat(path_prefix, name, ".svg"));
  system(strcat("inkscape -z -w 1200 -e ", path_prefix, name, ".png -f ", path_prefix, name, ".svg"));
endfunction

% fprintf(stderr, "%s\n", program_invocation_name());

