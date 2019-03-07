function final = removenoise(a)

b=a;

c=medfilt2(b);
hh=fspecial('unsharp');
d=imfilter(c,hh,'replicate');
hh=fspecial('gaussian');
e=imfilter(d,hh,'replicate');

final=e;