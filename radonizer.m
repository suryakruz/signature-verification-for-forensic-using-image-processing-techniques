function final=radonizer(k)

theta1=[0:1:44];
theta2=[45:1:89];
theta3=[90:1:134];
theta4=[135:1:179];

k1=radon(k,theta1);
k2=radon(k,theta2);
k3=radon(k,theta3);
k4=radon(k,theta4);


[n,r]=boxcount(k1,'slope');
df = -diff(log(n))./diff(log(r));
fd1=(mean(df(4:8)));

[n,r]=boxcount(k2,'slope');
df = -diff(log(n))./diff(log(r));
fd2=mean(df(4:8));

[n,r]=boxcount(k3,'slope');
df = -diff(log(n))./diff(log(r));
fd3=(mean(df(4:8)));

[n,r]=boxcount(k4,'slope');
df = -diff(log(n))./diff(log(r));
fd4=(mean(df(4:8)));

final=[fd1 fd2 fd3 fd4];

