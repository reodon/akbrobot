pkg load symbolic;
%syms f2(x, y) f21(x);

vpa(x, sqrt(2)-1);

%f2(x, y) = x.^2 + 2*x - 2*y - 1;
%f21(x) = (x.^2 + 2*x - 1)/2;

%display(int(int(f2, x, y), -1, 1));

%i = int(f2, x, y);
%idx = int(i, -1, 1);
%idxdy = int(idx, -1, 1);
%
%display(idxdy);

%i = int(f21, x);
%display(i);

syms x x1 x2 x3;
f = (x.^2 + 2*x - 1)/2
x3 = sqrt(2);
x1 = x3-1;
x2 = 1;
fdx = int(f, x);
%fdx = int(f, x1, x2);
%x = sqrt(2)-1;
fdxh = function_handle(fdx);
fdxh(1)-fdxh(sqrt(2)-1)
%eval(fdx)
%idx = int(i, sqrt(2)-1, 1);
%idx = subs(i, 1) - subs(i, sqrt(2)-1);
%idx = subs(i, sqrt(2));

%idx = eval(f);
%idxdy = int(idx, -1, 1);

%display(idx);

%n = quad(@(x) (x.^2 + 2*x - 1)/2, sqrt(2)-1, 1);
%display(n);

syms f1(x) f2(x) f3(x);
f1(x) = 
