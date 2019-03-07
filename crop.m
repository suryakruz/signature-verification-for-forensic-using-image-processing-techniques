function final=crop(a)

f=a;
s=size(f);

%left right top bottom
%display(f);
flag1=0;
flag2=0;
flag3=0;
flag4=0;
for y=1:s(2)-1
    for x=1:s(1)
        if f(x,y)==1 && f(x,y+1)==1
            left=y;
            flag1=1;
            
        end
    end
    if flag1==1
        break
    end
end


for x=1:s(1)-1
    for y=1:s(2)
        if f(x,y)==1 && f(x+1,y)==1
            top=x;
            flag2=1;
            break
        end
    end
    if flag2==1
        break
    end
end


for y=s(2):-1:2
    for x=s(1):-1:1
        if f(x,y)==1  && f(x,y-1)==1
            right=y;
            flag3=1;
            break
        end
    end
    if flag3==1
        break
    end
end


for x=s(1):-1:2
    for y=s(2):-1:1
        if f(x,y)==1 && f(x-1,y)==1
            bottom=x;
            flag4=1;
            break
        end
    end
    if flag4==1
        break
    end
end
%display(left);
%display(right);
%display(bottom);
%display(top);
%imshow(a);
final=imcrop(f,[left,top,right-left,bottom-top]);

