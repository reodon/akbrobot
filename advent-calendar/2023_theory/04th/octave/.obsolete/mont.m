0;

function p = pifast( n, l = 3 )
  x = (rand(n, 1)*2 - 1) * l;
  y = (rand(n, 1)*2 - 1) * l;
  %cnt = length(find(x.^2+y.^2 < l^2));
  %cnt = length(find(f1_v2(x, y) <= 0 && f2_v2(x, y) >= 0));
  f = @(x, y) f1_v2(x, y) <= 0 && f2_v2(x, y) >= 0;
  cnt = length(find(arrayfun(f, x, y)));


  p = (cnt / n) * (l*2)^2;

  %fprintf(stderr, "cnf: %f, n: %f, p: %f\n", cnt, n, p);
endfunction

format short;

%n = input("n = ");

n = 100;
sum = 0;
for i = 1:n
  sum += pifast(10000, 2);
endfor

fprintf(stderr, "%f\n", sum / n);


%hold on;

n = 10000;
l = 3;
%x = rand(n,1)*2-1;
%y = rand(n,1)*2-1;
%lt = find(x.^2+y.^2<1);
%ge = find(x.^2+y.^2>=1);
x = (rand(n, 1)*2 - 1) * l;
y = (rand(n, 1)*2 - 1) * l;
fun = @(x, y) f1_v2(x, y) <= 0 && f2_v2(x, y) >= 0;
%t = find(arrayfun(fun, x, y));
%f = find(arrayfun(@(x, y) !(fun(x, y)), x, y));

%plot(x(t),y(t),".r");
%plot(x(f),y(f),".b");

%hold off
%conf_axes;
%shg; pause;



