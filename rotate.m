function final=rotate(a)

f=a;
s=size(f);

xcenter=s(2)/2;
ycenter=s(1)/2;

min=Inf;
%display(s(1));

for i=-90:3:90
    temp=imrotate(f,i);
    sizeoftemp=size(temp);
    xc=int32(sizeoftemp(1)/2);
    sum=0;
    counter=0;
   % display(xc);
 %   display(sizeoftemp(1));
  %  display(sizeoftemp(2));
    
	for y=1:sizeoftemp(2)
	    for x=1:sizeoftemp(1)
	        if temp(x,y)==1
	            counter=counter+1;
                sum=sum+ abs(x-xc);
              % display(x)
	        end
	    end
    end
    
    if min>sum
        min=sum;
        angle=i;
    end
   % figure,imshow(temp);
   %display(sum);
   %display(counter);
    
end
rot=imrotate(f,angle);
imshow(rot);
%display(rot);
display(min);
final=angle;