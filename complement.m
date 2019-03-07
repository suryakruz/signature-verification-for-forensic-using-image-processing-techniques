function final=complement(a)

f=a;
s=size(f);

for y=1:s(2)
    for x=1:s(1)
        if f(x,y)==1
            f(x,y)=0;
        else
            f(x,y)=1;
        end
    end
end

final=f;