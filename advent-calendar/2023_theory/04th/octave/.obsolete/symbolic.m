function symbolic()
  pkg load symbolic;

  syms x;

  s_f_11a(x) = f_11a(x);
  s_f_11b(x) = f_11b(x);
  s_f_12a(x) = f_12a(x);
  s_f_12b(x) = f_12b(x);
  s_f_21(x) = f_21(x);

  hr;lf;lf;

  s_g_1(x) = s_f_21(x) - s_f_12b(x);
  D{1} = int(s_g_1, -1, 0);

  printf("g1 ="); lf;lf; disp(s_g_1); lf;
  printf("D1 ="); disp(D{1}); lf;

  hr;lf;lf;

  s_g_2(x) = s_f_21(x) - s_f_12a(x);
  D{2} = int(s_g_2, 0, 1);

  printf("g2 ="); lf;lf; disp(s_g_2); lf;
  printf("D2 ="); disp(D{2}); lf;

  hr;lf;lf;

  s_g_3(x) = s_f_11b(x) - s_f_12a(x);
  D{3} = int(s_g_3, 1, 2);

  printf("g3 ="); lf;lf; disp(s_g_3); lf;
  printf("D3 ="); disp(D{3}); lf;

  hr;lf;lf;

  printf("D ="); disp(D{1} + D{2} + D{3});

  return;


  s_g_1_i(x) = int(s_g_1, x);
  disp(s_g_1_i);
  g_1_i = function_handle(s_g_1_i);
  d_1 = g_1_i(2) - g_1_i(1);
  disp(d_1);
  return;


  s_g_2_i(x) = int(s_g_2, x);
  g_2_i = function_handle(s_g_2_i);
  d_2 = g_2_i(1) - g_2_i(0);
  disp(d_2);

  s_g_3_i(x) = int(s_g_3, x);
  g_3_i = function_handle(s_g_3_i);
  d_3 = g_3_i(0) - g_3_i(-1);
  disp(d_3);

  disp(d_1 + d_2 + d_3);

  return;;;;;;

  s_g_1(x) = s_f_11b(x) - s_f_12a(x);
  disp(int(s_g_1, 1, 2));
  %f1(x) = s_f_11b(x) - 1;
  return;


  s_g_1_i(x) = int(s_g_1, x);
  disp(s_g_1_i);
  g_1_i = function_handle(s_g_1_i);
  d_1 = g_1_i(2) - g_1_i(1);
  disp(d_1);
  return;


  s_g_2(x) = s_f_21(x) - s_f_12a(x);
  s_g_2_i(x) = int(s_g_2, x);
  g_2_i = function_handle(s_g_2_i);
  d_2 = g_2_i(1) - g_2_i(0);
  disp(d_2);

  s_g_3(x) = s_f_21(x) - s_f_12b(x);
  s_g_3_i(x) = int(s_g_3, x);
  g_3_i = function_handle(s_g_3_i);
  d_3 = g_3_i(0) - g_3_i(-1);
  disp(d_3);

  disp(d_1 + d_2 + d_3);

endfunction

function lf()
  printf("\n");
endfunction

function hr()
  printf("-----------------------");
endfunction

