function final=thinning(a)
f=a;

g=bwmorph(f,'thin','Inf');
%g=edge(g,'log');

final=g;