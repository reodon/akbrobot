function n = arg2num(_default)
  n = _default;

  if (length(argv) >= 1)
    arg_n = str2num(argv{end});

    if (isnumeric(arg_n))
      n = arg_n;
    endif
  endif
endfunction

