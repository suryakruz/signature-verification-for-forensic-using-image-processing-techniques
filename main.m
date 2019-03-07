function final=main(a)

%readingn actual image
%a=imread('signn.jpg');

%converting to grayscale
b=rgb2gray(a);
disp(size(b));


%adding noise
b1=addnoise(b);

%removing noise
c=removenoise(b1);

%converting image to binary
d=im2bw(c,0.8);
disp(size(d));

%complementing image
e=complement(d);


%cropping image
f=crop(e);
disp(size(f));

%rotating image
g=rotate2(f);
%g=f;
disp(size(g));

h=crop(g);

%thinning signature
i=thinning(h);
disp(size(i));

%number of cross points
j=crosspoint(i);

%edge points
k=edgepoint(i);


%printing
% figure,imshow(a);
% figure,imshow(b);
% figure,imshow(b1);
% figure,imshow(c);
% figure,imshow(d);
% figure,imshow(e);
% figure,imshow(f);
% figure,imshow(g);
% figure,imshow(h);
% figure,imshow(i);

%radon transform and fractal dimensions
m=radonizer(i);
display(m);
final=[m];