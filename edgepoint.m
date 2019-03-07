function final=edgepoint(a)


f=a;
s=size(f);

%left right top bottom
%display(f);
cross=0;
for y=2:1:s(2)-1
    for x=2:1:s(1)-1
        if f(x,y)==1 
            if (f(x+1,y)+f(x+1,y+1)+f(x+1,y-1)+f(x-1,y)+f(x-1,y+1)+f(x-1,y-1)+f(x,y+1)+f(x,y-1))== 1
                cross=cross+1;
            end
        end
    end
end

final=cross;