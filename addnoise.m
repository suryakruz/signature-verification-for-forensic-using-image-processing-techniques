function final=addnoise(a)

b=imnoise(a,'salt & pepper');

%b=imnoise(a,'poisson');

final=b;